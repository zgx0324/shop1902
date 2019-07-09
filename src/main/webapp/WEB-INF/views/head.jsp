<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!--logo search weweima-->
<div class="logo-search w1200">
    <div class="logo-box f-l">
        <div class="logo f-l">
            <a href="index.html" title="中林logo"><img src="${pageContext.request.contextPath}/images/zl2-01.gif" /></a>
        </div>
        <div class="shangjia f-l">
            <a href="JavaScript:;" class="shangjia-a1">[ 切换城市 ]</a>
            <a href="JavaScript:;" class="shangjia-a2">商家入口</a>
            <div class="select-city">
                <div class="sl-city-top">
                    <p class="f-l">切换城市</p>
                    <a class="close-select-city f-r" href="JavaScript:;">
                        <img src="${pageContext.request.contextPath}/images/close-select-city.gif" />
                    </a>
                </div>
            </div>
        </div>
        <div style="clear:both;"></div>
    </div>
    <div class="erweima f-r">
        <a href="JavaScript:;"><img src="${pageContext.request.contextPath}/images/zl2-04.gif" /></a>
    </div>
    <div class="search f-r">
        <div class="search-info">
            <form action="${pageContext.request.contextPath}/product/searchProduct.do?cid=${productBean.cid}&csid=${productBean.csid}" method="get">
                <input type="text" placeholder="请输入商品名称" name="pName" value="${productBean.pName}"/>
                <button type="submit">搜索</button>
            </form>
            <div style="clear:both;"></div>
        </div>
        <ul class="search-ul">
            <c:forEach items="${searchHotProducts}" var="product">
                <li><a href="${pageContext.request.contextPath}/product/productDetail.do?pid=${product.pid}&pName=${productBean.pName}">${product.pName}</a></li>
            </c:forEach>
            <div style="clear:both;"></div>
        </ul>
    </div>
    <div style="clear:both;"></div>
</div>