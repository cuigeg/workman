<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>im-chat</title>
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <link rel="stylesheet" href="{{asset('/asset/layui/css/layuiv2.css')}}" media="all">
    <style>
        .layui-edge{
            display: block;
        }
    </style>
</head>
<body>
<ul class="layui-nav" >
    <li class="layui-nav-item" style="float: right;">
        <a href="javascript:;"><img src="{{ session('user')->avatar }}" class="layui-nav-img">{{ session('user')->username }}</a>
        <dl class="layui-nav-child">
            <dd><a href="/loginout">退出登录</a></dd>
        </dl>
    </li>
    <li class="layui-nav-item layui-this"><a href="/">首页</a></li>
    <li class="layui-nav-item"><a target="_blank" href="https://www.woann.cn">吴先生的博客</a></li>
    <li class="layui-nav-item"><a target="_blank" href="https://github.com/woann">Github</a></li>
</ul>
<script type="text/javascript" src="{{asset('/asset/layui/jquery.js')}}"></script>
<script src="{{asset('/asset/layui/layui.js')}}"></script>
<script>
        var socket;
        var ping;
        function sendMessage(socket, data){
            socket.send(data)
        }

        layui.use(['layim','element','upload'], function(layim){
            var element = layui.element;
            //基础配置
            layim.config({
                init: {
                    url: '/userinfo' //接口地址（返回的数据格式见下文）
                    ,type: 'get' //默认get，一般可不填
                    ,data: {} //额外参数
                }
                //获取群员接口（返回的数据格式见下文）
                ,members: {
                    url: '/group_members' //接口地址（返回的数据格式见下文）
                    ,type: 'get' //默认get，一般可不填
                    ,data: {} //额外参数
                }
                //上传图片接口（返回的数据格式见下文），若不开启图片上传，剔除该项即可
                ,uploadImage: {
                    url: '/upload?type=im_image&path=im'//接口地址
                    ,token: "{{ csrf_token() }}"
                    ,type: 'post' //默认post
                }
                //上传文件接口（返回的数据格式见下文），若不开启文件上传，剔除该项即可
                ,uploadFile: {
                    url: '/upload?type=im_file&path=file'//接口地址
                    ,token: "{{ csrf_token() }}"
                    ,type: 'post' //默认post
                }
                //扩展工具栏，下文会做进一步介绍（如果无需扩展，剔除该项即可）
                ,tool: [{
                    alias: 'code' //工具别名
                    ,title: '代码' //工具名称
                    ,icon: '&#xe64e;' //工具图标，参考图标文档
                }]

                , isAudio: true //开启聊天工具栏音频
                , isVideo: true //开启聊天工具栏视频
                , notice: true //是否开启桌面消息提醒，默认false
                ,msgbox: '/message_box' //消息盒子页面地址，若不开启，剔除该项即可
                ,find: '/find'//发现页面地址，若不开启，剔除该项即可
                ,chatLog: '/chat_log' //聊天记录页面地址，若不开启，剔除该项即可
            });
            setTimeout(function () {
                //监听自定义工具栏点击，以添加代码为例
                //建立websocket连接
                socket = new WebSocket('ws://192.168.10.10:8282');
                socket.onopen = function(){
                    console.log("websocket is connected");
                    ping = setInterval(function () {
                        sendMessage(socket,'{"type":"ping"}');
                    },1000 * 20);
                    sendMessage(socket,JSON.stringify({
                        type: 'login' //随便定义，用于在服务端区分消息类型
                        ,sessionid: "{{ $sessionid }}"
                        ,sessionname : "{{$sessionname}}"
                    }));
                };
                socket.onmessage = function(res){
                    data = JSON.parse(res.data);
                    switch (data.type) {
                        case "friend":
                        case "group":
                            console.log(data);
                            layim.getMessage(data); //res.data即你发送消息传递的数据（阅读：监听发送的消息）
                            break;
                        //单纯的弹出
                        case "layer":
                            if (data.code === 200) {
                                layer.msg(data.msg)
                            } else if(data.code === 403){
                                layer.msg(data.msg,{time:2*1000},function() {
                                    window.location.href = '/loginout';
                                });
                            }else {
                                layer.msg(data.msg,function(){})
                            }
                            break;
                        //将新好友添加到列表
                        case "addList":
                            layim.setChatStatus('<span style="color:#FF5722;">在线</span>'); //模拟标注好友在线状态
                            layim.addList(data.data);
                            break;
                        //好友上下线变更
                        case "friendStatus" :
                            if(data.status === 'online'){
                                layim.setChatStatus('<span style="color:#FF5722;">在线</span>'); //模拟标注好友在线状态
                            }else{
                                layim.setChatStatus('<span style="color:#666;">离线</span>'); //模拟标注好友在线状态
                            }
                            layim.setFriendStatus(data.uid, data.status);
                            break;
                        //消息盒子
                        case "msgBox" :
                            //为了等待页面加载，不然找不到消息盒子图标节点
                            setTimeout(function(){
                                if(data.count > 0){
                                    layim.msgbox(data.count);
                                }
                            },1000);
                            break;
                        //token过期
                        case "token_expire":
                            window.location.reload();
                            break;
                        //加群提醒
                        case "joinNotify":
                            layim.getMessage(data.data);
                            break;

                    }
                };
                socket.onclose = function(){
                    console.log("websocket is closed");
                    clearInterval(ping);
                }
            },150);

            layim.on('sendMessage', function(res){
                sendMessage(socket,JSON.stringify({
                    type: 'chatMessage' //随便定义，用于在服务端区分消息类型
                    ,data: res
                }));
            });
            layim.on('sign', function(value){
                $.ajax({
                    url:"/update_sign"
                    ,type:"post"
                    ,data:{sign:value}
                    ,dataType:"json"
                    ,headers: {
                    'X-CSRF-TOKEN': "{{ csrf_token() }}"
                    }
                    ,success:function (res) {
                        if(res.code === 200){
                            layer.msg(res.msg)
                        }else{
                            layer.msg(res.msg,function () {})
                        }
                    },
                    error:function () {
                        layer.msg("网络繁忙",function(){});
                    }
                })
            });
            layim.on('tool(code)', function(insert, send, obj){ //事件中的tool为固定字符，而code则为过滤器，对应的是工具别名（alias）
                layer.prompt({
                    title: '插入代码'
                    ,formType: 2
                    ,shade: 0
                }, function(text, index){
                    layer.close(index);
                    insert('[pre class=layui-code]' + text + '[/pre]'); //将内容插入到编辑器，主要由insert完成
                    //send(); //自动发送
                });
            });
            layim.on('chatChange', function(obj){
                var type = obj.data.type;
                if(type === 'friend'){
                    if(obj.data.status == 'online'){
                        layim.setChatStatus('<span style="color:#FF5722;">在线</span>'); //模拟标注好友在线状态
                    }else{
                        layim.setChatStatus('<span style="color:#666;">离线</span>'); //模拟标注好友在线状态
                    }
                }
            });

        });

</script>
</body>
</html>
