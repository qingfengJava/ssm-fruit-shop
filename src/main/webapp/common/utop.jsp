<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/6/5
  Time: 22:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="/WEB-INF/tlds/c.tld" %>
<%@ taglib prefix="fmt" uri="/WEB-INF/tlds/fmt.tld" %>
<%@ taglib prefix="fn" uri="/WEB-INF/tlds/fn.tld" %>
<%@ taglib prefix="pg" uri="/WEB-INF/tlds/pager-taglib.tld" %>

<div class="width100" style="height: 25px; background: #f0f0f0;">
    <div class="width1200 center_yh font14 c_66" style="height: 25px; line-height: 25px;">
        <font class="left_yh">欢迎来到水果商城！</font>
        <div class="right_yh" id="fast_jump">
            <c:if test="${userId != null}">
                <a href="#">欢迎您: ${username}</a>
                <b></b>
                <a href="login/uTui">退出</a>
                <b></b>
                <a href="car/findBySql">我的购物车</a>
            </c:if>
            <c:if test="${userId == null}">
                <a href="login/uLogin">登录</a>
                <b></b>
                <a href="login/res">注册</a>
                <b></b>
            </c:if>
            <a href="user/view">个人中心</a>
        </div>
    </div>
</div>
<div class="width100 hidden_yh">
    <div class="width1200 center_yh hidden_yh">
        <a href="#" class="block_yh left_yh">
            <img src="/resource/images/logo.png" alt="" style="height: 70px;margin-top: 10px">
        </a>
        <div class="right_yh" style="height: 28px; width: 316px; border: 2px solid #dd4545; margin-top: -40px;">
            <form action="item/shoplist" method="post">
                <input type="text" placeholder="关键词查询" class="search" name="condition" value="${condition}" />
                <input type="submit" class="btnSearh" value="搜索" />
            </form>
        </div>
    </div>
</div>

