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
    <form action="news/findBySql" id="listform" method="post">
    <div class="padding border-bottom">
        <ul class="search" style="padding-left: 10px;">
            <li>
                <a class="button border-main icon-plus-square-o" href="news/add">添加公告</a>
            </li>
            <li>
                <input type="text" placeholder="请输入公告名称" name="name" class="input" value="${obj.name}"
                style="width: 250px; line-height: 17px; display: inline-block" />
                <a href="javascript: void(0);" onclick="changeSearch()" class="button border-main icon-search">搜素</a>
            </li>
        </ul>
    </div>
    </form>
    <table class="table table-hover text-center">
        <tr>
            <th>名称</th>
            <th>发布时间</th>
            <th>操作</th>
        </tr>
        <c:forEach items="${pagers.datas}" var="data" varStatus="1">
            <tr>
                <td>${data.name}</td>
                <td><fmt:formatDate value="${data.addTime}" pattern="yyyy-MM-dd  HH:mm:ss"></fmt:formatDate></td>
                <td>
                    <a class="button border-main" href="news/update?id=${data.id}"><span class="icon-edit">修改</span></a>
                    <a class="button border-red" href="news/delete?id=${data.id}"><span class="icon-trash-o">删除</span></a>
                </td>
            </tr>
        </c:forEach>
        <tr>
            <td colspan="8">
                <div class="pagelist">
                    <!-- 分页开始 -->
                    <pg:pager url="news/findBySql" maxIndexPages="5" items="${pagers.total}" maxPageItems="15" export="curPage=pageNumber">
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
