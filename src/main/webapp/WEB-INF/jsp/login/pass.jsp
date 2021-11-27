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
    <title>修改密码</title>
    <link type="text/css" rel="stylesheet" href="/resource/user/css/style.css">
    <script src="/resource/user/js/jquery-1.8.3.min.js"></script>
    <script src="/resource/user/js/jquery.luara.0.0.1.min.js"></script>

</head>
<body>
<%@include file="/common/utop.jsp" %>
<!-- 导航条 -->
<div class="width100" style="height: 45px; background: #dd4545; margin-top: 40px; position: relative; z-index: 100">
    <!-- 中间的部分 -->
    <div class="width1200 center_yh relative_yh" style="height: 45px">
        <!-- 普通导航 -->
        <div class="left_yh font16" id="pageNav">
            <a href="/login/uIndex">首页</a>
            <a href="/news/list">公告</a>
            <a href="/message/add">留言</a>
        </div>
    </div>
</div>
<div class="width1200 center_yh hidden_yh font14" style="height: 40px; line-height: 40px">
    <span>当前位置: </span><a href="/login/uIndex" class="c_66">首页</a>
    ><a href="#" class="c_66">个人中心</a>
    ><a href="#" class="c_66">修改密码</a>
</div>
<div class="width100 hidden_yh" style="background: #f0f0f0;padding-top: 34px;padding-bottom: 34px;">
    <div class="width1200 hidden_yh center_yh">
        <div id="vipNav">
            <a href="/user/view">个人信息</a>
            <a href="/itemOrder/my">我的订单</a>
            <a href="/sc/findBySql">商品收藏</a>
            <a href="/login/pass" class="on">修改密码</a>
        </div>
        <div id="vipRight">
            <div class="font24"
                 style="height: 60px; line-height: 60px; text-indent: 50px; background: #f5f8fa; border-bottom: 1px solid #DDDDDD;">
                修改密码
            </div>
            <input type="hidden" id="yuan" value="${obj.passWord}"/>
            <div class="bj_fff hidden_yh"
                 style="width: 838px; border: 1px solid #DDDDDD; margin-top: 30px; padding: 50px;">
                <div class="width100" style="height: 32px; line-height: 32px;">
                    <div class="left_yh font16 tright" style="width: 120px;">
                        <font class="red">*</font>旧密码 : &nbsp;&nbsp;
                    </div>
                    <input type="password" id="jiu"
                           style="width: 243px; border: 1px solid #DDDDDD; outline: none; height: 30px; text-indent: 10px"
                           placeholder="请输入旧密码..."/>
                </div>
                <div class="width100" style="height: 32px; line-height: 32px; margin-top: 15px">
                    <div class="left_yh font16 tright" style="width: 120px;">
                        <font class="red">*</font>新密码 : &nbsp;&nbsp;
                    </div>
                    <input type="password" id="xin"
                           style="width: 243px; border: 1px solid #DDDDDD; outline: none; height: 30px; text-indent: 10px"
                           placeholder="请输入新密码..."/>
                </div>
                <div class="width100" style="height: 32px; line-height: 32px; margin-top: 15px">
                    <div class="left_yh font16 tright" style="width: 120px;">
                        <font class="red">*</font>确认新密码 : &nbsp;&nbsp;
                    </div>
                    <input type="password" id="que"
                           style="width: 243px; border: 1px solid #DDDDDD; outline: none; height: 30px; text-indent: 10px"
                           placeholder="请输入确认新密码..."/>
                </div>
                <div class="width100" style="height: 32px; line-height: 32px; margin-top: 20px">
                    <a href="javascript:void(0)" class="left_yh block_yh font16 tcenter ff5802 con"
                       style="width: 244px; height: 33px; line-height: 33px; margin-left: 120px">
                        保存
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>

<%@include file="/common/ufooter.jsp" %>
</body>

<script type="text/javascript">
    $(".con").click(function () {
        var yuan = $("#yuan").val();
        var jiu = $("#jiu").val();
        var xin = $("#xin").val();
        var que = $("#que").val();

        if (jiu == null || jiu == "") {
            alert("旧密码不能为空");
            return false;
        }
        if (xin == null || xin == "") {
            alert("新密码不能为空");
            return false;
        }
        if (que == null || que == "") {
            alert("确认密码不能为空");
            return false;
        }
        if (jiu != yuan) {
            alert("旧密码输入不正确");
            return false;
        }
        if (xin == yuan) {
            alert("新密码和旧密码不能一样");
            return false;
        }
        if (xin != que) {
            alert("新密码和确认密码不一致");
            return false;
        }
        $.ajax({
            type: "POST",
            url: "/login/upass.do",
            data: {
                "password": xin
            },
            success:function (result){
                var re = JSON.parse(result);
                if (re.res == 0){
                    alert("请登录");
                }else {
                    alert("修改成功，请重新登录");
                }
                top.location.href = "/login/uLogin";
            }
        });
    });
</script>
</html>
