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
    <title>公告详情</title>
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
<div class="width100 hidden_yh" style="background: #f0f0f0; padding-top: 34px; padding-bottom: 34px">
    <div class="width1200 hidden_yh center_yh">
        <div id="vipRight" style="width: 1200px">
            <div class="hidden_yh bj_fff" style="width: 1198px; border: 1px solid #DDDDDD;">
                <div class="width100 font24" style="height: 50px; line-height: 50px; width: 200px; text-align: center;">${obj.name}</div>
                <div class="hidden_yh" style="padding: 20px; width: 1100px; margin: 0 auto">
                    <div class="width100 hidden_yh" style="border-bottom: 1px dashed #DDDDDD; padding-top: 10px; padding-bottom: 10px;">
                        <div class="left_yh" style="width: 100%; color: black">
                            ${obj.content}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<%@include file="/common/ufooter.jsp" %>
</body>
</html>
