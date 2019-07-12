<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">
<title>支付成功</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/shopping-mall-index.css" />
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
    <div class="payment w1200">
    	<div class="payment-hd">
        	<h3 class="success">支付成功</h3>
        </div>

            <div class="payment-bd">
                <c:forEach items="${orderExt.orderItemExts}" var="orderItemExt">
                    <dl class="dl-hd">
                        <dt><a href="#"><img src="${pageContext.request.contextPath}/images/in-matong3.gif" /></a></dt>
                        <dd>
                            <h3><a href="#">${orderItemExt.product.pName}</a></h3>
                            <P>${fn:substring(orderItemExt.product.pDesc,0,30)}...</P>
                            <p>数量：X${orderItemExt.count}</p>
                            <p style="color: red">价格：￥${orderItemExt.subtoTal}</p>
                        </dd>
                        <div style="clear:both;"></div>
                    </dl>
                </c:forEach>
                <ul class="ul-bd">
                    <li><span>促销</span><p><i>满赠</i>指定商品满1件，赠送卫欲无限 座便器配件三件套</p></li>
                    <li><span>送货至</span><p>${orderExt.addr}（包邮）</p></li>
                    <li><span>价格</span><p><i>¥${orderExt.total}</i></p></li>
                    <li><span>卖家名称</span><p>爱尚微购自营店</p></li>
                    <li><span>收货信息</span><p>${orderExt.addr}， ${orderExt.name}， ${orderExt.phone}</p></li>
                    <li><span>成交时间</span><p>${orderExt.orderTime}</p></li>
                    <li><span>订单号</span><p>${orderExt.oid}</p></li>
                </ul>
            </div>


        <div class="payment-ft">
        	<button class="btn2">我的订单</button>
        </div>
    </div>

    <!--底部一块-->
    <%@include file="foot.jsp"%>
</body>
</html>
