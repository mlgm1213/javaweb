<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    String path = request.getRequestURI();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path;
%>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <base href="<%=basePath%>">
    <title>欢迎登录后台管理系统</title>
    <link href="css/login.css" rel="stylesheet" type="text/css"/>
    <script language="JavaScript" src="js/jquery.js"></script>
</head>

<body style="background-color:#1c77ac; background-image:url(images/light.png); background-repeat:no-repeat; background-position:center top;">
<div class="logintop"><span>您好，欢迎登录后台管理界面平台</span>
    <ul>
        <li><a href="../index.jsp">回首页</a></li>
        <li><a href="#">帮助</a></li>
        <li><a href="#">关于</a></li>
    </ul>
</div>
<div class="loginbody"><span class="systemlogo"></span>
    <div class="loginbox">
        <ul>
            <form action="/admin/login" method="post">
                <li>
                    <input name="aname" type="text" class="loginuser"/>
                </li>
                <li>
                    <input name="apwd" type="password" class="loginpwd"/>
                </li>
                <li>
                    <input name="submit" type="submit" class="loginbtn" value="登录"/>
                </li>
            </form>
        </ul>
    </div>
</div>
<div class="loginbm">Copyright 2015-2020 Q- Walking Fashion E&S 漫步时尚广场（QST教育）版权所有</div>
</body>
</html>
