<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
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

    <title>用户登录-Q-Walking E&S</title>
    <link href="css/register.css" rel="stylesheet" type="text/css">
</head>
<body>
<!--logo和banner start-->
<table width="1200" border="0" cellspacing="0" cellpadding="0" align="center">
    <tr>
        <td height="95"><img src="images/logo.jpg"></td>
        <td align="right"><img src="images/banner.jpg"></td>
    </tr>
</table>
<!--logo和banner  end-->
<!--菜单导航 start-->
<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="#ce2626">
    <tr>
        <td>
            <table width="1200" border="0" cellspacing="0" cellpadding="4" align="center" class="nav_font16"
                   height="40">
                <tr>
                    <td width="200">&nbsp;</td>
                    <td width="80" align="center">首页</td>
                    <td width="100" align="center">最新上架</td>
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

<!--注册部分 start-->
<table width="100%" border="0" cellspacing="0" cellpadding="0"
       bgcolor="#f8f8f8">
    <tr>
        <td>
            <table width="1000" border="0" cellspacing="0" cellpadding="0"
                   bgcolor="#ffffff" align="center">
                <tr>
                    <td valign="top"><h2 align="center">用户登录</h2>
                        <hr width="90%" align="center" color="#ccc"/>
                    </td>
                    <td width="420" rowspan="2" valign="middle">
                        <img src="images/zhuce_pic.jpg" align="right"/></td>
                </tr>
                <tr>
                    <td valign="top">
                        <form action="/user/login" method="post">
                            <table width="90%" border="0" cellspacing="0" cellpadding="0"
                                   class="reg" align="center">
                                <tr>
                                    <td width="80">用户名：</td>
                                    <td><input name="user_name" type="text" id="user_name"/></td>
                                </tr>
                                <tr>
                                    <td>密码：</td>
                                    <td><input name="user_pwd" type="password" id="user_pwd"/></td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>
                                        <input type="submit" name="button" value="登录"/>
                                        <a href="/static/register/register.html">&nbsp;&nbsp;&nbsp;新用户注册</a>
                                    </td>
                                </tr>
                            </table>
                        </form>
                    </td>
                </tr>
            </table>
            <!--三大模块图片-->
            <table width="1000" border="0" cellspacing="0" cellpadding="0" align="center" bgcolor="#FFFFFF"
                   class="padding-bottom">
                <tr>
                    <td align="center"><a href="#"><img src="images/shop.jpg" class="bian"/></a></td>
                    <td align="center"><a href="#"><img src="images/movie.jpg" class="bian"/></a></td>
                    <td align="center"><a href="#"><img src="images/food.jpg" class="bian"/></a></td>
                </tr>
            </table>
        </td>
    </tr>
</table>

<!--注册部分 end-->

<!--底部 start-->
<table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="#6a6665">
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
