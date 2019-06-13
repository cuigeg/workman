<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class UserController extends Controller
{
    /**
     * 用户，群组列表
     * @return UserController
     */
    public function userinfo()
    {
        $users = session('user');
        $user_id = $users->user_id;
        $user = DB::table('user')->find($user_id);
        if (!$user) {
            return $this->responed_data(500,"获取用户信息失败");
        }
        $groups = DB::table('group_member as gm')
            ->leftJoin('group as g','g.id','=','gm.group_id')
            ->select('g.id','g.groupname','g.avatar')
            ->where('g.status',0)
            ->where('gm.user_id', $user->id)->get();
        $friend_group = DB::table('friend_group')->select('id','groupname')->where('user_id', $user->id)->get();
        foreach ($friend_group as $k => $v) {
            $friend_group[$k]->list = DB::table('friend as f')
                ->leftJoin('user as u','u.id','=','f.friend_id')
                ->select('u.nickname as username','u.id','u.avatar','u.sign','u.status')
                ->where('f.user_id',$user->id)
                ->where('f.friend_group_id',$v->id)
                ->where('f.status',0)
                ->orderBy('status','DESC')
                ->get();
        }
        $data = [
            'mine'      => [
                'username'  => $user->nickname,//昵称
                'id'        => $user->id,     //pid
                'status'    => $user->status, //在线状态 online在线 hide：隐身
                'sign'      => $user->sign,   //签名
                'avatar'    => $user->avatar  //头像
            ],
            "friend"    => $friend_group,
            "group"     => $groups
        ];
        return $this->responed_data(0,'获取数据成功',$data);
    }

    /**
     * 添加好友
     * @param Request $request
     * @return UserController
     */
    public function addFriend(Request $request)
    {
        $id = $request->input('id');
        $system_message = DB::table('system_message')->find($id);
        $isFriend = DB::table('friend')->where('user_id',$system_message->user_id)->where('friend_id',$system_message->from_id)->first();
        if ($isFriend) {
            return $this->responed_data(500,'已经是好友了');
        }
        $data = [
            [
                'user_id' => $system_message->user_id,
                'friend_id' =>$system_message->from_id,
                'friend_group_id' => $request->input('groupid')
            ],
            [
                'user_id' =>$system_message->from_id,
                'friend_id' => $system_message->user_id,
                'friend_group_id' => $system_message->group_id
            ]
        ];
        DB::beginTransaction();
        try{
            //彼此添加好友
            $res = DB::table('friend')->insert($data);
            if (!$res) {
                throw new \Exception('添加失败');
            }

            //更改好友添加状态为同意
            DB::table('system_message')->where('id',$id)->update(['status' => 1]);
            $user = DB::table('user')->find($system_message->from_id);
            $data = [
                "type"  => "friend",
                "avatar"    => $user->avatar,
                "username" => $user->nickname,
                "groupid" => $request->input('groupid'),
                "id"        => $user->id,
                "sign"    => $user->sign
            ];
            $system_message_data = [
                'user_id'   => $system_message->from_id,
                'from_id'   => $system_message->user_id,
                'type'      => 1,
                'status'    => 1,
                'time'      => time()
            ];
            $res1 = DB::table('system_message')->insert($system_message_data);
            if(!$res1){
                throw new \Exception('添加失败');
            }
            DB::commit();

        }catch (\Exception $e){
            DB::rollBack();
            return $this->responed_data('500',$e->getMessage());
        }
        return $this->responed_data(200,'添加成功',$data);
    }

    /**
     * 拒绝好友添加
     * @param Request $request
     * @return mixed
     */
    public function refuseFriend(Request $request)
    {
        $id = $request->input('id');
        $system_message = DB::table('system_message')->find($id);
        DB::beginTransaction();
        try{
            $res = DB::table('system_message')->where('id',$id)->update(['status' => 2]);
            $data = [
                'user_id'   => $system_message->from_id,
                'from_id'   => $system_message->user_id,
                'type'      => 1,
                'status'    => 2,
                'time'      => time()
            ];
            $res1 = DB::table('system_message')->insert($data);
            if(!$res || !$res1){
                throw new \Exception('操作失败');
            }
            DB::commit();
        }catch (\Exception $e){
            DB::rollBack();
            return $this->responed_data(500,$e->getMessage());
        }
        return $this->responed_data(200,"已拒绝");
    }

    /**
     * 修改用户签名
     * @param Request $request
     * @return UserController
     */
    public function updateSign(Request $request)
    {
        $session = session('user');
        $sign = $request->input('sign');
        $res = DB::table('user')->where('id', $session->user_id)->update(['sign' => $sign]);
        if (!$res) {
            return $this->responed_data(500,'签名修改失败');
        }
        return $this->responed_data(200,'签名修改成功');
    }

    /**
     * 删除好友
     * @param Request $request
     * @return UserController
     */
    public function delFriend(Request $request)
    {
        $friend_id = $request->input('friend_id');
        $session = session('user');
        if(!$session || !$friend_id){
            return $this->responed_data(500,'数据错误，删除失败');
        }
        DB::beginTransaction();
        try{
            $res = DB::table('friend')->where('user_id',$session->user_id)->where('friend_id',$friend_id)->update(['status' => 1]);
            $res1 = DB::table('friend')->where('user_id',$friend_id)->where('friend_id',$session->user_id)->update(['status' => 1]);
            if(!$res || !$res1){
                throw new \Exception('操作失败');
            }
            DB::commit();
        }catch (\Exception $e){
            DB::rollBack();
            return $this->responed_data(500,$e->getMessage());
        }
        return $this->responed_data(200,'好友删除成功');
    }

    /**
     * 删除好友分组
     * @param Request $request
     * @return UserController
     */
    public function delFriendGroup(Request $request)
    {
        $group_id = $request->input('id');
        $session = session('user');
        if(!$session || !$group_id){
            return $this->responed_data(500,'数据错误，删除失败');
        }
        $friend = DB::table('friend')->where('status',0)->where('friend_group_id',$group_id)->first();
        if($friend){
            return $this->responed_data(500,'该分组下还有成员不可删除');
        }
        $res = DB::table('friend_group')->where('id',$group_id)->where('user_id',$session->user_id)->delete();
        if($res){
            return $this->responed_data(200,'删除好友分组成功');
        }
        return $this->responed_data(500,'删除分组失败');
    }

    /**
     * 新增好友分组
     * @param Request $request
     * @return UserController
     */
    public function AddFriendGroup(Request $request)
    {
        $friend_group = trim($request->input('friend_group'));
        $session = session('user');
        if(!$session || !$friend_group){
            return $this->responed_data(500,'数据错误，删除失败');
        }
        $friend_group_res = DB::table('friend_group')->where('user_id',$session->user_id)->where('groupname',$friend_group)->first();
        if($friend_group_res){
            return $this->responed_data(501,'用户名已存在，不可重复添加');
        }
        $data = [
            'user_id'=>$session->user_id,
            'groupname'=>$friend_group
        ];
        $id = DB::table('friend_group')->insertGetId($data);
        if($id){
            return $this->responed_data(200,'新增好友分组成功',['id'=>$id]);
        }
        return $this->responed_data(500,'新增分组失败');
    }

    /**
     * 重命名好友分组
     * @param Request $request
     * @return UserController
     */
    public function EditFriendGroup(Request $request)
    {
        $group_id = $request->input('id');
        $friend_group = trim($request->input('friend_group'));
        $session = session('user');
        if(!$group_id | !$session || !$friend_group){
            return $this->responed_data(500,'数据错误，删除失败');
        }
        $friend_group_res = DB::table('friend_group')->where('user_id',$session->user_id)->where('groupname',$friend_group)->first();
        if($friend_group_res){
            return $this->responed_data(501,'用户名已存在，不可重复添加');
        }
        $res = DB::table('friend_group')->where('id',$group_id)->update(['groupname'=>$friend_group]);
        if($res){
            return $this->responed_data(200,'重命名好友分组成功');
        }
        return $this->responed_data(500,'重命名分组失败');
    }
}
