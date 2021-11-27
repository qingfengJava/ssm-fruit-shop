<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/6/5
  Time: 22:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@include file="/common/taglbs.jsp" %>
<base href="http://localhost:8080/">

<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>管理员登录</title>
    <link href="pages/css/bootstrap.min.css" rel="stylesheet">
    <script src="pages/js/jquery-1.11.3.min.js"></script>
    <script src="pages/js/bootstrap.min.js"></script>

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
<body background="pages/img/bg.jpg" style="width: 100%; height: 100%;">
<div class="container">
    <div class="row">
        <div class="col-xs-6 col-lg-offset-3" style="margin-top: 80px;">
            <font size="5" color="black" face="微软雅黑">
                <h1>欢迎管理员登录水果商城后台管理</h1>
            </font>
        </div>
    </div>
    <div class="row" style="background-color: deepskyblue; margin-top: 50px;">

        <div class="col-xs-6 col-xs-offset-3" style="margin-top: 100px; margin-bottom: 100px;">
            <div class="col-xs-12" style="border: 5px solid gainsboro;background-color: white;">
                <!-- 表单部分 -->
                <form action="login/toLogin" class="form-horizontal" onsubmit="return checkForm()" method="post">
                    <div class="row">
                    <div id="usernameDiv" class="form-group" style="margin-top: 50px;">
                        <label class="col-xs-2 col-xs-offset-2  control-label">登录账号:</label>
                        <div class="col-xs-5">
                            <input type="text" class="form-control" id="username" name="userName" placeholder="请输入用户名">
                        </div>
                        <label id="usernameMsg" class="col-xs-3 control-label"></label>
                    </div>
                    </div>
                    <div class="row">
                    <div id="passwordDiv" class="form-group" style="margin-top: 20px;">
                        <label class="col-xs-2 col-xs-offset-2 control-label">登录密码:</label>
                        <div class="col-xs-5">
                            <input type="password" class="form-control" id="password" name="password" placeholder="请输入密码">
                        </div>
                        <label id="passwordMsg" class="col-xs-3 control-label"></label>
                    </div>
                    </div>
                    <div class="form-group" style="margin-top: 20px">
                        <div class="col-xs-offset-3 col-xs-8">
                            <input type="submit" class="btn btn-danger btn-lg" value="登&nbsp;&nbsp;&nbsp;&nbsp;录" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <input type="reset" class="btn btn-default btn-lg" value="重&nbsp;&nbsp;&nbsp;&nbsp;置" />
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <div class="row" style="margin-top: 30px;" style="margin-top: 50px;">
        <div class="col-xs-12 text-center">
            Copyriht &copy; 2021-2022 攀枝花学院 Web专业团队 版权所有
        </div>
    </div>
</div>
</div>
</body>
</html>
