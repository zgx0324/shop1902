<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>注册</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/shopping-mall-index.css" />
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/zhonglin.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/zhongling2.js"></script>
    <script type="text/javascript">

        $(function () {
            var userName =$("#userName");
            //ajax校驗用户名是否重复
            userName.change(function () {
                if(userName.val().trim()==""){
                   $("#userNameMsg").attr("class","cuo");
                    $("#userNameMsg").text("用户名不可为空");
                }else {
                    $.ajax({
                        url:"${pageContext.request.contextPath}/user/checkUserName.do",
                        type:"get",
                        dataType:"text",
                        data:{
                            userName: userName.val(),
                        },
                        success:function (data) {
                            if(data=="no"){
                                $("#userNameMsg").attr("class","cuo");
                                $("#userNameMsg").text("用户名不可用");

                            }else{
                                $("#userNameMsg").attr("class","dui");
                                $("#userNameMsg").text("用户名可用");
                            }
                        }
                    })
                }

            })

            //正则校验密码
            $("#passWord").change(function () {
                var num=/\d/;   //\d代表任意数字
                var char=/[a-zA-Z]/ //任意字母
                var symol=/[^0-9a-zA-Z]/ //任意符号
                if(num.test($("#passWord").val())&&char.test($("#passWord").val())&&symol.test($("#passWord").val())){

                }


            })
            //验证密码


            //更换验证码
            $("#changePic").click(function () {
                $("#img").attr("src","${pageContext.request.contextPath}/imgCode.do?msg="+Math.random());
            })

            //校验验证码
            $("#imgCode").change(function () {
                $.ajax({
                    url:"${pageContext.request.contextPath}/checkCode.do",
                    type:"get",
                    data:{
                        code:$("#imgCode").val()
                    },
                    success:function (data) {
                        if(data=="true"){
                            $("#imgCodeMsg").attr("class","dui");
                            $("#imgCodeMsg").text("验证成功");
                        }else{
                            $("#imgCodeMsg").attr("class","cuo");
                            $("#imgCodeMsg").text("验证码错误");
                        }
                    }


                })
            })

        })
        //提交注册表单
        function sub() {
            var flag = true;
            $('[name="msg"]').each(function () {
                if($(this).attr("class")=="cuo"){
                    flag=false;
                }
            })
           return flag;
        }

    </script>
</head>

<body>

<!--header-->
<div class="zl-header">
    <div class="zl-hd w1200">
        <p class="hd-p1 f-l">
            Hi!您好，欢迎来到宅客微购，请登录  <a href="注册.html">【免费注册】</a>
        </p>
        <p class="hd-p2 f-r">
            <a href="index.html">返回首页 (个人中心)</a><span>|</span>
            <a href="购物车.html">我的购物车</a><span>|</span>
            <a href="我的订单.html">我的订单</a>
        </p>
        <div style="clear:both;"></div>
    </div>
</div>


<%@include file="head.jsp"%>

<form action="${pageContext.request.contextPath}/user/doRegister.do" method="post" onsubmit="return sub()">
<!--内容开始-->
<div class="password-con registered">
    <div class="psw">
        <p class="psw-p1">用户名</p>
        <input type="text" placeholder="HR了" value="${user.userName}" id="userName" name="userName" required/>
        <span name="msg" id="userNameMsg" class="${empty userNameMsg?"":"cuo"}">${userNameMsg}</span>
    </div>
    <div class="psw">
        <p class="psw-p1">输入密码</p>
        <input type="text" placeholder="请输入密码" value="${passWord}" id="passWord" name="passWord" required/>
        <span name="msg" ></span>
    </div>
    <div class="psw">
        <p class="psw-p1">确认密码</p>
        <input type="text" placeholder="请再次确认密码" id="rePassWord" name="rePassWord" required/>
        <span name="msg" ></span>
    </div>
    <div class="psw">
        <p class="psw-p1">手机号</p>
        <input  type="text" placeholder="请输入手机" value="${user.phone}" pattern="1[3-8]\d{9}" id="phone" name="phone" required/>

    </div>

    <div class="psw">
        <p class="psw-p1">验证码</p>
        <input type="text" placeholder="请输入验证码" id="imgCode" name="imgCode" required/>
        <span name="msg" id="imgCodeMsg"></span>
    </div>
    <div class="yanzhentu">
        <div class="yz-tu f-l">
            <img id="img" src="${pageContext.request.contextPath}/imgCode.do" />
        </div>
        <p class="f-l">看不清？<a href="JavaScript:;" id="changePic">换张图</a></p>
        <div style="clear:both;"></div>
    </div>
    <div class="agreement">
        <input type="checkbox" name="hobby" required></input>
        <p>我有阅读并同意<span>《宅客微购网站服务协议》</span></p>
    </div>
    <button type="submit" class="psw-btn">立即注册</button>
    <p class="sign-in">已有账号？请<a href="#">登录</a></p>
</div>
</form>

<%@include file="foot.jsp"%>

</body>
</html>

