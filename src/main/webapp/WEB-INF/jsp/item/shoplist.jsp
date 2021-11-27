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
    <title>商城首页</title>
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
    <span>当前位置: </span><a href="/login/uIndex" class="c_66">首页</a><a href="#" class="c_66">>商品列表</a>
</div>
<div class="width1198 center_yh" style="height: 35px; background: #f0f0f0; border: 1px solid #DDDDDD; margin-top: 25px">
    <a href="/item/shoplist?categoryIdTwo=${obj.categoryIdTwo}" class="mR">默认</a>
    <a href="/item/shoplist?price=1&categoryIdTwo=${obj.categoryIdTwo}" class="mR">
        价格
        <img src="/resource/user/images/gg.png" alt="" />
    </a>
    <a href="/item/shoplist?gmNum=1&categoryIdTwo=${obj.categoryIdTwo}" class="mR">
        销量
        <img src="/resource/user/images/gg.png" alt="" />
    </a>
</div>

<!-- 商品列表 -->
<div class="width1200 center_yh hidden_yh" style="margin-top: 25px;">
    <ul class="listSs">
        <c:forEach items="${pagers.datas}" var="data" varStatus="1">
            <li>
                <a href="/item/view?id=${data.id}" class="bjK">
                    <img src="${data.url1}" alt="">
                </a>
                <h3 class="spName">${data.name}</h3>
                <p class="center_yh block_yh" style="width: 202px;">
                    <font class="left_yh red font16">¥${data.price}</font>
                    <c:if test="${data.zk != null}">
                        <font class="right_yh font14">
                            ¥${data.zk}
                            <span style="color: red">折</span>
                        </font>
                    </c:if>
                </p>
                <div class="wCa">
                    <a href="/sc/exAdd?itemId=${data.id}" class="fav">
                        <div class="wCa1">
                            <b><img src="/resource/user/images/star.png" alt=""></b>
                            <font>收藏</font>
                        </div>
                    </a>
                    <div class="wCa2" onclick="addcar('${data.id}')">
                        <b><img src="/resource/user/images/sar.png" alt=""></b>
                        <font>加入购物车</font>
                    </div>
                </div>
            </li>
        </c:forEach>
    </ul>
</div>
<div id="navs">
    <div class="pagelist">
        <!-- 分页开始 -->
        <pg:pager url="/item/shoplist" maxIndexPages="5" items="${pagers.total}" maxPageItems="15" export="curPage=pageNumber" >
            <pg:param name="categoryIdTwo" value="${obj.categoryIdTwo}" />
            <pg:param name="price" value="${obj.price}" />
            <pg:param name="gmNum" value="${obj.gmNum}" />
            <pg:param name="condition" value="${condition}" />
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
<script type="text/javascript">
    function addcar(id){
        $.ajax({
            type:"POST",
            url:"/car/exAdd?itemId="+id+"&num=1",
            success:function (result){
                var re = JSON.parse(result);
                if (re.res == 0){
                    alert("请登录");
                    window.location.href="/login/uLogin";
                }else{
                    window.location.href = "/car/findBySql";
                }
            }
        });
    }
</script>
<%@include file="/common/ufooter.jsp" %>
</body>
</html>
