<?php
ini_set('date.timezone','Asia/Shanghai');
/**
 * This file is part of workerman.
 *
 * Licensed under The MIT License
 * For full copyright and license information, please see the MIT-LICENSE.txt
 * Redistributions of files must retain the above copyright notice.
 *
 * @author walkor<walkor@workerman.net>
 * @copyright walkor<walkor@workerman.net>
 * @link http://www.workerman.net/
 * @license http://www.opensource.org/licenses/mit-license.php MIT License
 */

/**
 * 用于检测业务代码死循环或者长时间阻塞等问题
 * 如果发现业务卡死，可以将下面declare打开（去掉//注释），并执行php start.php reload
 * 然后观察一段时间workerman.log看是否有process_timeout异常
 */
//declare(ticks=1);
use GatewayWorker\Lib\Gateway;
use GatewayWorker\Lib\Db;

/**
 * 主逻辑
 * 主要是处理 onConnect onMessage onClose 三个方法
 * onConnect 和 onClose 如果不需要可以不用实现并删除
 */
class Events
{
    protected static $db;
    protected static $sessionid;
    public static function onWorkerStart($businessWorker)
    {
        self::$db = Db::instance('homestead');
    }
    
   /**
    * 当客户端发来消息时触发
    * @param int $client_id 连接id
    * @param mixed $message 具体消息
    */
   public static function onMessage($client_id, $message)
   {
       //验证发送数据发送端（客户端、服务端），发送类型
       $msg=json_decode($message,true);
       if(!isset($msg['type'])) Gateway::closeClient($client_id);

       switch ($msg['type']) {
           case 'ping':
               //心跳检测 1*30秒内没有心跳回复，认为客户离线
               break;
           case 'login':
               if(!isset($msg['sessionid']) && !isset($msg['sessionname'])){
                   $data = [
                       'type' => 'layer',
                       'code' => 403,
                       'msg'   => '登录授权失败'
                   ];
                   // 向当前client_id发送数据
                   Gateway::sendToClient($client_id, json_encode($data));
                   return;
               }
               $user=self::$db->select('*')->from('im_user')->where('username="'.$msg['sessionname'].'"')->where('password="'.$msg['sessionid'].'"')->row();
               if(!$user){
                   $data = [
                       'type' => 'layer',
                       'code' => 403,
                       'msg'   => '登录授权失败'
                   ];
                   Gateway::sendToClient($client_id, json_encode($data));
                   return;
               }
               $_SESSION['auth'] = $user;
               Gateway::bindUid($client_id,$user['id']);

               //通知好友上线
               self::$db->update('im_user')->where('id="'. $user['id'] .'"')->cols(['status' => 'online'])->query();//标记为在线
               //给好友发送上线通知，用来标记头像去除置灰
               $friend_list = self::$db->select('friend_id')->from('im_friend')->where('user_id="'. $user['id'] .'"')->query();
               $data = [
                   "type"  => "friendStatus",
                   "uid"   => $user['id'],
                   "status"=> 'online'
               ];
               if(!empty($friend_list)){
                   foreach ($friend_list as $list){
                       if(Gateway::isUidOnline($list['friend_id'])){ //判断用户是否在线，用户在线推送好友上线消息
                           self::sendToFriend($list['friend_id'],$data);
                       }
                   }
               }
               unset($friend_list);
               unset($data);

               //更新未读消息
               $offline_messgae = self::$db->select('data,id')->from('im_offline_message')->where('user_id="'. $user['id'] .'"')->where('status="0"')->query();
               var_dump($offline_messgae);
               if(!empty($offline_messgae)){
                   foreach ($offline_messgae as $k=>$v) {
                       self::sendToFriend($user['id'],json_decode($v['data']));
                       //如果推送成功标记当前离线消息为已发送
                       self::$db->delete('im_offline_message')->where('id="'.$v['id'].'"')->query();
                   }
               }
               unset($offline_messgae);


               //获取未读消息盒子数量
               $system_message = self::$db->select('id')->from('im_system_message')->where('user_id="'.$user['id'].'"')->where('`read`="0"')->query();
               $count = count($system_message);
               $data = [
                   "type"      => "msgBox",
                   "count"     => $count
               ];
               Gateway::sendToClient($client_id, json_encode($data));
               unset($data);
               unset($system_message);
               break;
           //聊天消息
           case 'chatMessage':
               if (isset($msg['data']['to']['type']) && $msg['data']['to']['type'] == "friend") {
                   //好友消息
                   $data = [
                       'username' => $msg['data']['mine']['username'],
                       'avatar' => $msg['data']['mine']['avatar'],
                       'id' => $msg['data']['mine']['id'],
                       'type' => $msg['data']['to']['type'],
                       'content' => $msg['data']['mine']['content'],
                       'cid' => 0,
                       'mine'=> $_SESSION['auth']['id'] == $msg['data']['to']['id'] ? true : false,//要通过判断是否是我自己发的
                       'fromid' => $msg['data']['mine']['id'],
                       'timestamp' => time()*1000
                   ];
                   if ($msg['data']['to']['id'] == $_SESSION['auth']['id']) {
                       return;
                   }
                   self::sendToFriend($msg['data']['to']['id'],$data);
                   //记录聊天记录
                   $record_data = [
                       'user_id'       => $_SESSION['auth']['id'],
                       'friend_id'     => $msg['data']['to']['id'],
                       'group_id'      => 0,
                       'content'       => $msg['data']['mine']['content'],
                       'time'    => time()
                   ];
                   self::$db->insert('im_chat_record')->cols($record_data)->query();
                   unset($record_data);
                   unset($data);
               }else if(isset($msg['data']['to']['type']) && $msg['data']['to']['type'] == "group"){
                    //群消息
                   $data = [
                       'username' => $msg['data']['mine']['username'],
                       'avatar' => $msg['data']['mine']['avatar'],
                       'id' => $msg['data']['to']['id'],
                       'type' => $msg['data']['to']['type'],
                       'content' => $msg['data']['mine']['content'],
                       'cid' => 0,
                       'mine'=> false,//要通过判断是否是我自己发的
                       'fromid' => $msg['data']['mine']['id'],
                       'timestamp' => time()*1000
                   ];
                   $list = self::$db->from('im_group_member as gm')
                       ->leftJoin('im_user as u','u.id = gm.user_id')
                       ->select('u.id')
                       ->where('group_id="'.$msg['data']['to']['id'].'"')
                       ->query();
                   if(!empty($list)){
                       foreach ($list as $k => $v) {
                           if ( $v['id'] == $msg['data']['mine']['id']) {
                               continue;
                           }
                           self::sendToFriend($v['id'],$data);
                       }
                   }

                   //记录聊天记录
                   $record_data = [
                       'user_id'       => $msg['data']['mine']['id'],
                       'friend_id'     => 0,
                       'group_id'      => $msg['data']['to']['id'],
                       'content'       => $msg['data']['mine']['content'],
                       'time'    => time()
                   ];
                   self::$db->insert('im_chat_record')->cols($record_data)->query();
               }
               unset($record_data);
               unset($list);
               unset($data);
               break;
           //发送好友请求
           case "addFriend":
               $friend_id = $msg['to_user_id'];
               $system_message_data = [
                   'user_id'   => $friend_id,//接受者
                   'from_id'   => $_SESSION['auth']['id'],//来源者
                   'remark'    => $msg['remark'],
                   'type'      => 0,
                   'group_id'  => $msg['to_friend_group_id'],
                   'time'      => time()
               ];
               $isFriend = self::$db->select('id')->from('im_friend')->where('friend_id="'.$friend_id.'"')->where('user_id="'.$_SESSION['auth']['id'].'"')->row();
               if($isFriend){
                   $data = [
                       'type' => 'layer',
                       'code' => 500,
                       'msg'   => '对方已经是你的好友，不可重复添加'
                   ];
                   Gateway::sendToClient($client_id, json_encode($data));
                   unset($data);
                   return;
               }
               if ($friend_id == $_SESSION['auth']['id']){
                   $data = [
                       'type' => 'layer',
                       'code' => 500,
                       'msg'   => '不能添加自己为好友'
                   ];
                   Gateway::sendToClient($client_id, json_encode($data));
                   unset($data);
                   return;
               }
               self::$db->insert('im_system_message')->cols($system_message_data)->query();
               //获取该接受者未读消息数量
               $system_message = self::$db->select('id')->from('im_system_message')->where('user_id="'.$friend_id.'"')->where('`read`="0"')->query();
               $count = count($system_message);
               if($count > 0){
                   $data = [
                       "type"      => "msgBox",
                       "count"     => $count
                   ];
                   static::sendToFriend($friend_id,$data);
                   unset($data);
               }
               unset($system_message);
               unset($system_message_data);
               break;
            //追加好友到好友列表
           case "addList":
               $user = $_SESSION['auth'];
               $data = [
                   "type" => "addList",
                   "data" => [
                       "type"  => "friend",
                       "avatar"    => $user['avatar'],
                       "username" => $user['nickname'],
                       "groupid" => $msg['fromgroup'],
                       "id"        => $user['id'],
                       "sign"    => $user['sign']
                   ]
               ];
               //获取未读消息盒子数量
               $system_message = self::$db->select('id')->from('im_system_message')->where('user_id="'.$msg['id'].'"')->where('`read`="0"')->query();
               $count = count($system_message);
               $data1 = [
                   "type"      => "msgBox",
                   "count"     => $count
               ];
               if(Gateway::isUidOnline($msg['id'])){
                   self::sendToFriend($msg['id'],$data);
                   self::sendToFriend($msg['id'],$data1);
               }
               unset($data);
               unset($data1);
               unset($system_message);
               break;
           //拒绝好友添加系统系统
           case "refuseFriend":
               $id = $msg['id'];//消息id
               $system_message = self::$db->select('from_id')->from('im_system_message')->where('id="'.$id.'"')->row();
               //获取该接受者未读消息数量
               $system_message = self::$db->select('id')->from('im_system_message')->where('user_id="'.$system_message['from_id'].'"')->where('`read`="0"')->query();
               $count = count($system_message);
               $data = [
                   "type"      => "msgBox",
                   "count"     => $count
               ];
               if(Gateway::isUidOnline($system_message['from_id'])){
                   self::sendToFriend($system_message['from_id'],$data);
               }
               unset($data);
               unset($system_message);
               break;
           //加群提醒
           case 'joinNotify':
               $groupid = $msg['groupid'];
               $list = self::$db->select('user_id')->from('im_group_member')->where('group_id="'.$groupid.'"')->query();
               $data = [
                   "type" => "joinNotify",
                   "data"  => [
                       "system"    => true,
                       "id"        => $groupid,
                       "type"      => "group",
                       "content"   => $_SESSION['auth']['nickname']."加入了群聊，欢迎下新人吧～"
                   ]
               ];
               if(!empty($list)){
                   foreach ($list as $k=>$v) {
                       self::sendToFriend($v['user_id'],$data);
                   }
               }
               unset($list);
               unset($data);
               break;
           default:
               break;
       }
   }
   
   /**
    * 当用户断开连接时触发
    * @param int $client_id 连接id
    */
   public static function onClose($client_id)
   {
       $user = $_SESSION['auth'];
       $friend_list = self::$db->select('friend_id')->from('im_friend')->where('user_id="'.$user['id'].'"')->query();
       $data = [
           "type"  => "friendStatus",
           "uid"   => $user['id'],
           "status"=> 'offline'
       ];
        if(!empty($friend_list)){
            foreach ($friend_list as $item){
                self::sendToFriend($item['friend_id'],$data);
            }
        }
        unset($friend_list);
        //更新用户在线状态
       self::$db->update('im_user')->cols(array('status'=>'offline'))->where('id="'.$user['id'].'"')->query();
   }

    /**
     * 发送好友消息
     * @param $uid
     * @param $data
     */
   public static function sendToFriend($uid,$data)
   {
       if (!Gateway::isUidOnline($uid)){
           //这里说明该用户已下线，日后做离线消息用
           if($data['type'] != 'msgBox'){
               $datas = [
                   'user_id'   => $uid,
                   'data'      => json_encode($data),
               ];
               //插入离线消息
               self::$db->insert('im_offline_message')->cols($datas)->query();
           }
           return;
       }
       Gateway::sendToUid($uid,json_encode($data));//发送消息
       return;
   }
}
