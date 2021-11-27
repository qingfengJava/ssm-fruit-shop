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
    <title>个人中心</title>
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
    ><a href="#" class="c_66">个人信息</a>
</div>
<div class="width100 hidden_yh" style="background: #f0f0f0;padding-top: 34px;padding-bottom: 34px;">
    <div class="width1200 hidden_yh center_yh">
        <div id="vipNav">
            <a href="/user/view" class="on">个人信息</a>
            <a href="/itemOrder/my">我的订单</a>
            <a href="/sc/findBySql">商品收藏</a>
            <a href="/login/pass">修改密码</a>
        </div>
        <div id="vipRight">
            <form action="/user/exUpdate" method="post" id="myf">
                <div class="hidden_yh bj_fff" style="width: 938px; border: 1px solid #DDDDDD;">
                    <div class="width100 font24" style="height: 60px; line-height: 60px; text-indent: 50px; background: #f5f8fa;border-bottom: 1px solid #DDDDDD;">基本信息</div>
                    <div class="width100" style="height: 32px; line-height: 32px; margin-top: 25px">
                        <div class="left_yh font16 tright" style="width: 120px">
                            <font class="red">*</font>真实姓名 : &nbsp;&nbsp;
                        </div>
                        <input type="text" name="realName" value="${obj.realName}" style="width: 243px; border: 1px solid #DDDDDD; outline: none; height: 30px; text-indent: 10px;" />
                    </div>
                    <div class="width100" style="height: 32px; line-height: 32px; margin-top: 25px">
                        <div class="left_yh font16 tright" style="width: 120px">
                            <font class="red">*</font>性别 : &nbsp;&nbsp;
                        </div>
                        <select style="outline: none;border: 1px solid #DDDDDD; height: 30px;" name="sex">
                            <option value="男" ${obj.sex == '男'?'selected="selected"':''}>男</option>
                            <option value="女" ${obj.sex == '女'?'selected="selected"':''}>女</option>
                        </select>
                    </div>
                    <div class="width100" style="height: 32px; line-height: 32px; margin-top: 25px">
                        <div class="left_yh font16 tright" style="width: 120px">
                            <font class="red">*</font>邮箱 : &nbsp;&nbsp;
                        </div>
                        <input type="text" name="email" value="${obj.email}" style="width: 243px; border: 1px solid #DDDDDD; outline: none; height: 30px; text-indent: 10px;" />
                    </div>
                    <div class="width100" style="height: 32px; line-height: 32px; margin-top: 25px">
                        <div class="left_yh font16 tright" style="width: 120px">
                            <font class="red">*</font>手机号 : &nbsp;&nbsp;
                        </div>
                        <input type="text" name="phone" value="${obj.phone}" style="width: 243px; border: 1px solid #DDDDDD; outline: none; height: 30px; text-indent: 10px;" />
                    </div>
                    <div class="width100" style="height: 32px; line-height: 32px; margin-top: 25px">
                        <div class="left_yh font16 tright" style="width: 120px">
                            <font class="red">*</font>地址 : &nbsp;&nbsp;
                        </div>
                        <input type="text" name="address" value="${obj.address}" style="width: 243px; border: 1px solid #DDDDDD; outline: none; height: 30px; text-indent: 10px;" />
                    </div>
                    <div class="width100" style="height: 32px; line-height: 32px; margin-top: 50px; margin-bottom: 20px">
                        <a href="javascript:void(0)" class="left_yh block_yh font16 tcenter ff5802 sub" style="width: 244px;height: 33px; line-height: 33px; margin-left: 120px;">保存</a>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
<script type="text/javascript">
    $(function (){
        $(".sub").click(function (){
            alert("修改成功！！！");
            $("#myf").submit();
        });
    });
</script>

<%@include file="/common/ufooter.jsp" %>
</body>
</html>
