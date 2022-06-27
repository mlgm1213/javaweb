<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    String path = request.getRequestURI();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path;
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN""http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <base href="<%=basePath%>">

    <title>漫步时尚广场-购物栏目</title>
    <link href="css/style.css" rel="stylesheet" type="text/css">
</head>
<body>
<!--顶部区域 start-->
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="top_line">
    <tr>
        <td bgcolor="#f7f7f7">
            <table width="1200" border="0" cellspacing="0" cellpadding="0" align="center">
                <tr>
                    <td class="padding-top"><img src="images/star.jpg">收藏 | HI，欢迎来订购 ！
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
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
<!--顶部区域 end-->
<!--logo和banner start-->
<table width="1200" border="0" cellspacing="0" cellpadding="0" align="center">
    <tr>
        <td height="95"><a href="../index.jsp"><img src="images/logo.jpg"></a></td>
        <td align="right"><img src="images/banner.jpg"></td>
    </tr>
</table>
<!--logo和banner  end-->
<!--菜单导航 start-->
<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="#ce2626">
    <tr>
        <td>
            <table width="1200" border="0" cellspacing="0" cellpadding="4" align="center" class="nav_font16">
                <tr>
                    <td width="200">&nbsp;</td>
                    <td width="80" align="center" class="nav_active"><a href="shoppingIndex.jsp" class="white">首页</a>
                    </td>
                    <td width="100" align="center"><a href="shoppingShow.jsp" class="white">最新上架</a></td>
                    <td width="100" align="center">品牌活动</td>
                    <td width="100" align="center">原厂直供</td>
                    <td width="80" align="center">团购</td>
                    <td width="100" align="center">限时抢购</td>
                    <td width="100" align="center">促销打折</td>
                    <td width="200" align="center">&nbsp;</td>
                </tr>
            </table>
        </td>
    </tr>
</table>
<!--菜单导航 end-->
<!--中间部分 start-->
<table width="1200" border="0" align="center" cellpadding="0" cellspacing="0" class="padding-top">
    <tr>
        <td width="220" valign="top"><!--购物分类 start-->

            <table width="100%" border="0" cellspacing="1" cellpadding="0" class="table1" bgcolor="#e5e4e1">
                <tr>
                    <th>女装</th>
                </tr>
                <tr>
                    <td>
                        <span class="red_dot"></span>
                        <a href="/shop/findByType?type=1&page=1">上衣</a>
                        <img src="images/arrow_r.jpg" align="right">
                    </td>
                </tr>
                <tr>
                    <td>
                        <span class="red_dot"></span>
                        <a href="/shop/findByType?type=1&page=1">下装</a>
                        <img src="images/arrow_r.jpg" align="right">
                    </td>
                </tr>
                <tr>
                    <td>
                        <span class="red_dot"></span>
                        <a href="/shop/findByType?type=1&page=1">连衣裙</a>
                        <img src="images/arrow_r.jpg" align="right">
                    </td>
                </tr>
                <tr>
                    <th>男装</th>
                </tr>
                <tr>
                    <td>
                        <span class="red_dot"></span>
                        <a href="/shop/findByType?type=2&page=1">T恤</a>
                        <img src="images/arrow_r.jpg" align="right">
                    </td>
                </tr>
                <tr>
                    <td>
                        <span class="red_dot"></span>
                        <a href="/shop/findByType?type=2&page=1">衬衫</a>
                        <img src="images/arrow_r.jpg" align="right">
                    </td>
                </tr>
                <tr>
                    <td>
                        <span class="red_dot"></span>
                        <a href="/shop/findByType?type=2&page=1">短裤</a>
                        <img src="images/arrow_r.jpg" align="right">
                    </td>
                </tr>
                <tr>
                    <th>童装</th>
                </tr>
                <tr>
                    <td>
                        <span class="red_dot"></span>
                        <a href="/shop/findByType?type=3&page=1">上衣</a>
                        <img src="images/arrow_r.jpg" align="right">
                    </td>
                </tr>
                <tr>
                    <td>
                        <span class="red_dot"></span>
                        <a href="/shop/findByType?type=3&page=1">裤子</a>
                        <img src="images/arrow_r.jpg" align="right">
                    </td>
                </tr>
                <tr>
                    <th>运动</th>
                </tr>
                <tr>
                    <td>
                        <span class="red_dot"></span>
                        <a href="/shop/findByType?type=4&page=1">运动衫</a>
                        <img src="images/arrow_r.jpg" align="right">
                    </td>
                </tr>
                <tr>
                    <td>
                        <span class="red_dot"></span>
                        <a href="/shop/findByType?type=4&page=1">运动裤</a>
                        <img src="images/arrow_r.jpg" align="right">
                    </td>
                </tr>
                <tr>
                    <td>
                        <span class="red_dot"></span>
                        <a href="/shop/findByType?type=4&page=1">跑步鞋</a>
                        <img src="images/arrow_r.jpg" align="right">
                    </td>
                </tr>
            </table>

            <!--购物分类end--></td>
        <td width="716" valign="top">
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td align="center">
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <td align="center" valign="top"><!--焦点图 start-->
                                    <img src="images/index/pic1.jpg" width="690" height="350">
                                    <!--焦点图 end--></td>
                                <td valign="top"><!--右侧start-->

                                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                        <tr>
                                            <td><!--公告 start-->

                                                <table width="100%" border="0" cellspacing="1" cellpadding="0"
                                                       bgcolor="#eeeeee">
                                                    <tr>
                                                        <td height="35" bgcolor="#f7f7f7" class="notice_title">公告</td>
                                                    </tr>
                                                    <tr>
                                                        <td bgcolor="#ffffff">
                                                            <table width="95%" border="0" align="center" cellpadding="0"
                                                                   cellspacing="0" class="padding-top">
                                                                <tr>
                                                                    <td height="30" class="notice_text"><a
                                                                            href="#"><span class="gray_dot"></span>李克强点赞网店第一村</a>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td height="30" class="notice_text"><span
                                                                            class="gray_dot"></span>网购维权有望一站解决
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td height="30" class="notice_text"><span
                                                                            class="gray_dot"></span>25国30万商品全球直供
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td height="30" class=" notice_text"><span
                                                                            class="gray_dot"></span>青岛交警淘宝体获公安部肯定
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td height="30" class=" notice_text"><span
                                                                            class="gray_dot"></span>面对新常态 惟改革创新
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td height="30" class=" notice_text"><span
                                                                            class="gray_dot"></span>差评敲诈淘宝 “差评师”获刑8个月
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                </table>

                                                <!--公告 end--></td>
                                        </tr>
                                        <tr>
                                            <td height="8"></td>
                                        </tr>
                                        <tr>
                                            <td><!--品牌推荐区 start-->

                                                <table width="100%" border="0" cellspacing="0" cellpadding="0"
                                                       bgcolor="#f7f7f7">
                                                    <tr>
                                                        <td align="center"><img src="images/index/link1.gif" width="80"
                                                                                height="35"></td>
                                                        <td align="center"><img src="images/index/link2.gif" width="80"
                                                                                height="35"></td>
                                                        <td align="center"><img src="images/index/link3.gif" width="80"
                                                                                height="35"></td>
                                                    </tr>
                                                    <tr>
                                                        <td align="center"><img src="images/index/link4.gif" width="80"
                                                                                height="35"></td>
                                                        <td align="center"><img src="images/index/link7.jpg" width="90"
                                                                                height="45"/></td>
                                                        <td align="center"><img src="images/index/link6.jpg" width="90"
                                                                                height="45"></td>
                                                    </tr>
                                                    <tr>
                                                        <td align="center"><img src="images/index/link5.jpg" width="90"
                                                                                height="45"/></td>
                                                        <td align="center"><img src="images/index/link8.jpg" width="90"
                                                                                height="45"></td>
                                                        <td align="center"><img src="images/index/link9.jpg" width="90"
                                                                                height="45"></td>
                                                    </tr>
                                                </table>

                                                <!--品牌推荐区 end--></td>
                                        </tr>
                                    </table>

                                    <!-- 右侧end--></td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <!--产品分类区start-->
                <tr>
                    <td>
                        <table width="99%" border="0" align="right" cellpadding="0" cellspacing="1" bgcolor="#dddddd">
                            <tr>
                                <td width="20%" bgcolor="#ffffff">
                                    <table width="90%" border="0" align="center" cellpadding="3" cellspacing="0">
                                        <tr>
                                            <td><img src="images/index/pro1.jpg" width="65" height="65"></td>
                                            <td class="font14">热门品类<br/>
                                                护肤彩妆启示
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">洗护套装&nbsp;&nbsp;&nbsp;&nbsp;面部精华&nbsp;&nbsp;&nbsp;&nbsp;香水
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">粉底液&nbsp;&nbsp;&nbsp;&nbsp;面霜&nbsp;&nbsp;&nbsp;&nbsp;洁面</td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">
                                                美容工具&nbsp;&nbsp;&nbsp;&nbsp;复方精油&nbsp;&nbsp;&nbsp;&nbsp;洗发水
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td width="20%" bgcolor="#ffffff">
                                    <table width="90%" border="0" align="center" cellpadding="3" cellspacing="0">
                                        <tr>
                                            <td><img src="images/index/pro2.jpg" width="65" height="65"></td>
                                            <td class="font14">强效保养<br/>
                                                逆转皮肤问题
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">隔离&nbsp;&nbsp;&nbsp;&nbsp;保湿&nbsp;&nbsp;&nbsp;&nbsp;补水&nbsp;&nbsp;&nbsp;&nbsp;清洁</td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">清爽&nbsp;&nbsp;&nbsp;&nbsp;排毒&nbsp;&nbsp;&nbsp;&nbsp;去角质</td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">美白&nbsp;&nbsp;&nbsp;&nbsp;袪痘&nbsp;&nbsp;&nbsp;&nbsp;收缩毛孔&nbsp;&nbsp;&nbsp;&nbsp;紧质</td>
                                        </tr>
                                    </table>
                                </td>
                                <td width="20%" bgcolor="#ffffff">
                                    <table width="90%" border="0" align="center" cellpadding="3" cellspacing="0">
                                        <tr>
                                            <td><img src="images/index/pro3.jpg" width="65" height="65"></td>
                                            <td class="font14"> 人气品牌<br/>
                                                最IN大牌
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2"></td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">薇姿&nbsp;&nbsp;&nbsp;&nbsp;
                                                欧莱雅&nbsp;&nbsp;&nbsp;&nbsp;
                                                美宝莲&nbsp;&nbsp;&nbsp;&nbsp;
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">SK-II&nbsp;&nbsp;&nbsp;&nbsp;
                                                百雀羚&nbsp;&nbsp;&nbsp;&nbsp;
                                                雅顿&nbsp;&nbsp;&nbsp;&nbsp;
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">美即&nbsp;&nbsp;&nbsp;&nbsp;
                                                谜尚&nbsp;&nbsp;&nbsp;&nbsp;
                                                妮维雅
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td width="20%" bgcolor="#ffffff">
                                    <table width="90%" border="0" align="center" cellpadding="3" cellspacing="0">
                                        <tr>
                                            <td><img src="images/index/pro4.jpg" width="65" height="65"></td>
                                            <td class="font14">潮流单品<br/>
                                                当季最红
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">奶浴奶膏&nbsp;&nbsp;&nbsp;&nbsp;补水凝胶&nbsp;&nbsp;&nbsp;&nbsp;
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">防装生发液&nbsp;&nbsp;&nbsp;&nbsp;假发片&nbsp;&nbsp;&nbsp;&nbsp;香水
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">艾米尔彩妆&nbsp;&nbsp;&nbsp;&nbsp;丰胸美乳霜</td>
                                        </tr>
                                    </table>
                                </td>
                                <td width="20%" bgcolor="#ffffff">
                                    <table width="90%" border="0" align="center" cellpadding="3" cellspacing="0">
                                        <tr>
                                            <td><img src="images/index/pro5.jpg" width="65" height="65"></td>
                                            <td class="font14">美装精选<br/>
                                                超赞专题
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">孕妇护肤&nbsp;&nbsp;&nbsp;&nbsp;护季保养</td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">护肤嫩白集锦&nbsp;&nbsp;&nbsp;&nbsp;快速约会妆</td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">美容时钟模式&nbsp;&nbsp;&nbsp;&nbsp;5步护肤术</td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <!-- 产品分类区end-->
            </table>
        </td>
    </tr>
</table>

<!--中间部分 end-->
<!--底部 start--><Br/>
<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="#6a6665" height="35" class="foot_bg">
    <tr>
        <td class="padding-top">
            <table width="1200" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                    <td width="20%" align="center"><img src="images/gray1.jpg"></td>
                    <td width="20%" align="center"><img src="images/gray2.jpg"></td>
                    <td width="20%" align="center"><img src="images/gray3.jpg"></td>
                    <td width="20%" align="center"><img src="images/gray4.jpg"></td>
                    <td width="20%" align="center"><img src="images/gray5.jpg"></td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td bgcolor="#efefef" class="foot_line padding-top">
            <table width="1200" border="0" cellspacing="0" cellpadding="0" align="center">
                <tr>
                    <td align="center" valign="top"><img src="images/red1.jpg"><br>
                        <img src="images/line1.jpg"/></td>
                    <td width="15%" valign="top">
                        <table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
                            <tr>
                                <td class="font16 padding-bottom">新手指导</td>
                            </tr>
                            <tr>
                                <td>用户注册</td>
                            </tr>
                            <tr>
                                <td>电话下单</td>
                            </tr>
                            <tr>
                                <td>购物流程</td>
                            </tr>
                            <tr>
                                <td>购物保障</td>
                            </tr>
                            <tr>
                                <td>服务协议</td>
                            </tr>
                        </table>
                    </td>
                    <td align="center" valign="top"><img src="images/red2.jpg"><br>
                        <img src="images/line1.jpg"/></td>
                    <td width="15%" valign="top">
                        <table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
                            <tr>
                                <td class="font16 padding-bottom">支付方式</td>
                            </tr>
                            <tr>
                                <td>货到付款</td>
                            </tr>
                            <tr>
                                <td>商城卡支付</td>
                            </tr>
                            <tr>
                                <td>支付宝、网银支付</td>
                            </tr>
                            <tr>
                                <td>优惠券抵用</td>
                            </tr>
                        </table>
                    <td align="center" valign="top"><img src="images/red3.jpg"><br>
                        <img src="images/line1.jpg"/></td>
                    <td width="15%" valign="top">
                        <table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
                            <tr>
                                <td class="font16 padding-bottom">配送方式</td>
                            </tr>
                            <tr>
                                <td>闪电发货</td>
                            </tr>
                            <tr>
                                <td>满百包邮</td>
                            </tr>
                            <tr>
                                <td>配送范围及时间</td>
                            </tr>
                            <tr>
                                <td>商品验收及签收</td>
                            </tr>
                            <tr>
                                <td>服务协议</td>
                            </tr>
                        </table>
                    </td>
                    <td align="center" valign="top"><img src="images/red4.jpg"><br>
                        <img src="images/line1.jpg"/></td>
                    <td width="15%" valign="top">
                        <table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
                            <tr>
                                <td class="font16 padding-bottom">售后服务</td>
                            </tr>
                            <tr>
                                <td>退换货协议</td>
                            </tr>
                            <tr>
                                <td>关于发票</td>
                            </tr>
                            <tr>
                                <td>退换货流程</td>
                            </tr>
                            <tr>
                                <td>退换货运费</td>
                            </tr>
                        </table>
                    </td>
                    <td align="center" valign="top"><img src="images/red5.jpg"><br>
                        <img src="images/line1.jpg"/></td>
                    <td width="15%" valign="top">
                        <table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
                            <tr>
                                <td class="font16 padding-bottom">关于帐号</td>
                            </tr>
                            <tr>
                                <td>修改个人信息</td>
                            </tr>
                            <tr>
                                <td>修改密码</td>
                            </tr>
                            <tr>
                                <td>找回密码</td>
                            </tr>
                        </table>
                    </td>
                    <td align="center" valign="top"><img src="images/red6.jpg"><br>
                        <img src="images/line1.jpg"/></td>
                    <td width="15%" valign="top">
                        <table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
                            <tr>
                                <td class="font16 padding-bottom">优惠活动</td>
                            </tr>
                            <tr>
                                <td>竞拍须知</td>
                            </tr>
                            <tr>
                                <td>抢购须知</td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td bgcolor="#efefef" align="center" class="padding-top">Copyright 2015-2020 Q- Walking Fashion E&S
            漫步时尚广场（QST教育）版权所有<Br/>
            中国青岛 高新区河东路8888号 青软教育集团 咨询热线：400-658-0166 400-658-1022<br/>
            <img src="images/foot_pic.jpg"></td>
    </tr>
</table>
<!--底部 end-->
</body>
</html>
