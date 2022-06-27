<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    String path = request.getRequestURI();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path;
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <base href="<%=basePath%>">

    <title>漫步时尚广场-购物列表</title>
    <link href="css/show.css" rel="stylesheet" type="text/css">
</head>
<body>
<!--顶部区域 start-->
<div class="top_bg">
    <div class="top_content">
        <div class="floatl"><img src="images/star.jpg">收藏 | HI，欢迎来订购 ！
            <c:choose>
                <c:when test="${sessionScope.user!=null}">
                    <span class="orange">[${sessionScope.user.user_name}]</span>
                    <a href="/user/exit" class="orange"> [注销]</a>
                </c:when>
                <c:otherwise>
                    <a href="../register/login.jsp" class="orange">[请登录]</a>
                    <a href="../register/register.html" class="orange"> [免费注册]</a>
                </c:otherwise>
            </c:choose>
        </div>
        <c:if test="${sessionScope.user!=null}">
            <div class="floatr">客户服务<img src="images/arrow.gif">&nbsp;网站导航<img src="images/arrow.gif">&nbsp;
                <div class="xl">
                    <div class="droparrow "><span class="shopcart"></span>我的购物车<span class="orange">0</span>件<img
                            src="images/arrow.gif"/></div>
                    <!--下拉菜单-->
                    <div class="dropdown">
                        <ul class="shop_pic">
                            <c:forEach items="${requestScope.gpictureList}" var="gpicture">
                                <img src="images/shopshow/${gpicture}" width="80" height="80"/>
                            </c:forEach>
                        </ul>
                    </div>
                </div>
            </div>
        </c:if>
    </div>
</div>
<!--顶部区域 end-->
<div class="clear"></div>
<!--logo和banner start-->
<div class="logo"><a href="../index.jsp"><img src="images/logo.jpg"></a><img src="images/banner.jpg" class="floatr ">
</div>
<!--logo和banner  end-->

<!--菜单导航栏 start-->
<div class="nav_bg">
    <div class="nav_content">
        <ul class="nav">
            <li><a href="shoppingIndex.jsp" class="white">首页</a></li>
            <li class="nav_active"><a href="shoppingShow.jsp" class="white">最新上架</a></li>
            <li>品牌活动</li>
            <li>原厂直供</li>
            <li>团购</li>
            <li>限时抢购</li>
            <li>促销打折</li>
        </ul>
    </div>
</div>
<!--菜单导航栏 end-->
<!--中间部分 start-->
<div class="main">
    <!--购物分类 start-->
    <ul class="menu">
        <li><span class="title">女装</span></li>
        <li><span class="red_dot"></span><a href="/shop/findByType?type=1&page=1">上衣</a><span class="right_arrow"></span></li>
        <li><span class="red_dot"></span><a href="/shop/findByType?type=1&page=1">下装</a><span class="right_arrow"></span></li>
        <li><span class="red_dot"></span><a href="/shop/findByType?type=1&page=1">连衣裙</a><span class="right_arrow"></span></li>
        <li><span class="title">男装</span></li>
        <li><span class="red_dot"></span><a href="/shop/findByType?type=2&page=1">T恤</a><span class="right_arrow"></span></li>
        <li><span class="red_dot"></span><a href="/shop/findByType?type=2&page=1">衬衫</a><span class="right_arrow"></span></li>
        <li><span class="red_dot"></span><a href="/shop/findByType?type=2&page=1">短裤</a><span class="right_arrow"></span></li>
        <li><span class="title">童装</span></li>
        <li><span class="red_dot"></span><a href="/shop/findByType?type=3&page=1">上衣</a><span class="right_arrow"></span></li>
        <li><span class="red_dot"></span><a href="/shop/findByType?type=3&page=1">裤子</a><span class="right_arrow"></span></li>
        <li><span class="title">运动</span></li>
        <li><span class="red_dot"></span><a href="/shop/findByType?type=4&page=1">运动衫</a><span class="right_arrow"></span></li>
        <li><span class="red_dot"></span><a href="/shop/findByType?type=4&page=1">运动裤</a><span class="right_arrow"></span></li>
        <li><span class="red_dot"></span><a href="/shop/findByType?type=4&page=1">跑步鞋</a><span class="right_arrow"></span></li>
    </ul>
    <!--购物分类end-->
    <!--中间区 start-->
    <div class="middle">
        <h1 class="pic_title">最新上架</h1>
        <div class="pic_list">
            <c:forEach items="${goodsList}" var="goods">
                <dl>
                    <div>
                        <a href="/shop/toDetail?gname=${goods.gname}&gid=${goods.id}&gpicture=${goods.gpicture}&amount=${goods.goprice}" target="_blank">
                        <img src="images/shopshow/${goods.gpicture}" width="150" height="180"/></a>
                    </div>
                    <dt>
                        <span class="price">￥${goods.grprice}元</span>
                        <span class="font12">${goods.sale_num}人购买</span>
                    </dt>
                    <dd>${goods.gname}</dd>
                </dl>
            </c:forEach>
        </div>
    </div>
</div>
<div>
    <a href="/shop/findByType?type=1&page=1">上一页</a>
<%--    第&nbsp;2&nbsp;页--%>
    <a href="/shop/findByType?type=1&page=2">下一页</a>
</div>
<!--中间部分 end-->
<!--底部 start-->
<div class="clear"></div>
<div class="footer">
    <div class="gotop"></div>
    <div class="foot_title">
        <ul class="foot_pic">
            <li><img src="images/gray1.jpg"></li>
            <li><img src="images/gray2.jpg"></li>
            <li><img src="images/gray3.jpg"></li>
            <li><img src="images/gray4.jpg"></li>
            <li><img src="images/gray5.jpg"></li>
        </ul>
    </div>
    <ul class="foot_list">
        <li>
            <div class="floatl">
                <p class="red1"></p>
                <p class="line1"></p>
            </div>
            <ul class="floatl">
                <li class="font16 padding-bottom">新手指导</li>
                <li>用户注册</li>
                <li>电话下单</li>
                <li>购物流程</li>
                <li>购物保障</li>
                <li>服务协议</li>
            </ul>
        </li>
        <li>
            <div class="floatl">
                <p class="red2"></p>
                <p class="line1"></p>
            </div>
            <ul class="floatl">
                <li class="font16 padding-bottom">支付方式</li>
                <li>货到付款</li>
                <li>商城卡支付</li>
                <li>支付宝、网银支付</li>
                <li>优惠券抵用</li>
            </ul>
        </li>
        <li>
            <div class="floatl">
                <p class="red3"></p>
                <p class="line1"></p>
            </div>
            <ul class="floatl">
                <li class="font16 padding-bottom">配送方式</li>
                <li>闪电发货</li>
                <li>满百包邮</li>
                <li>配送范围及时间</li>
                <li>商品验收及签收</li>
                <li>服务协议</li>
            </ul>
        </li>
        <li>
            <div class="floatl">
                <p class="red3"></p>
                <p class="line1"></p>
            </div>
            <ul class="floatl">
                <li class="font16 padding-bottom">售后服务</li>
                <li>退换货协议</li>
                <li>关于发票</li>
                <li>退换货流程</li>
                <li>退换货运费</li>
            </ul>
        </li>
        <li>
            <div class="floatl">
                <p class="red3"></p>
                <p class="line1"></p>
            </div>
            <ul class="floatl">
                <li class="font16 padding-bottom">关于帐号</li>
                <li>修改个人信息</li>
                <li>修改密码</li>
                <li>找回密码</li>
            </ul>
        </li>
        <li>
            <div class="floatl">
                <p class="red3"></p>
                <p class="line1"></p>
            </div>
            <ul class="floatl">
                <li class="font16 padding-bottom">优惠活动</li>
                <li>竞拍须知</li>
                <li>抢购须知</li>
            </ul>
        </li>
    </ul>
    <div class="clear"></div>
    <div class="foot_line"></div>
    <p align="center" class="padding-top">Copyright 2015-2020 Q- Walking Fashion E&S 漫步时尚广场（QST教育）版权所有<Br/>
        中国青岛 高新区河东路8888号 青软教育集团 咨询热线：400-658-0166 400-658-1022 </p>
    <p align="center"><img src="images/foot_pic.jpg"></p>
    <div class="clear"></div>
</div>

<!--底部 end-->
</body>
</html>
