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
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <base href="<%=basePath%>">
<title>餐饮列表页面-后台管理</title>
<link href="css/layout.css" rel="stylesheet" type="text/css" />
<link href="css/list.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div class="place"> <span>位置：</span>
  <ul class="placeul">
    <li><a href="main.jsp">首页</a></li>
    <li><a href="#">购物后台管理</a></li>
    <li><a href="#">商品列表</a></li>
  </ul>
  <div class="date_text"><img src="images/leftico04.png">&nbsp;今天是2015年2月10日 星期一 12：00</div>
</div>
<div class="rightinfo">
  <div class="tools">
    <ul class="toolbar">
      <li ><span><img src="images/t01.png" /></span>添加</li>
      <li ><span><img src="images/t02.png" /></span>修改</li>
      <li class="click"><span><img src="images/t03.png" /></span>删除</li>
      <li><a href="jqueryChart.html"><span><img src="images/t04.png" /></span>统计</a></li>
      <li><span><img src="images/t05.png" /></span>设置</li>
    </ul>
    <iframe src="shop_search.html" scrolling="no" frameborder="0" width="400" height="42"></iframe>
  </div>
  <table class="tablelist">
    <thead>
      <tr>

        <th>缩略图</th>
        <th>商品名称</th>
        <th>商品类别</th>
        <th>库存(件）</th>
        <th>商品单价（元）</th>
        <th>团购价（元）</th>
        <th>发布时间</th>
      </tr>
    </thead>
    <tbody>
      <c:forEach items="${goodsList}" var="goods">
          <tr>
            <td class="imgtd"><img width="100" height="75" src="../../shop/images/shopshow/${goods.gpicture}" /></td>
            <td>${goods.gname}</td>
            <td>${goods.goodstype_id}</td>
            <td>${goods.gstore}</td>
            <td>${goods.goprice}</td>
            <td>${goods.grprice}</td>
            <td>${goods.create_time}</td>
          </tr>
      </c:forEach>
    </tbody>
  </table>
  <div class="pagin">
    <div class="message">共<i class="blue">1256</i>条记录，当前显示第&nbsp;<i class="blue">2&nbsp;</i>页</div>
    <ul class="paginList">
      <li class="paginItem"><a href="#"><span class="pagepre"></span></a></li>
      <li class="paginItem"><a href="#">1</a></li>
      <li class="paginItem current"><a href="#">2</a></li>
      <li class="paginItem"><a href="#">3</a></li>
      <li class="paginItem"><a href="#">4</a></li>
      <li class="paginItem"><a href="#">5</a></li>
      <li class="paginItem more"><a href="#">...</a></li>
      <li class="paginItem"><a href="#">10</a></li>
      <li class="paginItem"><a href="#"><span class="pagenxt"></span></a></li>
    </ul>
  </div>
</div>
</body>
</html>
