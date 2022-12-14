<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/6/5
  Time: 22:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" isELIgnored="false" %>
<%@include file="/common/taglbs.jsp" %>
<base href="http://localhost:8080">

<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>用户登录</title>
    <link href="/pages/css/bootstrap.min.css" rel="stylesheet">
    <script src="/pages/js/jquery-1.11.3.min.js"></script>
    <script src="/pages/js/bootstrap.min.js"></script>

    <script type="text/javascript">
        //非空校验
        function checkNotNull(nid) {
            //1、获取用户名表单输入项		元素对象
            var nodex = document.getElementById(nid);
            //获取对应的错误信息回显	label元素
            var msg = document.getElementById(nid + "Msg");
            //获取对应的Div
            var div = document.getElementById(nid + "Div");
            //2、给对应的值进行非空判断。
            var reg = /^\s*$/; //如果有0~多个空白符，就为true。
            if (reg.test(nodex.value)) {
                //信息不合格
                div.className += " has-error";
                msg.innerHTML = "用户名不能为空";
                return false;
            } else {
                //信息合格
                div.className = "form-group";
                msg.innerHTML = "";
                return true;
            }
        }


        //表单校验方法
        function checkForm() {
            //用户名
            var flag1 = checkNotNull("username");
            //密码
            var flag2 = checkNotNull("password");
            return flag1 && flag2;
        }
    </script>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-xs-6 col-lg-offset-4" style="margin-top: 40px;">
            <font size="7" color="dodgerblue" face="微软雅黑">
                <h1>欢迎登录网上水果销售平台</h1>
            </font>
        </div>
    </div>
    <div class="row" style="background-color: #31B0D5; margin-top: 50px;">
        <div id="carousel-example-generic" class="col-xs-6 carousel slide"
             style="margin-top: 50px; margin-bottom: 50px;"
             data-ride="carousel" data-interval="1000">
            <!-- 小圆点 -->
            <ol class="carousel-indicators">
                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                <li data-target="#carousel-example-generic" data-slide-to="3"></li>
            </ol>

            <!-- 轮播图图片主体部分 -->
            <div class="carousel-inner" role="listbox">
                <div class="item active">
                    <img src="/pages/img/登录注册轮播图/1.png">
                </div>
                <div class="item">
                    <img src="/pages/img/登录注册轮播图/2.png">
                </div>
                <div class="item">
                    <img src="/pages/img/登录注册轮播图/3.png">
                </div>
                <div class="item">
                    <img src="/pages/img/登录注册轮播图/4.png">
                </div>
            </div>

            <!-- 左右控制按钮 -->
            <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                <span class="glyphicon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                <span class="glyphicon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>

        <div class="col-xs-6" style="margin-top: 100px;">
            <div class="col-xs-12" style="border: 5px solid gainsboro;background-color: white;">
                <!-- 表单部分 -->
                <form action="/login/utoLogin" class="form-horizontal" onsubmit="return checkForm()">
                    <div id="usernameDiv" class="form-group" style="margin-top: 50px;">
                        <label class="col-xs-2 col-xs-offset-1 control-label">账户登录:</label>
                        <div class="col-xs-6">
                            <input type="text" class="form-control" id="username" name="userName" placeholder="请输入用户名或手机号...">
                        </div>
                        <label id="usernameMsg" class="col-xs-3 control-label"></label>
                    </div>
                    <div id="passwordDiv" class="form-group">
                        <label class="col-xs-2  col-xs-offset-1 control-label">登录密码:</label>
                        <div class="col-xs-6">
                            <input type="password" class="form-control" id="password" name="passWord" placeholder="请输入密码...">
                        </div>
                        <label id="passwordMsg" class="col-xs-3 control-label"></label>
                    </div>
                    <div class="form-group">
                        <div class="col-xs-offset-4 col-xs-8">
                            <input type="submit" class="btn btn-danger btn-lg" value="登&nbsp;&nbsp;&nbsp;&nbsp;录" />
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            <input type="reset" class="btn btn-default btn-lg" value="重&nbsp;&nbsp;&nbsp;&nbsp;置" />
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-xs-12 text-center"  style="margin-top: 20px">
            <img width="100%" src="/resource/user/images/db.png" alt="">
        </div>
        <div class="col-xs-12 text-center" style="margin-top: 40px">
            <ul class="list-inline">
                <li><a href="#">关于我们</a></li>
                <li><a href="#">联系我们</a></li>
                <li><a href="#">招贤纳士</a></li>
                <li><a href="#">法律声明</a></li>
                <li><a href="#">友情连接</a></li>
                <li><a href="#">支付方式</a></li>
                <li><a href="#">配送方式</a></li>
                <li><a href="#">服务声明</a></li>
                <li><a href="#">广告声明</a></li>
            </ul>
        </div>
    </div>
    <div class="row" style="margin-top: 30px; margin-bottom: 30px">
        <div class="col-xs-12 text-center">
            Copyriht &copy; 2021-2022 攀枝花学院 Web专业团队 版权所有
        </div>
    </div>
</div>
</div>
</body>
</html>
