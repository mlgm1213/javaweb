<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>添加商品页面-后台管理系统</title>
<link href="css/layout.css" rel="stylesheet" type="text/css" />
<link href="css/add.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div class="place"> <span>位置：</span>
  <ul class="placeul">
    <li><a href="main.jsp" target="_parent">首页</a></li>
    <li><a href="#">添加商品</a></li>
  </ul>
</div>
<div class="formbody">
  <div  class="usual">
    <div class="tabson">
      <form action="/admin/addGoods" class="forminfo" method="post">
        <li>
          <label>商品缩略图</label>
          <input name="gpicture" type="file" multiple="multiple"/>
        </li>
        <li>
          <label>商品名称<b>*</b></label>
          <input name="gname" type="text" class="dfinput" placeholder="请填写商品名称" required="required" style="width:500px;"/>
        </li>
        <li>
          <label>商品类别<b>*</b></label>
          <div class="vocation">
            <select class="select3" name="goodstype_id">
              <option>1</option>
              <option>2</option>
              <option>3</option>
              <option>4</option>
            </select>
          </div>
        </li>
        <li>
          <label>商品单价<b>*</b></label>
          <input name="goprice" class="dfinput" type="number"  required="required"  style="width:100px;"/>
          元 </li>
        <li>
          <label>团购价<b>*</b></label>
          <input name="grprice" class="dfinput" type="number"   required="required" style="width:100px;"/>
          元 </li>
        <li>
          <label>商品数量<b>*</b></label>
          <input name="gstore" type="number" class="dfinput"  required="required" style="width:100px;"/>
          件 </li>
        <li>
          <label>商品描述<b>*</b></label>
          <textarea name="contents" rows="3" id="content"  style="width:500px;height:100px;"></textarea>
        </li>
        <li>  <label>&nbsp;</label>
          <input type="submit" class="btn" value="马上发布"/>
        </li>
      </form>
    </div>
  </div>
</div>
</body>
</html>
