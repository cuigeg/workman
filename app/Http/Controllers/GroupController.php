<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class GroupController extends Controller
{
    /**
     * 查找页面
     * @param Request $request
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function find(Request $request)
    {
        $type = $request->input('type');
        $wd = trim($request->input('wd'));
        $user_list = [];
        $group_list = [];
        switch ($type) {
            case "user" :
                $user_list = DB::table('user')->select('id','nickname','avatar')->where('id','like','%'.$wd.'%')->orWhere('nickname','like','%'.$wd.'%')->orWhere('username','like','%'.$wd.'%')->where('status',0)->paginate(6);
                break;
            case "group" :
                $group_list = DB::table('group')->select('id','groupname','avatar')->where('id','like','%'.$wd.'%')->orWhere('groupname','like','%'.$wd.'%')->where('status',0)->paginate(6);
                break;
            default :
                break;
        }
        return view('find',['user_list' => $user_list,'group_list' => $group_list,'type' => $type,'wd' => $wd]);
    }

    /**
     * 创建组
     * @param Request $request
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function createGroup(Request $request)
    {
        if($request->isMethod('GET')){
            return view('create_group');
        }
        $session = session('user');
        $post = $request->all();
        $data = [
            'groupname' => $post['groupname'],
            'user_id'   => $session->user_id,
            'avatar'    => $post['avatar'],
            'status'    => 3
        ];
        //手动使用事务
        DB::beginTransaction();
        try {
            $group_id = DB::table('group')->insertGetId($data);
            $res_join = DB::table('group_member')->insert(['group_id' => $group_id,'user_id' => $session->user_id]);
            if (!$group_id || !$res_join) {
                throw new \Exception("创建失败");
            }
            DB::commit();
        }catch (\Exception $e){
            DB::rollback();
            return $this->responed_data(500,$e->getMessage());
        }
        $data = [
            "type" => "group",
            "avatar"    => $post['avatar'],
            "groupname" => $post['groupname'],
            "id"        => $group_id
        ];
        return $this->responed_data(200,"创建成功！",$data);
    }

    /**
     * 加入群聊
     * @param Request $request
     * @return mixed
     */
    public function joinGroup(Request $request)
    {
        $session = session('user');
        $id = $request->input('groupid');
        $isIn = DB::table('group_member')->where('group_id',$id)->where('user_id', $session->user_id)->first();
        if ($isIn) {
            return $this->responed_data(500,"您已经是该群成员");
        }
        $group = DB::table('group')->find($id);
        $res = DB::table('group_member')->insert(['group_id' => $id,'user_id' => $session->user_id]);
        if (!$res) {
            return $this->responed_data(500,"加入群失败");
        }
        $data = [
            "type" => "group",
            "avatar"    => $group->avatar,
            "groupname" =>$group->groupname,
            "id"        =>$group->id
        ];
        return $this->responed_data(200,"加入成功",$data);
    }

    /**
     * 获取群成员列表
     * @param Request $request
     * @return GroupController
     */
    public function groupMember(Request $request)
    {
        $group_id = $request->input('id');
        $list = DB::table('group_member as gm')
            ->leftJoin('user as u','u.id','=','gm.user_id')
            ->select('u.username','u.id','u.avatar','u.sign')
            ->where('group_id', $group_id)
            ->get();
        if (!count($list)) {
            return $this->responed_data(500,"获取群成员失败");
        }
        return $this->responed_data(0,"获取群成员成功",['list'=>$list]);
    }

    /**
     * 修改群聊名称
     * @param Request $request
     * @return GroupController
     */
    public function editGroup(Request $request)
    {
        $group_id = $request->input('id');
        $friend_group = trim($request->input('friend_group'));
        if(!$group_id || !$friend_group){
            return $this->responed_data(500,"参数错误");
        }
        $res = DB::table('group')->where('id',$group_id)->update(['groupname'=>$friend_group]);
        if($res){
            return $this->responed_data(200,"操作成功");
        }
        return $this->responed_data(500,"操作失败");
    }

    /**
     * 结算群聊
     * @param Request $request
     * @return GroupController
     */
    public function delGroup(Request $request)
    {
        $group_id = $request->input('group_id');
        $user = session('user');
        if(!$group_id){
            return $this->responed_data(500,"参数错误");
        }
        $group_member = DB::table('group_member')->where('group_id',$group_id)->where('user_id',$user->user_id)->where('user_status',3)->first();
        if(!$group_member){
            return $this->responed_data(500,"非超级管理员不能解散群聊");
        }
        $res = DB::table('group')->where('id',$group_id)->update(['status'=>1]);
        if($res){
            return $this->responed_data(200,"操作成功");
        }
        return $this->responed_data(500,"操作失败");
    }
}
