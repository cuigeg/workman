<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>查找</title>
    <link rel="stylesheet" href="{{asset('/asset/layuiv2/css/layui.css')}}" media="all">
    <link rel="stylesheet" href="{{asset('/asset/bootstrap-3.3.7/css/bootstrap.css')}}">
</head>
<body>
<div class="layui-row">
    <div class="layui-tab layui-tab-brief">
        <ul class="layui-tab-title">
            <li @if($type == 'user'  || $type == '')  class="layui-this" @endif>找人</li>
            <li @if($type == 'group')  class="layui-this" @endif>找群</li>
        </ul>
        <div class="layui-tab-content">
            <div class="layui-tab-item @if($type == 'user' || $type == '')  layui-show @endif">
                <div>
                    <input  style="float: left;width: 90%;" type="text" id="user-wd" required lay-verify="required" placeholder="请输入ID/昵称" autocomplete="off" class="layui-input" @if($type == 'user') value="{{ $wd }}" @endif>
                    <button onclick="findUser()" style="float: right;width: 10%"  class="layui-btn">
                        <i class="layui-icon">&#xe615;</i> 查找
                    </button>
                </div>
                <div class="layui-row">
                    @foreach($user_list as $k=>$v)
                        <div class="layui-col-md4">
                        <div class="layui-card" style="border: 1px solid #eee;margin: 10px auto;">
                            <div class="layui-card-body" style="vertical-align:top;height: 90px;margin: 10px auto;">
                                <div style="float: left">
                                    <img style="width: 75px;height: 75px;object-fit: cover;" src="{{ $v->avatar }}" alt="">
                                </div>
                                <span style="float: left;margin-left: 10px;display: inline-block;width: 140px;overflow: hidden;white-space: nowrap;text-overflow:ellipsis;">{{ $v->nickname }}</span>
                                <button onclick="addFriend({{ $v->id }},'{{ $v->nickname }}','{{ $v->avatar }}')" style="float: right;margin-top: 40px;" class="layui-btn layui-btn-normal layui-btn-sm">
                                    <i class="layui-icon">&#xe654;</i> 添加
                                </button>
                            </div>
                        </div>
                    </div>
                    @endforeach
                </div>
                @if(($type == 'user' || $type == '') && !empty($user_list))
                    <div style="text-align:center">
                        {!! $user_list->appends(['wd' => $wd,'type' => $type])->links() !!}
                    </div>
                @endif
            </div>
            <div class="layui-tab-item @if($type == 'group')  layui-show @endif">
                <div>
                    <input  style="float: left;width: 80%;" type="text" id="group-wd" required lay-verify="required" placeholder="请输入群Id/群名称" autocomplete="off" class="layui-input" @if($type == 'group') value="{{ $wd }}" @endif>
                    <button onclick="createGroup()" style="float: right;width: 10%"  class="layui-btn layui-btn-warm">
                        <i class="layui-icon">&#xe654;</i> 创建群
                    </button>
                    <button onclick="findGroup()" style="float: left;width: 10%;margin-left: 0"  class="layui-btn">
                        <i class="layui-icon">&#xe615;</i> 查找群
                    </button>
                </div>
                @foreach($group_list as $k=>$v)
                    <div class="layui-col-md4">
                        <div class="layui-card" style="border: 1px solid #eee;margin: 10px auto;">
                            <div class="layui-card-body" style="vertical-align:top;height: 90px;margin: 10px auto;">
                                <div style="float: left">
                                    <img style="width: 75px;height: 75px;object-fit: cover;" src="{{ $v->avatar }}" alt="">
                                </div>
                                <span style="float: left;margin-left: 10px;display: inline-block;width: 140px;overflow: hidden;white-space: nowrap;text-overflow:ellipsis;">{{ $v->groupname }}</span>
                                <button onclick="joinGroup({{ $v->id }})" style="float: right;margin-top: 40px;" class="layui-btn layui-btn-normal layui-btn-sm">
                                    <i class="layui-icon">&#xe654;</i> 加入
                                </button>
                            </div>
                        </div>
                    </div>
                @endforeach
                @if($type == 'group' && !empty($group_list))
                    <div style="text-align:center">
                        {!! $group_list->appends(['wd' => $wd,'type' => $type])->links() !!}
                    </div>
                @endif
            </div>
        </div>
    </div>
</div>
<script type="text/javascript" src="{{asset('/asset/layui/jquery.js')}}"></script>
<script src="{{asset('/asset/layui/layui.js')}}"></script>
<script>
    layui.use(['layim', 'laypage', 'element', 'jquery'], function(){
        var layim = layui.layim
            ,layer = layui.layer
            ,element = layui.element
            ,laypage = layui.laypage
            ,$ = layui.jquery;

        //查找好友
        window.findUser = function() {
            console.log(111);
            let wd = $('#user-wd').val();
            wd = wd.replace(/(^\s*)|(\s*$)/g, '');//去除空格;
            if(wd == '' || wd == undefined || wd == null){
                layer.msg('搜索内容不能为空');
                return;
            }
            window.location.href="/find?type=user&wd="+wd
        };

        //查找群组
        window.findGroup = function() {
            let wd = $('#group-wd').val();
            wd = wd.replace(/(^\s*)|(\s*$)/g, '');//去除空格;
            if(wd == '' || wd == undefined || wd == null){
                layer.msg('搜索内容不能为空');
                return;
            }
            window.location.href="/find?type=group&wd="+wd
        };

        //申请添加好友
        window.addFriend = function(id,nickname,avatar) {
            console.log(nickname);
            layim.add({
                type: 'friend' //friend：申请加好友、group：申请加群
                ,username: nickname //好友昵称，若申请加群，参数为：groupname
                ,avatar: avatar //头像
                ,submit: function(group, remark, index){ //一般在此执行Ajax和WS，以通知对方
                    var data = {type:"addFriend",to_user_id:id,to_friend_group_id:group,remark:remark};
                    parent.sendMessage(parent.socket,JSON.stringify(data));
                    layer.close(index); //关闭改面板
                }
            });
        };

        //申请加入群聊
        window.joinGroup = function(id) {
            $.ajax({
                url:"/join_group",
                type:"post",
                data:{groupid:id},
                dataType:"json",
                headers: {
                    'X-CSRF-TOKEN': "{{ csrf_token() }}"
                },
                success:function (res) {
                    console.log(res);
                    if(res.code === 200){
                        layer.msg(res.msg);
                        parent.layui.layim.addList(res.data);
                        //加入群成功，给群内所有在线用户发送入群通知
                        var joinNotify = {type:"joinNotify","groupid":id};
                        parent.sendMessage(parent.socket,JSON.stringify(joinNotify));
                    }else{
                        layer.msg(res.msg,function () {})
                    }
                },
                error:function () {
                    layer.msg("网络繁忙",function(){});
                }
            })
        };

        //创建群聊
        window.createGroup = function() {
            layer.open({
                type: 2,
                title: '创建群',
                shadeClose: true,
                shade: 0.8,
                area: ['40%', '70%'],
                content: '/create_group' //iframe的url
            });
        }

    });
</script>
</body>
</html>