<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">
<title>确认订单</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/shopping-mall-index.css" />
<style type="text/css">
    .userMsg{
        font-size: 16px;
        width: 600px;
    }
    .userMsg input{
        width: 500px;
    }
</style>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/zhonglin.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/zhongling2.js"></script>
</head>

<body style="position:relative;">

	<!--header-->
    <%@include file="top.jsp"%>
	
    <!--logo search weweima-->
   <%@include file="head.jsp"%>

    
    <!--内容开始-->
    <form action="${pageContext.request.contextPath}/order/toPay.do" method="post">
        <div class="payment-interface w1200">
    	<div class="pay-info">
        	<div class="info-tit">
            	<h3>选择收货地址</h3>
            </div>
            <ul class="pay-dz">
                <div style="clear:both;"></div>
            </ul>
           <p class="userMsg">收货人      ：<input type="text" name="name" value="${user.name}"></p>
           <p class="userMsg">联系方式  ：<input type="text" name="phone" value="${user.phone}"></p>
            <p class="userMsg">收货地址 ：<input type="text" name="addr" value="${user.addr}"></p>
        </div>
        <div class="pay-info">
        	<div class="info-tit" style="border-bottom:0;">
            	<h3>订单信息</h3>
            </div>
        </div>
        <div class="cart-con-info">
        	<div class="cart-con-tit" style="margin:20px 0 5px;">
                <p class="p1" style="width:400px;">
                </p>
                <p class="p4" style="width:130px;">数量</p>
                <p class="p5">单价（元）</p>
                <p class="p6" style="width:173px;">金额（元）</p>
                <p class="p7" style="margin-left: 80px">配送方式</p>
            </div>
            <c:forEach items="${cart.cartItems}" var="cartItem">
             <div class="info-mid">
                <div class="mid-tu f-l">
                	<a href="#"><img src="${pageContext.request.contextPath}/images/dai1.gif" /></a>
                </div>
                <div class="mid-font f-l" style="margin-right:40px;width: 230px;">
                	<a href="#">${cartItem.product.pName}<br />${fn:substring(cartItem.product.pDesc,0 ,15 )}...</a>
                </div>

                <div class="mid-sl f-l" style="margin:10px 54px 0px 0px;">
                	<a href="JavaScript:;" class="sl-left">-</a>
                    <input type="text" value="${cartItem.count}" />
                    <a href="JavaScript:;" class="sl-right">+</a>
                </div>
                <p class="mid-dj f-l">¥ ${cartItem.product.shopPrice}</p>
                <p class="mid-je f-l" style="margin:10px 120px 0px 0px;">¥ ${cartItem.total}</p>
                <div class="mid-chaozuo f-l">
                	<select>
                    	<option>送货上门</option>
                    	<option>快递包邮</option>
                    </select>
                </div>
                <div style="clear:both;"></div>
            </div>
            </c:forEach>
            <div class="info-heji">
            </div>
            <div class="info-tijiao">
            	<p class="p1">实付款：<span>¥${cart.subTotal}</span></p>
                <button class="btn">提交订单</button>
            </div>
        </div>
    </div>
    </form>
    <!--底部一块-->
    <%@include file="foot.jsp"%>
    

</body>
</html>
