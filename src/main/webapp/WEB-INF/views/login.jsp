<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>登录</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/shopping-mall-index.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/zhonglingxm2.css" />
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/zhonglin.js"></script>
</head>

<body>

<div class="sign-logo w1200">
    <h1 class="zl-h11"><a href="index.html" title="宅客微购"><img src="${pageContext.request.contextPath}/images/zl2-01.gif" /></a></h1>
</div>
<form action="${pageContext.request.contextPath}/doLogin.do">
<div class="sign-con w1200">
    <img src="${pageContext.request.contextPath}/images/logn-tu.gif" class="sign-contu f-l" />
    <div class="sign-ipt f-l">
        <p>用户名</p>
        <input type="text" name="userName" placeholder="手机号/邮箱" value="${cookie.userName.value}"/>
        <p>密码</p>
        <input type="text" name="passWord" placeholder="密码可见"  /><br />
        <input type="checkbox" id="remember" name="remember" style="width:15px;height: 15px"/>记住密码
        <button type="submit" class="slig-btn">登录</button>
        <p>已有账号？请<a href="#">登录</a><a href="#" class="wj">忘记密码？</a></p>
        <div class="sign-qx">
            <a href="#" class="f-r"><img src="${pageContext.request.contextPath}/images/sign-xinlan.gif" /></a>
            <a href="#" class="qq f-r"><img src="${pageContext.request.contextPath}/images/sign-qq.gif" /></a>
            <div style="clear:both;"></div>
        </div>
    </div>
    <div style="clear:both;"></div>
</div>
</form>
<%@include file="foot.jsp"%>
</body>
</html>

