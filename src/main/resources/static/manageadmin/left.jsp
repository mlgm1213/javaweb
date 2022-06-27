﻿<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
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

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<base href="<%=basePath%>">

<title>无标题文档</title>
<link href="css/left.css" rel="stylesheet" type="text/css" />
</head>
<body style="background:#f0f9fd;">
<div class="lefttop"><span></span>功能菜单</div>
<dl class="leftmenu">
  <dd>
    <div class="title"> <span><img src="images/leftico05.png" /></span>购物后台管理 </div>
    <ul class="menuson">
      <li><cite></cite><a href="addgoods.jsp" target="rightFrame">添加商品</a><i></i></li>
      <li class="active"><cite></cite><a href="/admin/selectGoods" target="rightFrame">商品列表</a><i></i></li>
      <li><cite></cite>商品类型<i></i></li>
    </ul>
  </dd>
  <dd>
    <div class="title"> <span><img src="images/leftico02.png" /></span>影视后台管理 </div>
    <ul class="menuson">
      <li><cite></cite><a href="addmovie.html" target="rightFrame">添加影片</a><i></i></li>
      <li class="active"><cite></cite><a href="movielist.html" target="rightFrame">影片列表</a><i></i></li>
      <li><cite></cite>影片类型<i></i></li>
    </ul>
  </dd>
  <dd>
    <div class="title"><span><img src="images/leftico05.png" /></span>餐饮后台管理</div>
    <ul class="menuson">
      <li><cite></cite><a href="addfood.html" target="rightFrame">添加美食</a><i></i></li>
      <li class="active"><cite></cite><a href="foodlist.html" target="rightFrame">美食列表</a><i></i></li>
      <li><cite></cite>美食类型<i></i></li>
    </ul>
  </dd>
  <dd>
    <div class="title">
        <span><img src="images/leftico04.png" /></span>
        <a href="/adminOrder/selectOrder" target="rightFrame">订单管理
        </a>
    </div>
    <ul class="menuson">
      <li><cite></cite><a href="#">最新订单</a><i></i></li>
      <li><cite></cite><a href="#">已处理订单</a><i></i></li>
      <li><cite></cite><a href="#">取消订单</a><i></i></li>
    </ul>
  </dd>
  <dd>
    <div class="title"><span><img src="images/leftico04.png" /></span>交易记录</div>
  </dd>
  <dd>
    <div class="title"><a href="jqueryChart.html" target="rightFrame"><span><img src="images/leftico06.png" /></span>统计报表</a></div>
  </dd>
  <dd>
    <div class="title"><span><img src="images/leftico04.png" /></span>权限分配</div>
  </dd>
  <dd>
    <div class="title"><span><img src="images/leftico08.png" /></span>修改密码</div>
  </dd>
  <dd>
    <div class="title"><span><img src="images/leftico07.png" /></span>系统设置</div>
  </dd>
</dl>
</body>
</html>
