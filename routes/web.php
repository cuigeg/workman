<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::group(['middleware'=>'login'], function () use($router) {
    $router->get('/','IndexController@index');                      //聊天室首页
    $router->get('/message_box','IndexController@messageBox');      //聊天室消息盒子
    $router->get('/chat_log','IndexController@chatLog');            //聊天记录
    $router->get('/userinfo','UserController@userinfo');            //初始化数据（好友列表，群组列表）
    $router->post('/add_friend','UserController@addFriend');        //添加好友
    $router->get('/del_friend','UserController@delFriend');         //删除好友
    $router->get('/del_friend_group','UserController@delFriendGroup');//删除好友分组
    $router->get('/add_friend_group','UserController@AddFriendGroup');//删除好友分组
    $router->get('/edit_friend_group','UserController@EditFriendGroup');//删除好友分组
    $router->get('/find','GroupController@find');                   //查找页面（查找人，群组）
    $router->get('/group_members','GroupController@groupMember');   //群成员
    $router->post('/join_group','GroupController@joinGroup');       //加入群组
    $router->any('/create_group','GroupController@createGroup');    //创建群组
    $router->get('/edit_group','GroupController@editGroup');        //修改群聊名称
    $router->get('/del_group','GroupController@delGroup');          //解散群聊名称
    $router->post('/refuse_friend','UserController@refuseFriend');  //拒绝好友添加
    $router->post('/update_sign','UserController@updateSign');      //更新签名
    $router->get('/loginout','IndexController@loginOut');           //退出登录
    $router->get('/chat_record_data','IndexController@chatRecordData'); //聊天日志数据
});
$router->any('/login','IndexController@login');        //登录
$router->any('/register','IndexController@register');  //注册
$router->post('/upload','IndexController@upload');      //上传文件
$router->get('/image_code','IndexController@imageCode');//图片验证码
$router->post('/refresh_img','IndexController@refreshImg');//刷新图片验证码