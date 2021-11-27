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
    <script type="text/javascript" src="resource/ueditor/ueditor.config.js"></script>
    <script type="text/javascript" src="resource/ueditor/ueditor.all.min.js"></script>
</head>
<body>
<div class="panel admin-panel">
    <div class="panel-head" id="add">
        <strong><span class="icon-pencil-square-o">商品维护</span></strong>
    </div>
    <div class="body-content">
        <form action="item/exUpdate" method="post" class="form-x" enctype="multipart/form-data">
            <input type="hidden" name="id" value="${obj.id}" />
            <div class="form-group">
                <div class="label"><label>商品名称: </label></div>
                <div class="field">
                    <input type="text" class="input w50" name="name" data-validate="required: 请输入商品名称" value="${obj.name}" />
                    <div class="tipss"></div>
                </div>
            </div>、
            <div class="form-group">
                <div class="label"><label>商品价格: </label></div>
                <div class="field">
                    <input type="text" class="input w50" name="price" data-validate="required: 请输入商品价格" value="${obj.price}" />
                    <div class="tipss"></div>
                </div>
            </div>
            <div class="form-group">
                <div class="label"><label>商品折扣: </label></div>
                <div class="field">
                    <input type="text" class="input w50" name="zk" data-validate="required: 请输入商品折扣" value="${obj.zk}" />
                    <div class="tipss"></div>
                </div>
            </div>
            <div class="form-group">
                <div class="label"><label>商品类别: </label></div>
                <div class="field">
                    <select name="categoryIdTwo" class="input w50">
                        <c:forEach items="${types}" var="data" varStatus="1">
                            <option value="${data.id}" ${obj.categoryIdTwo == data.id?"select":""}>${data.name}</option>
                        </c:forEach>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <div class="label"><label>主图: </label></div>
                <div class="field">
                    <input type="file" class="input w50" name="file" />
                    <div class="tipss"><img src="${obj.url1}" alt="${obj.url1}"></div>
                </div>
            </div>
            <div class="form-group">
                <div class="label"><label>副图1: </label></div>
                <div class="field">
                    <input type="file" class="input w50" name="file" />
                    <div class="tipss"><img src="${obj.url2}" alt="${obj.url2}"></div>
                </div>
            </div>
            <div class="form-group">
                <div class="label"><label>副图2: </label></div>
                <div class="field">
                    <input type="file" class="input w50" name="file" />
                    <div class="tipss"><img src="${obj.url3}" alt="${obj.url3}"></div>
                </div>
            </div>
            <div class="form-group">
                <div class="label"><label>副图3: </label></div>
                <div class="field">
                    <input type="file" class="input w50" name="file" />
                    <div class="tipss"><img src="${obj.url4}" alt="${obj.url4}"></div>
                </div>
            </div>
            <div class="form-group">
                <div class="label"><label>副图4: </label></div>
                <div class="field">
                    <input type="file" class="input w50" name="file" />
                    <div class="tipss"><img src="${obj.url5}" alt="${obj.url5}"></div>
                </div>
            </div>
            <div class="form-group">
                <div class="label"><label>描述: </label></div>
                <div class="field">
                    <script type="text/plain" id="remark_txt_1" name="ms" style="width: 100%; height: 300px;">${obj.ms}</script>
                    <script type="text/javascript">
                        var editor = UE.getEditor('remark_txt_1');
                        UE.Editor.prototype._bkGetActionUrl = UE.Editor.prototype.getActionUrl;
                        UE.Editor.prototype.getActionUrl = function (action){
                            if (action == 'uploadimage' || action == 'uploadscrawl' || action == 'uploadvideo'){
                                return 'ueditor/saveFile';
                            }else{
                                return this._bkGetActionUrl.call(this,action);
                            }
                        }
                    </script>
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
