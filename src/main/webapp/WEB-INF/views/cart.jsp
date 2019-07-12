<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">
<title>购物车</title>
<style type="text/css">
    input[type=number] {
        -moz-appearance:textfield;
    }
    input[type=number]::-webkit-inner-spin-button,
    input[type=number]::-webkit-outer-spin-button {
        -webkit-appearance: none;
        margin: 0;
    }
</style>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/shopping-mall-index.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/zhonglin.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/zhongling2.js"></script>
<script type="text/javascript">
    $(function () {

        //直接修改购物项数量
        $("[name='count']").change(function () {
            var count = $(this).val();
            var pid = $(this).attr("id");
            if (count<1){
                $(this).val(1);
            }
            //更改购物项数量
            change(pid,count)
            var total = $("#"+pid+"total");
            var price = $("#"+pid+"price").html();
            total.html(Number(price)*Number(count));
        })

        //加减按钮修改购物项数量
        $("[name='change']").click(function () {
           var count=$(this).parent().find("[name='count']").val();
           var pid =$(this).parent().find("[name='count']").attr("id");
            //更改购物项数量
            change(pid,count)
        })

        //移除购物项
        $("[name='delCartItem']").click(function () {
            var pid = $(this).next().val();
          if(confirm("确认删除吗？")){
              $.ajax({
                  url:"${pageContext.request.contextPath}/cart/removeCartItem.do",
                  type:"get",
                  dataType:"text",
                  data:{
                      pid:pid
                  },
                  success:function (data) {
                      if(data!=""){
                          $("#subTotal").html(data);
                          $("#cartItem"+pid).remove();
                      }else {
                          alert("删除失败！")
                      }
                  }

              })
          }
        })

        //清空购物车
        $("#clear").click(function () {
            $.ajax({
                url:"${pageContext.request.contextPath}/cart/clear.do",
                type:"get",
                dataType:"text",
                data:{
                    pid:pid,
                    count:count
                },
                success:function (data) {
                    if(data!=""){
                        $("#subTotal").html(data);
                    }else {
                        alert("修改失败！")
                    }
                }

            })
        })

    })

    //更改购物项数量
    function change(pid,count) {
        $.ajax({
            url:"${pageContext.request.contextPath}/cart/changeCount.do",
            type:"get",
            dataType:"text",
            data:{
                pid:pid,
                count:count
            },
            success:function (data) {
                if(data!=""){
                    $("#subTotal").html(data);
                }else {
                    alert("修改失败！")
                }
            }

        })
    }
</script>
</head>

<body style="position:relative;">

	<!--header-->
    <%@include file="top.jsp"%>
	
    <!--logo search weweima-->
    <%@include file="head.jsp"%>

    
    <!--内容开始-->
    <div class="cart-content w1200">
    	<ul class="cart-tit-nav">
        	<li class="current"><a href="#">全部商品   ${fn:length(cart.cartItems)}</a></li>
            <div style="clear:both;"></div>
        </ul>
        <div class="cart-con-tit">
        	<p class="p1">
            	<input type="checkbox" value="" name="hobby"></input>
				<span>全选</span>
            </p>
            <p class="p2">商品信息</p>
            <p class="p4">数量</p>
            <p class="p5">单价（元）</p>
            <p class="p6">金额（元）</p>
            <p class="p7">操作</p>
        </div>
        <c:forEach items="${cart.cartItems}" var="cartItem">
            <div class="cart-con-info" id="cartItem${cartItem.product.pid}">
        	<div class="info-top">
            	<input type="checkbox" value="" name="hobby"></input>
				<span>商家：向东服饰专卖店</span>
            </div>
            <div class="info-mid">
            	<input type="checkbox" value="" name="hobby" class="mid-ipt f-l"></input>
                <div class="mid-tu f-l">
                	<a href="#"><img src="${pageContext.request.contextPath}/images/dai1.gif" /></a>
                </div>
                <div class="mid-font f-l" style="width: 230px">
                	<a href="#">${cartItem.product.pName}<br />${fn:substring(cartItem.product.pDesc,0,15)}...</a>
                    <span>满赠</span>
                </div>
                <div class="mid-sl f-l">
                	<a href="JavaScript:;" class="sl-left" name="change">-</a>
                    <input type="number" id="${cartItem.product.pid}" name="count" value="${cartItem.count}" />
                    <a href="JavaScript:;" class="sl-right" name="change">+</a>
                </div>
                <p class="mid-dj f-l">¥ <span id="${cartItem.product.pid}price">${cartItem.product.shopPrice}</span></p>
                <p class="mid-je f-l">¥ <span id="${cartItem.product.pid}total">${cartItem.total}</span></p>
                <div class="mid-chaozuo f-l">
                    <a href="JavaScript:;" name="delCartItem">删除</a>
                    <input type="hidden" value="${cartItem.product.pid}"/>
                </div>
                <div style="clear:both;"></div>
            </div>
        </div>
        </c:forEach>
        <!--分页-->
       	<div class="cart-con-footer">
        	<div class="quanxuan f-l">
            	<input type="checkbox" value="" name="hobby"></input>
                <span>全选</span>
                <a href="JavaScript:;" id="clear">清空购物车</a>
                <a href="#">加入收藏夹</a>
                <p>（此处始终在屏幕下方）</p>
            </div>
            <div class="jiesuan f-r">
            	<div class="jshj f-l">
                	<p>合计（不含运费）</p>
                	<p class="jshj-p2">
                    	￥：<span id="subTotal">${cart.subTotal}</span>
                    </p>
                </div>
            	<a href="${pageContext.request.contextPath}/order/toConfirmOrder.do" class="js-a1 f-l">结算</a>
                <div style="clear:both;"></div>
            </div>
            <div style="clear:both;"></div>
        </div>
    </div>
    
    <!--底部一块-->
    <%@include file="foot.jsp"%>
</body>
</html>
