
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="nav-box">
    <div class="nav-kuai w1200">
        <div class="nav-kuaijie yjp-hover1 f-l">
            <a href="JavaScript:;" class="kj-tit1">商品分类快捷</a>
            <div class="kuaijie-box yjp-show1" style="display:none;">
                <c:forEach items="${allCategory}" begin="0" end="5" var="categoryExt">
                    <div class="kuaijie-info">
                        <dl class="kj-dl1">
                            <dt><img src="${pageContext.request.contextPath}/images/zl2-07.gif" /><a href="${pageContext.request.contextPath}/product/searchProduct.do?cid=${categoryExt.cid}">${categoryExt.cname}</a></dt>
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
                <li><a href="${pageContext.request.contextPath}/product/searchProduct.do?cid=${categoryExt.cid}">${categoryExt.cname}</a>
                    <c:if test="${vs.last}"><span><img src="${pageContext.request.contextPath}/images/zl2-05.gif" /></span></c:if>
                </li>
            </c:forEach>
            <div style="clear:both;"></div>
        </ul>
        <div style="clear:both;"></div>
    </div>
</div>
