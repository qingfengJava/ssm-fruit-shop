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
    <title>商品评价</title>
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
    ><a href="#" class="c_66">我的订单</a>
</div>
<div class="width100 hidden_yh" style="background: #f0f0f0;padding-top: 34px;padding-bottom: 34px;">
    <div class="width1200 hidden_yh center_yh">
        <div id="vipNav">
            <a href="/user/view">个人信息</a>
            <a href="/itemOrder/my" class="on">我的订单</a>
            <a href="/sc/findBySql">商品收藏</a>
            <a href="/login/pass">修改密码</a>
        </div>
        <div id="vipRight">
            <div class="font24" style="height: 60px; line-height: 60px; text-indent: 50px; background: #f5f8fa; width: 938px; border: 1px solid #DDDDDD;">
                商品评价
            </div>
            <form action="/comment/exAdd" method="post" id="myf">
                <input type="hidden" name="itemId" value="${id}" />
                <div class="bj_fff hidden_yh" style="width: 838px; height: 120px; border: 1px solid #DDDDDD; margin-top: 30px; padding: 50px;">
                    <div class="width100" style="height: 32px; line-height: 32px">
                        <div class="left_yh font16 tright" style="width: 120px">
                            <font class="red">*</font>评价内容 : &nbsp;&nbsp;
                        </div>
                        <textarea rows="3" cols="10" name="content" style="width: 300px; border: 1px solid #DDDDDD; outline: none; height: 100px;"></textarea>
                    </div>
                    <div class="width100" style="height: 32px; line-height: 32px; margin-top: 85px">
                        <a href="javascript:void(0)" class="left_yh block_yh font16 tcenter ff5802 con" style="width: 240px;height: 33px;line-height: 33px;margin-left: 120px;">
                            保存
                        </a>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>

<script type="text/javascript">
    $(function (){
       $(".con").click(function (){
           $("#myf").submit();
       }) ;
    });
</script>

<%@include file="/common/ufooter.jsp" %>
</body>
</html>
