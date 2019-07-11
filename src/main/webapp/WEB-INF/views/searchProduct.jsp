<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
<title>搜索列表页(有品牌)</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/shopping-mall-index.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/zhonglin.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/zhongling2.js"></script>
    <script type="text/javascript">
        $(function () {
            $("[name='addCart']").click(function () {
                var count = $(this).parent().prev().find("[name='count']").html();
                var pid =  $(this).parent().prev().find("[name='count']").next().val();
                $.ajax({
                    url:"${pageContext.request.contextPath}/cart/addCartItem.do",
                    type:"get",
                    dataType:"text",
                    data:{
                        pid:pid,
                        count:count
                    },
                    success:function (data) {
                        if(data!=""){
                            alert("添加成功！")
                        }
                    }
                    
                })
            })
        })
    </script>
</head>

<body>

	<!--header-->
    <%@include file="top.jsp"%>
	
    <!--logo search weweima-->
    <%@include file="head.jsp"%>

	<!--nav-->
    <%@include file="nav.jsp"%>
    
    <!--内容开始-->
    	<!--筛选结果-->
    <div class="screening-results w1200">
    	<p class="tiao">找到共 ${productBean.rowCount} 条</p>
    </div>

    

        
        <!--品牌热销-->
    <div class="brand-sales">
        <dl style="border-bottom:none;">
            <c:forEach items="${allCategory}" var="categoryExt">
                <c:if test="${categoryExt.cid==productBean.cid}">
                    <dt>${categoryExt.cname}</dt>
                    <dd>
                        <c:forEach items="${categoryExt.categorySeconds}" var="categorySecond">
                            <a style="${categorySecond.csid==productBean.csid?"color:green":""}" href="${pageContext.request.contextPath}/product/searchProduct.do?cid=${productBean.cid}&pName=${productBean.pName}&csid=${categorySecond.csid}">${categorySecond.csname}</a>
                        </c:forEach>

                    </dd>
                </c:if>
            </c:forEach>

            <div style="clear:both;"></div>
        </dl>
    </div>
    
    <!--内容↓↑-->
    <div class="shop-page-con w1200">
    	<div class="shop-pg-left f-l" style="width:215px">
            <div class="shop-left-buttom" style="margin-top:0;">
            	<div class="sp-tit1">
                    <h3>商品推荐</h3>
                </div>
                <ul class="shop-left-ul">
                	<li>
                        <div class="li-top">
                            <a href="" class="li-top-tu"><img src="${pageContext.request.contextPath}/images/sp-con-r-tu.gif" /></a>
                            <p class="jiage"><span class="sp1">￥109</span><span class="sp2">￥209</span></p>
                        </div>
                        <p class="miaoshu">德国原装进口Wurenbacher瓦伦冰黑啤5L/桶</p>
                        <div class="li-md">
                            <div class="md-l f-l">
                                <p class="md-l-l f-l" ap="">1</p>
                                <div class="md-l-r f-l">
                                    <a href="JavaScript:;" class="md-xs" at="">∧</a>
                                    <a href="JavaScript:;" class="md-xx" ab="">∨</a>
                                </div>
                                <div style="clear:both;"></div>
                            </div>
                            <div class="md-r f-l">
                                <button class="md-l-btn1">立即购买</button>
                                <button class="md-l-btn2">加入购物车</button>
                            </div>
                            <div style="clear:both;"></div>
                        </div>
                        <p class="pingjia">88888评价</p>
                        <p class="weike">微克宅购自营</p>
                    </li>
                    <li>
                        <div class="li-top">
                            <a href="#" class="li-top-tu"><img src="${pageContext.request.contextPath}/images/sp-con-r-tu.gif" /></a>
                            <p class="jiage"><span class="sp1">￥109</span><span class="sp2">￥209</span></p>
                        </div>
                        <p class="miaoshu">德国原装进口Wurenbacher瓦伦冰黑啤5L/桶</p>
                        <div class="li-md">
                            <div class="md-l f-l">
                                <p class="md-l-l f-l" ap="">1</p>
                                <div class="md-l-r f-l">
                                    <a href="JavaScript:;" class="md-xs" at="">∧</a>
                                    <a href="JavaScript:;" class="md-xx" ab="">∨</a>
                                </div>
                                <div style="clear:both;"></div>
                            </div>
                            <div class="md-r f-l">
                                <button class="md-l-btn1">立即购买</button>
                                <button class="md-l-btn2">加入购物车</button>
                            </div>
                            <div style="clear:both;"></div>
                        </div>
                        <p class="pingjia">88888评价</p>
                        <p class="weike">微克宅购自营</p>
                    </li>
                    <li>
                        <div class="li-top">
                            <a href="#" class="li-top-tu"><img src="${pageContext.request.contextPath}/images/sp-con-r-tu.gif" /></a>
                            <p class="jiage"><span class="sp1">￥109</span><span class="sp2">￥209</span></p>
                        </div>
                        <p class="miaoshu">德国原装进口Wurenbacher瓦伦冰黑啤5L/桶</p>
                        <div class="li-md">
                            <div class="md-l f-l">
                                <p class="md-l-l f-l" ap="">1</p>
                                <div class="md-l-r f-l">
                                    <a href="JavaScript:;" class="md-xs" at="">∧</a>
                                    <a href="JavaScript:;" class="md-xx" ab="">∨</a>
                                </div>
                                <div style="clear:both;"></div>
                            </div>
                            <div class="md-r f-l">
                                <button class="md-l-btn1">立即购买</button>
                                <button class="md-l-btn2">加入购物车</button>
                            </div>
                            <div style="clear:both;"></div>
                        </div>
                        <p class="pingjia">88888评价</p>
                        <p class="weike">微克宅购自营</p>
                    </li>
                </ul>
            </div>
        </div>
    	<div class="shop-pg-right f-r">
        	<div class="shop-right-cmp" style="margin-top:0;">
            	<ul class="shop-cmp-l f-l">
                	<li class="current"><a href="#">综合 ↓</a></li>
                	<li><a href="#">销量 ↓</a></li>
                	<li><a href="#">新品 ↓</a></li>
                	<li><a href="#">评价 ↓</a></li>
                    <div style="clear:both;"></div>
                </ul>
                <div class="shop-cmp-m f-l">
                	<span>价格</span><input type="text" /><span>-</span><input type="text" />
                </div>
                <div class="shop-cmp-r f-l">
                	<ul class="f-l">
                    	<li>
                        	<input type="checkbox" name="hobby" value=""></input>
                            <span>包邮</span>
                        </li>
                        <li>
                        	<input type="checkbox" name="hobby" value=""></input>
                            <span>进口</span>
                        </li>
                        <li>
                        	<input type="checkbox" name="hobby" value=""></input>
                            <span>仅显示有货</span>
                        </li>
                        <li>
                        	<input type="checkbox" name="hobby" value=""></input>
                            <span>满赠</span>
                        </li>
                        <li>
                        	<input type="checkbox" name="hobby" value=""></input>
                            <span>满减</span>
                        </li>
                        <div style="clear:both;"></div>
                    </ul>
                    <button>确定</button>
                </div>
                <div style="clear:both;"></div>
            </div>
            <div class="shop-right-con">
            	<ul class="shop-ul-tu shop-ul-tu1">
                	<c:forEach items="${productBean.list}" var="product" varStatus="vs">
                        <li style="${vs.count%4==0?"margin-right:0;":""}">
                            <div class="li-top">
                                <a href="${pageContext.request.contextPath}/product/productDetail.do?pid=${product.pid}" class="li-top-tu"><img src="${pageContext.request.contextPath}/images/sp-con-r-tu.gif" /></a>
                                <p class="jiage"><span class="sp1">￥${product.shopPrice}</span><span class="sp2">￥${product.marketPrice}</span></p>
                            </div>
                            <p class="miaoshu">${product.pName}</p>
                            <div class="li-md">
                                <div class="md-l f-l">
                                    <p class="md-l-l f-l" name="count" ap="">1</p>
                                    <input type="hidden" value="${product.pid}">
                                    <div class="md-l-r f-l">
                                        <a href="JavaScript:;" class="md-xs" at="">∧</a>
                                        <a href="JavaScript:;" class="md-xx" ab="">∨</a>
                                    </div>
                                    <div style="clear:both;"></div>
                                </div>
                                <div class="md-r f-l">
                                    <button class="md-l-btn1">立即购买</button>
                                    <button class="md-l-btn2" name="addCart">加入购物车</button>
                                </div>
                                <div style="clear:both;"></div>
                            </div>
                            <p class="pingjia">88888评价</p>
                            <p class="weike">微克宅购自营</p>
                        </li>
                    </c:forEach>


                    <div style="clear:both;"></div>
                </ul>
                
                <!--分页-->
                <div class="paging">
            	<div class="pag-left f-l">
                	<a href="${pageContext.request.contextPath}/product/searchProduct.do?cid=${productBean.cid}&pName=${productBean.pName}&csid=${productBean.csid}&pageNow=${productBean.pageNow-1>0?productBean.pageNow-1:1}" class="about left-r f-l"><</a>
                    <ul class="left-m f-l">
                        <c:choose>
                            <c:when test="${productBean.pageCount<7}">
                                <c:set var="begin" value="1"></c:set>
                                <c:set var="end" value="${productBean.pageCount}"></c:set>
                            </c:when>
                            <c:otherwise>
                                <c:set var="begin" value="${productBean.pageNow-3>0?productBean.pageNow-3:1}"></c:set>
                                <c:set var="end" value="${productBean.pageNow+3>productBean.pageCount?productBean.pageCount:productBean.pageNow+3}"></c:set>
                                <c:if test="${productBean.pageNow<3}">
                                    <c:set var="end" value="7"></c:set>
                                </c:if>
                            </c:otherwise>
                        </c:choose>
                        <c:forEach begin="${begin}" end="${end}" var="i">
                            <li class="${productBean.pageNow==i?"current":""}"><a href="${pageContext.request.contextPath}/product/searchProduct.do?cid=${productBean.cid}&pName=${productBean.pName}&csid=${productBean.csid}&pageNow=${i}">${i}</a></li>
                        </c:forEach>
                        <div style="clear:both;"></div>
                    </ul>
                	<a href="${pageContext.request.contextPath}/product/searchProduct.do?cid=${productBean.cid}&pName=${productBean.pName}&csid=${productBean.csid}&pageNow=${productBean.pageNow+1>productBean.pageCount?productBean.pageCount:productBean.pageNow+1}" class="about left-l f-l">></a>
                    <div style="clear:both;"></div>
                </div>
            	<div class="pag-right f-l">
                	<div class="jump-page f-l">
                        到第<input type="text" />页
                    </div>
                    <button class="f-l">确定</button>
                    <div style="clear:both;"></div>
                </div>
                <div style="clear:both;"></div>
            </div>
            </div>
        </div>
        <div style="clear:both;"></div>
    </div>
    
    <!--底部一块-->
    <%@include file="foot.jsp"%>
</body>
</html>
