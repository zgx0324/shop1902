<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
<title>中林首页</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/zhonglingxm2.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/zhonglin.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/zhongling2.js"></script>
</head>

<body id="top">

	<!--header-->
   <%@include file="top.jsp"%>
	
    <!--logo search weweima-->
    <%@include file="head.jsp"%>

	<!--nav-->
    <div class="nav-box">
    	<div class="nav-kuai w1200">
        	<div class="nav-kuaijie f-l">
            	<a href="JavaScript:;" class="kj-tit1">商品分类快捷</a>
                <div class="kuaijie-box">
                    <c:forEach items="${allCategory}" begin="0" end="5" var="categoryExt">
                	    <div class="kuaijie-info">
                    	<dl class="kj-dl1">
                        	<dt><img src="images/zl2-07.gif" /><a href="${pageContext.request.contextPath}/product/searchProduct.do?cid=${categoryExt.cid}">${categoryExt.cname}</a></dt>
                            <dd>
                                <c:forEach items="${categoryExt.categorySeconds}" begin="0" end="2" var="categorySecond" varStatus="vs">
                                    <a href="${pageContext.request.contextPath}/product/searchProduct.do?cid=${categoryExt.cid}&csid=${categorySecond.csid}">${categorySecond.csname}</a>
                                    <c:if test="${!vs.last}"><span>|</span></c:if>
                                </c:forEach>

                            </dd>
                        </dl>
                        <div class="kuaijie-con">

                        	<dl class="kj-dl2" style="display:inline-block">
                            	<dt><a href="${pageContext.request.contextPath}/product/searchProduct.do?cid=${categoryExt.cid}">${categoryExt.cname}</a></dt>
                                <dd>
                                    <c:forEach items="${categoryExt.categorySeconds}" var="categorySecond" varStatus="vs">
                                        <a href="${pageContext.request.contextPath}/product/searchProduct.do?cid=${categoryExt.cid}&csid=${categorySecond.csid}">${categorySecond.csname}</a>
                                        <c:if test="${!vs.last}"><span>|</span></c:if>
                                    </c:forEach>

                                </dd>
                            </dl>

                            <div style="clear:both;"></div>
                        </div>
                    </div>
                    </c:forEach>
                </div>
            </div>
            <ul class="nav-font f-l">
                <c:forEach items="${allCategory}" var="categoryExt" varStatus="vs" begin="0" end="7">
                    <li><a href="${pageContext.request.contextPath}/product/searchProduct.do?cid=${categoryExt.cid}">${categoryExt.cname}</a><span><img src="${vs.last?"images/zl2-05.gif":""}" /></span></li>
                </c:forEach>

                <div style="clear:both;"></div>
            </ul>
            <div style="clear:both;"></div>
        </div>
    </div>
	
    <!--banner-->
    <div class="banner">
    	<ul class="ban-ul1">
        	<li><a href="JavaScript:;"><img src="images/banner.png" /></a></li>
        	<li><a href="JavaScript:;"><img src="images/banner.png" /></a></li>
        	<li><a href="JavaScript:;"><img src="${pageContext.request.contextPath}/images/banner.png" /></a></li>
        	<li><a href="JavaScript:;"><img src="${pageContext.request.contextPath}/images/banner.png" /></a></li>
        </ul>
        <div class="ban-box w1200">
        	<ol class="ban-ol1">
            	<li class="current"></li>
            	<li></li>
            	<li></li>
            	<li></li>
               	<div style="clear:both;"></div>
            </ol>
        </div>
    </div>
    
    <!--热门推荐-->
    <div class="zl-tuijian w1200">
    	<div class="tuijian-left f-l">
        	<img src="${pageContext.request.contextPath}/images/zl2-14.png" />
        </div>
    	<ul class="tuijian-right f-l">
        	<li>
            	<div class="li-box li-box1">
                	<a href="JavaScript:;" class="li-a1">锦尚世家</a>
                	<a href="JavaScript:;" class="li-a2">锦绣花苑　传承世家</a>
                    <a href="JavaScript:;" class="li-a3">more</a>
                </div>
            </li>
        	<li>
            	<div class="li-box li-box2">
                	<a href="JavaScript:;" class="li-a1">速8快捷酒店</a>
                	<a href="JavaScript:;" class="li-a2">最大的经济型酒店</a>
                    <a href="JavaScript:;" class="li-a3">more</a>
                </div>
            </li>
        	<li>
            	<div class="li-box li-box3">
                	<a href="JavaScript:;" class="li-a1">老诚一锅羊蝎子火锅</a>
                	<a href="JavaScript:;" class="li-a2">最养生的火锅</a>
                    <a href="JavaScript:;" class="li-a3">more</a>
                </div>
            </li>
        	<li>
            	<div class="li-box li-box4">
                	<a href="JavaScript:;" class="li-a1">鹏程之家汽车店</a>
                	<a href="JavaScript:;" class="li-a2">最便宜的汽车4S店</a>
                    <a href="JavaScript:;" class="li-a3">more</a>
                </div>
            </li>
        	<li>
            	<div class="li-box li-box5">
                	<a href="JavaScript:;" class="li-a1">速8快捷酒店</a>
                	<a href="JavaScript:;" class="li-a2">最大的经济型酒店</a>
                    <a href="JavaScript:;" class="li-a3">more</a>
                </div>
            </li>
        	<li>
            	<div class="li-box li-box6">
                	<a href="JavaScript:;" class="li-a1">老诚一锅羊蝎子火锅</a>
                	<a href="JavaScript:;" class="li-a2">最养生的火锅</a>
                    <a href="JavaScript:;" class="li-a3">more</a>
                </div>
            </li>
        	<li>
            	<div class="li-box li-box7">
                	<a href="JavaScript:;" class="li-a1">鹏程之家汽车店</a>
                	<a href="JavaScript:;" class="li-a2">最便宜的汽车4S店</a>
                    <a href="JavaScript:;" class="li-a3">more</a>
                </div>
            </li>
        	<li>
            	<div class="li-box li-box8">
                	<a href="JavaScript:;" class="li-a1">鹏程之家汽车店</a>
                	<a href="JavaScript:;" class="li-a2">最便宜的汽车4S店</a>
                    <a href="JavaScript:;" class="li-a3">more</a>
                </div>
            </li>
            <div style="clear:both;"></div>
        </ul>
        <div style="clear:both;"></div>
    </div>

    
    <!--2F  餐饮娱乐-->
    <c:forEach items="${categoryExtAndProduct}" var="categoeyExt" varStatus="vs">
        <div class="zl-info w1200">
    	<div class="zl-title1" style="border-color:#FF9A02;">
        	<h3 class="title1-h3 f-l">${vs.count}F  ${categoeyExt.cname}</h3>
            <ul class="title1-ul1 title1-ul2 f-r">
                <c:forEach items="${categoeyExt.categorySeconds}" begin="0" end="5" var="csExt" varStatus="vs">
                    <li class="${vs.first?"current":""}"><a href="JavaScript:;">${csExt.csname}</a></li>
                </c:forEach>

                <div style="clear:both;"></div>
            </ul>
            <div style="clear:both;"></div>
        </div>
        <div class="zl-con">
        	<div class="zl-con-left f-l" style="background:#FBEAD0;">
            	<div class="zl-tu">
                	<img src="images/zl2-34.gif" class="zl-img" />
                </div>
                <p class="zl-lp" style="color:#FF9901;">
                    周末，嗨起来</br>
                    兄弟，躁起来
                </p>
                <ul class="zl-lhover" style=" background:#FF9A02;">
                    <c:forEach items="${categoeyExt.categorySeconds}" var="csExt" varStatus="vs">
                        <li><a href="${pageContext.request.contextPath}/product/searchProduct.do?cid=${categoeyExt.cid}&csid=${csExt.csid}">${csExt.csname}</a></li>
                    </c:forEach>

                    <div style="clear:both;"></div>
                </ul>
            </div>
        	<div class="zl-con-right f-l">
                <c:forEach items="${categoeyExt.categorySeconds}" var="csExt" varStatus="vs">
                    <ul class="zl-rul1 lihover">
                        <c:forEach items="${csExt.productList}" begin="0" end="5" var="product">
                            <li>
                                <div class="sy-tu1">
                                    <a href="商品详情（餐饮）.html"><img src="images/zl2-52.png" /></a>
                                </div>
                                <div class="sy-tit1">
                                    <a href="商品详情（餐饮）.html">${product.pName}</a>
                                </div>
                                <div class="sy-tit2">
                                    <p><a href="商品详情（餐饮）.html">￥${product.shopPrice}</a></p>
                                    <p>${product.pDesc}</p>
                                </div>
                            </li>

                        </c:forEach>
                        <div style="clear:both;"></div>
                        </ul>
                </c:forEach>
            </div>
            <div style="clear:both;"></div>
        </div>
    </div>
    </c:forEach>

    <!--底部一块-->
   <%@include file="foot.jsp"%>
    
    <!--固定右侧-->
    <ul class="youce">
    	<li class="li1">
        	<a href="index.html" class="li1-tu1"><img src="images/zl2-94.png" /></a>
            <a href="index.html" class="li1-zi1">返回首页</a>
        </li>
        <li class="li2">
        	<a href="购物车.html"><img src="images/zl2-95.png" />购</br>物</br>车</a>
        </li>
        <li class="li3">
        	<a href="#" class="li1-tu2"><img src="images/zl2-96.png" /></a>
            <a href="#" class="li1-zi2">我关注的品牌</a>
        </li>
        <li class="li3">
        	<a href="浏览记录.html" class="li1-tu2"><img src="images/zl2-97.png" /></a>
            <a href="浏览记录.html" class="li1-zi2">我看过的</a>
        </li>
        <li class="li4">
        	<a href="JavaScript:;" class="li1-tu2"><img src="images/zl2-98.gif" /></a>
            <div class="li4-ewm">
            	<a href="JavaScript:;"><img src="images/zl2-101.gif" /></a>
                <p>扫一扫</p>
            </div>
        </li>
        <li class="li3 li5">
        	<a href="#top" class="li1-tu2"><img src="images/zl2-99.gif" /></a>
            <a href="#top" class="li1-zi2">返回顶部</a>
        </li>
    </ul>
    

</body>
</html>
