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
    <title>我的购物车</title>
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
            <div class="font24" style="height: 60px; line-height: 60px; text-indent: 50px; background: #f5f8fa; border-bottom: 1px solid #DDDDDD;">
                公告列表
            </div>
            <div class="hidden_yh" style="padding: 20px; width: 898px;">
                <c:forEach items="${pagers.datas}" var="data" varStatus="1">
                    <a href="/news/view?id=${data.id}">
                        <div class="width100 hidden_yh" style="border-bottom: 1px dashed #DDDDDD; padding-top: 10px; padding-bottom: 10px">
                            <div class="left_yh" style="width: 580px">
                                <font color="red"> ${data.name}</font>
                            </div>
                            <div class="right_yh">
                                <font color="black"> <fmt:formatDate value="${data.addTime}" pattern="yyyy-MM-dd HH:mm:ss"></fmt:formatDate></font>
                            </div>
                        </div>
                    </a>
                </c:forEach>
            </div>
        </div>
        <div class="pagelist">
            <!-- 分页开始 -->
            <pg:pager url="/news/list" maxIndexPages="5" items="${pagers.total}" maxPageItems="15" export="curPage=pageNumber">
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
    </div>
</div>

<%@include file="/common/ufooter.jsp" %>
</body>
</html>
