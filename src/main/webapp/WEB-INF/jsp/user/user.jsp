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
    <form action="user/findBySql" id="listform" method="post">
    <div class="padding border-bottom">
        <ul class="search" style="padding-left: 10px;">
            <li>
                <input type="text" placeholder="请输入用户名" name="userName" class="input" value="${obj.userName}"
                style="width: 250px; line-height: 17px; display: inline-block" />
                <a href="javascript: void(0);" onclick="changeSearch()" class="button border-main icon-search">搜素</a>
            </li>
        </ul>
    </div>
    </form>
    <table class="table table-hover text-center">
        <tr>
            <th>用户名</th>
            <th>手机号</th>
            <th>真实姓名</th>
            <th>性别</th>
            <th>邮箱</th>
            <th>地址</th>
        </tr>
        <c:forEach items="${pagers.datas}" var="data" varStatus="1">
            <tr>
                <td>${data.userName}</td>
                <td>${data.phone}</td>
                <td>${data.realName}</td>
                <td>${data.sex}</td>
                <td>${data.email}</td>

            </tr>
        </c:forEach>
        <tr>
            <td colspan="8">
                <div class="pagelist">
                    <!-- 分页开始 -->
                    <pg:pager url="itemCategory/findBySql" maxIndexPages="5" items="${pagers.total}" maxPageItems="15" export="curPage=pageNumber">
                        <pg:last>
                            共${pagers.total}记录，共${pageNumber}页，
                        </pg:last>
                        当前第${curPage}页
                        <pg:first>
                            <a href="${pageUrl}">首页</a>
                        </pg:first>
                        <pg:prev>
                            <a href="${pageUrl}">上一页</a>
                        </pg:prev>
                        <pg:pages>
                            <c:choose>
                                <c:when test="${curPage eq pageNumber}">
                                    <font color="red">[${pageNumber}]</font>
                                </c:when>
                                <c:otherwise>
                                    <a href="${pageUrl}">[${pageNumber}]</a>
                                </c:otherwise>
                            </c:choose>
                        </pg:pages>
                        <pg:next>
                            <a href="${pageUrl}">下一页</a>
                        </pg:next>
                        <pg:last>
                            <c:choose>
                                <c:when test="${curPage eq pageNumber}">
                                    <font color="red">尾页</font>
                                </c:when>
                                <c:otherwise>
                                    <a href="${pageUrl}">尾页</a>
                                </c:otherwise>
                            </c:choose>
                        </pg:last>
                    </pg:pager>
                </div>
            </td>
        </tr>
    </table>
</div>
</body>
<script type="text/javascript">
    function changeSearch(){
        $("#listform").submit();
    }

</script>
</html>
