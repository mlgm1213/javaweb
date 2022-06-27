<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    String path = request.getRequestURI();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path;
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <base href="<%=basePath%>">
    <title>无标题文档</title>
    <link href="css/layout.css" rel="stylesheet" type="text/css"/>
    <link href="css/top.css" rel="stylesheet" type="text/css"/>
</head>
<body style="background:url(images/topbg.gif) repeat-x;">
<div class="topleft"><a href="../index.jsp" target="_parent"><img src="images/logo.png" title="系统首页"/></a></div>
<ul class="nav">
    <li><a href="../index.jsp" target="_parent" class="selected"><img src="images/globe.png" title="网站前台"/>
        <h2>网站前台</h2>
    </a></li>
    <li><a href="index.html" target="rightFrame"><img src="images/home.png" title="后台首页"/>
        <h2>后台首页</h2>
    </a></li>
    <li><a href="addgoods.html" target="rightFrame"><img src="images/shop.png" title="添加商品"/>
        <h2>添加商品</h2>
    </a></li>
    <li><a href="addmovie.html" target="rightFrame"><img src="images/movie.png" title="添加影视"/>
        <h2>添加影视</h2>
    </a></li>
    <li><a href="addfood.html" target="rightFrame"><img src="images/food.png" title="添加餐饮"/>
        <h2>添加餐饮</h2>
    </a></li>
</ul>
<div class="topright">
    <ul>
        <li><span><img src="images/help.png" title="帮助" class="helpimg"/></span><a href="#">帮助</a></li>
        <li><a href="#">关于</a></li>
        <li><a href="login.jsp" target="_parent">退出</a></li>
    </ul>
    <div class="user"><span>${sessionScope.auser.aname}</span></div>
</div>
</body>
</html>
