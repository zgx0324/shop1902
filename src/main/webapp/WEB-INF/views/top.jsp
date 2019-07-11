<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2019/7/10
  Time: 9:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="zl-header">
    <div class="zl-hd w1200">
        <p class="hd-p1 f-l">
            Hi! ${sessionScope.user.userName} 您好，欢迎来到宅客微购
            <c:choose>
                <c:when test="${empty sessionScope.user}">
                    ，请<a href="${pageContext.request.contextPath}/login.do">登录</a>
                    <a href="${pageContext.request.contextPath}/user/register.do">【免费注册】</a>
                </c:when>
                 <c:otherwise>
                     <a href="${pageContext.request.contextPath}/outLogin.do">【退出登录】</a>
                 </c:otherwise>
            </c:choose>


        </p>
        <p class="hd-p2 f-r">
            <a href="${pageContext.request.contextPath}/index.do">返回首页 (个人中心)</a><span>|</span>
            <a href="${pageContext.request.contextPath}/cart/toCart.do">我的购物车</a><span>|</span>
            <a href="我的订单.html">我的订单</a>

        </p>
        <div style="clear:both;"></div>
    </div>
</div>