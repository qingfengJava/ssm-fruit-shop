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
<%@include file="/common/utop.jsp"%>
<!-- 导航条 -->
<div class="width100" style="height: 45px; background: #dd4545; margin-top: 40px; position: relative; z-index: 100">
    <!-- 中间的部分 -->
    <div class="width1200 center_yh relative_yh" style="height: 45px">
        <!-- 列表导航 -->
        <div class="left_yh Selected" style="width: 230px; height: 45px;" id="hiddenShow">
            <!-- 头部的图标 -->
            <img src="/resource/user/images/cd.png" class="left_yh" style="margin-left: 24px" alt="" />
            <span class="block_yh left_yh fff" style="height: 45px; line-height: 44px; margin-left: 10px;">分类</span>
            <!-- 导航展开部分 -->
            <div class="downSlide">
                <c:forEach items="${lbs}" var="data" varStatus="1">
                    <div class="n1Nav">
                        <font>${data.father.name}</font>
                        <img src="/resource/user/images/jt.png" alt="" />
                        <div class="n2Nav">
                            <div class="n3Nav">
                                <h3>${data.father.name}</h3>
                                <c:forEach items="${data.childrens}" var="child" varStatus="11">
                                    <a href="/item/shoplist?categoryIdTwo=${child.id}">${child.name}</a>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
        <!-- 普通导航 -->
        <div class="left_yh font16" id="pageNav">
            <a href="/login/uIndex">首页</a>
            <a href="/news/list">公告</a>
            <a href="/message/add">留言</a>
        </div>
    </div>
</div>
<!-- 轮播图 -->
<div class="width1200 center_yh hidden_yh" style="position: relative; z-index: 80;">
    <div class="example2" style="width: 1200px; height: 490px; overflow: hidden; margin-left: 230px;">
        <ul>
            <li><img src="/pages/img/主页轮播图/图1.png" alt=""></li>
            <li><img src="/pages/img/主页轮播图/图2.png" alt=""></li>
            <li><img src="/pages/img/主页轮播图/图3.png" alt=""></li>
            <li><img src="/pages/img/主页轮播图/图4.png" alt=""></li>
            <li><img src="/pages/img/主页轮播图/图5.png" alt=""></li>
            <li><img src="/pages/img/主页轮播图/图6.png" alt=""></li>
            <li><img src="/pages/img/主页轮播图/图7.png" alt=""></li>
            <li><img src="/pages/img/主页轮播图/图8.png" alt=""></li>
        </ul>
    </div>
    <script type="text/javascript">
        $(function (){
            $(".example2").luara({width:"966",height:"490",interval:4500,selected:"selected",deriction:"left"});
        });
    </script>
</div>
<!-- 折扣商品 -->
<div class="width1200 center_yh hidden_yh">
    <div class="width100" style="height: 45px; line-height: 45px; border-bottom: 2px solid #dd4545; margin-top: 20px;">
        <font class="left_yh font20">折扣大促销</font>
    </div>
    <div class="width100 hidden_yh" style="height: 480px;">
        <div class="normalPic">
            <c:forEach items="${zks}" var="data" varStatus="1">
                <a href="/item/view?id=${data.id}">
                    <h3 class="yihang c_33 font14 font100" style="padding-left: 10px; padding-right: 10px;">${data.name}</h3>
                    <p class="red font14" style="padding-left: 10px">${data.price}</p>
                    <img src="${data.url1}" width="105" height="118" alt="" style="margin: 0 auto" />
                </a>
            </c:forEach>
        </div>
    </div>
</div>
<!-- 热门商品 -->
<div class="width1200 center_yh hidden_yh">
    <div class="width100" style="height: 45px; line-height: 45px; border-bottom: 2px solid #dd4545; margin-top: 20px;">
        <font class="left_yh font20">折扣大促销</font>
    </div>
    <div class="width100 hidden_yh" style="height: 480px;">
        <div class="normalPic">
            <c:forEach items="${rxs}" var="data" varStatus="1">
                <a href="/item/view?id=${data.id}">
                    <h3 class="yihang c_33 font14 font100" style="padding-left: 10px; padding-right: 10px;">${data.name}</h3>
                    <p class="red font14" style="padding-left: 10px">${data.price}</p>
                    <img src="${data.url1}" width="105" height="118" alt="" style="margin: 0 auto" />
                </a>
            </c:forEach>
        </div>
    </div>
</div>
<%@include file="/common/ufooter.jsp"%>
</body>
</html>
