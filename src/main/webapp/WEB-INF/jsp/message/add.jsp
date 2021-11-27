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
    <title>留言</title>
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

<div class="width1200 center_yh hidden_yh font14" style="height: 40px; line-height: 40px;">
</div>
<div class="width100 hidden_yh" style="background: #f0f0f0; padding-top: 34px; padding-bottom: 34px;">
    <div class="width1200 hidden_yh center_yh">
        <div id="vipRight"
             style="height: 60px; line-height: 60px; text-indent: 50px; background: #f5f8fa; width: 1200px; border: 1px solid #DDDDDD;">
            提交留言
        </div>
        <div class="bj_fff hidden_yh" style="width: 1200px; border: 1px solid #DDDDDD; margin-top: 30px; padding: 60px;">
            <div class="width100" style="height: 32px; line-height: 32px;">
                <div class="left_yh font16 tright" style="width: 120px;"><font class="red">*</font>姓名 : &nbsp;&nbsp;
                </div>
                <input type="text" id="name"
                       style="width: 243px; border: 1px solid #DDDDDD; outline: none; height: 30px; text-indent: 10px;"/>
            </div>
            <div class="width100" style="height: 32px; line-height: 32px; margin-top: 10px">
                <div class="left_yh font16 tright" style="width: 120px;"><font class="red">*</font>联系方式 : &nbsp;&nbsp;
                </div>
                <input type="text" id="phone"
                       style="width: 243px; border: 1px solid #DDDDDD; outline: none; height: 30px; text-indent: 10px;"/>
            </div>
            <div class="width100" style="height: 40px; line-height: 40px; margin-top: 10px">
                <div class="left_yh font16 tright" style="width: 120px;"><font class="red">*</font>留言内容 : &nbsp;&nbsp;
                </div>
                <textarea rows="10" cols="60" id="content"
                          style="width: 300px; border: 1px solid #DDDDDD; outline: none; height: 100px;">
            </textarea>
            </div>
            <div class="width100" style="height: 32px; line-height: 32px; margin-top: 100px">
                <a href="javascript:void(0)" class="left_yh block_yh font16 tcenter ff5802 con"
                   style="width: 244px; height: 33px; line-height: 33px; margin-left: 120px">
                    提交
                </a>
            </div>
        </div>
    </div>
</div>

<%@include file="/common/ufooter.jsp" %>
</body>

<script type="text/javascript">
    $(".con").click(function () {
        var name = $("#name").val();
        var phone = $("#phone").val();
        var content = $("#content").val();

        if (name == null || name == "") {
            alert("请输入姓名");
            return false;
        }
        if (phone == null || phone == "") {
            alert("请输入联系方式");
            return false;
        }
        if (content == null || content == "") {
            alert("请输入留言的内容");
            return false;
        }

        $.ajax({
            type: "POST",
            url: "/message/exAdd.do",
            data: {
                "name": name,
                "phone":phone,
                "content":content
            },
            success:function (result){
                alert("您的反馈很重要，谢谢！！！")
                window.location.href = "/message/add";
            }
        });
    });
</script>
</html>
