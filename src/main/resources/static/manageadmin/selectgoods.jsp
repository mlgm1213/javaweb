<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
<link href="../css/admin/common.css" type="text/css" rel="stylesheet">
<link href="../css/list.css" rel="stylesheet" type="text/css" />
  <link href="../css/layout.css" rel="stylesheet" type="text/css" />
  <base href="<%=basePath%>">
    <title>selectGoods.jsp</title>

    <style type="text/css">
        table{
            text-align: center;
            border-collapse: collapse;
        }
        .bgcolor{
              background-color: #F08080;
        }
    </style>
    <script type="text/javascript">
        function changeColor(obj){
            obj.className = "bgcolor";
        }
        function changeColor1(obj){
            obj.className = "";
        }
    </script>
</head>
<body>

<div class="tools">
    <ul class="toolbar">
    <li><cite></cite><a href="adminGoods/toAddGoodsNew" target="center"><span><img src="images/t01.png" /></span>添加</a><i></i></li>
    <!--   <li ></li>
    <li ></li>  -->
          <li><a href="adminGoods/selectGoods?act=updateSelect" target="center"><span><img src="images/t02.png" /></span>修改</a></li>
     <!-- <li class="click"><span><img src="images/t03.png" /></span>删除</li>-->
      <li><a href="adminGoods/selectGoods?act=deleteSelect" target="center"><span><img src="images/t03.png" /></span>删除</a></li>

      <li><a href="jqueryChart.html"><span><img src="images/t04.png" /></span>统计</a></li>
      <li><span><img src="images/t05.png" /></span>设置</li>
    </ul>
    <iframe src="adminGoods/toShopSearch" scrolling="no" frameborder="0" width="400" height="42"></iframe>
  </div>



    <c:if test="${allGoods.size() == 0 }">
        您还没有商品。
    </c:if>
    <c:if test="${allGoods.size() != 0 }">
        <table border="1" bordercolor="PaleGreen">
            <thead>
                <th width="100px">ID</th>
                <th width="200px">名称</th>
                <th width="200px">价格</th>
                <th width="100px">库存</th>
                <th width="200px">详情</th>
            </thead>
            <c:forEach items="${allGoods }" var="goods">
                <tr onmousemove="changeColor(this)" onmouseout="changeColor1(this)">
                    <td>${goods.id }</td>
                    <td>${goods.gname }</td>
                    <td>${goods.grprice }</td>
                    <td>${goods.gstore }</td>
                    <td><a href="adminGoods/selectAGoods?id=${goods.id }" target="_blank">详情</a>
                    <a href="adminGoods/selectAGoods?id=${goods.id }&act=updateAgoods" target="center" >修改</a>
                    <a href="adminGoods/selectGoods?act=deleteSelect" target="center">删除</a>

                    </td>

                </tr>
            </c:forEach>
            <tr border="1">
                <td colspan="5" align="right">
                    &nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;共${totalCount}条记录&nbsp;&nbsp;共${totalPage}页&nbsp;&nbsp;
                    第${pageCur}页&nbsp;&nbsp;
                    <c:url var="url_pre" value="adminGoods/selectGoods">
                        <c:param name="pageCur" value="${pageCur - 1 }"/>
                    </c:url>
                    <c:url var="url_next" value="adminGoods/selectGoods">
                        <c:param name="pageCur" value="${pageCur + 1 }"/>
                    </c:url>
                    <!-- 第一页没有上一页 -->
                    <c:if test="${pageCur != 1 }">
                        <a href="${url_pre}">上一页</a>&nbsp;&nbsp;&nbsp;&nbsp;
                    </c:if>
                    <!-- 最后一页，没有下一页 -->
                    <c:if test="${pageCur != totalPage && totalPage != 0}">
                        <a href="${url_next}">下一页</a>
                    </c:if>
                </td>
            </tr>
        </table>
    </c:if>
</body>
</html>