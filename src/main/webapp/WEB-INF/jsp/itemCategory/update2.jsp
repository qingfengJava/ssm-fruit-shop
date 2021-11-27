<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/6/5
  Time: 22:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" isELIgnored="false" %>
<%@include file="/common/taglbs.jsp" %>
<base href="http://localhost:8080/">
<html>
<head>
    <title>管理员后台</title>
    <%-- 引入文件 --%>
    <link type="text/css" rel="stylesheet" href="resource/css/pintuer.css">
    <link type="text/css" rel="stylesheet" href="resource/css/admin.css">
    <script src="resource/js/jquery.js"></script>
    <script src="resource/js/pintuer.js"></script>
</head>
<body>
<div class="panel admin-panel">
    <div class="panel-head" id="add">
        <strong><span class="icon-pencil-square-o">修改二级类目</span></strong>
    </div>
    <div class="body-content">
        <form action="itemCategory/exUpdate2" method="post" class="form-x">
            <input type="hidden" name="id" value="${obj.id}" />
            <input type="hidden" name="pid" value="${obj.pid}" />
            <div class="form-group">
                <div class="label"><label>二级类目名称: </label></div>
                <div class="field">
                    <input type="text" class="input w50" name="name" data-validate="required: 请输入名称" value="${obj.name}"/>
                    <div class="tipss"></div>
                </div>
            </div>
            <div class="form-group">
                <div class="label"></div>
                <div class="field">
                    <button class="button bg-main icon-check-square-o" type="submit">提交</button>
                </div>
            </div>
        </form>
    </div>
</div>
</body>
</html>
