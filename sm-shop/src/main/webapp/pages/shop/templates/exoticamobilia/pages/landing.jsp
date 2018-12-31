<%
response.setCharacterEncoding("UTF-8");
response.setHeader("Cache-Control","no-cache");
response.setHeader("Pragma","no-cache");
response.setDateHeader ("Expires", -1);
%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="/WEB-INF/shopizer-tags.tld" prefix="sm" %> 
 
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>


 <div id="shop" class="">
 
       <div style="margin-top: 0px;" class="banner center-block">
       
       	<div class="slider-area">
		<div class="slider-area">
		
		
			<div class="sy-box banner-slider"><div class="sy-slides-wrap"><div class="sy-slides-crop"><section id="home-banner" class="sy-list" style="left: 0%;">
	<article class="sy-slide horizontal useCSS sy-active" style="left: 0%;">
		<!--
		<div class="banner-text">
			<h2>
				Vintage bags</h2>
			<p>
				Summer styles available</p>
			<div class="slider-button store-btn button-link">
				<div class="store-btn-addtocart">
					<a class="more" href="#">More details</a></div>
			</div>
		</div>
                -->
		<div class="image-content">
			<img alt="text" src="/resources/templates/generic/img/banner-resized.jpg"></div>
	</article>
</section>
</div>
</div>
</div>
		</div>

	       	<c:if test="${requestScope.CONTENT['banner']!=null}">
				<sm:pageContent contentCode="banner"/>
			</c:if>

       </div>


</div>
				
			    <c:if test="${requestScope.CONTENT['homeMessage']!=null}">
			    <sm:pageContent contentCode="homeMessage"/>
		        </c:if>

        							

<div class="main">
			<c:if test="${page!=null}">
				<div id="" class="container">
	          			    <c:out value="${page.description}" escapeXml="false"/>
				</div>
			</c:if>

			
			<br/>
			<sm:shopProductGroup groupName="FEATURED_ITEM"/>
			<sm:shopProductGroup groupName="SPECIALS"/>
			
			<div id="" class="container">
			<c:if test="${requestScope.FEATURED_ITEM!=null || requestScope.SPECIALS!=null}" >							
						<!-- one div by section -->
						<c:if test="${requestScope.FEATURED_ITEM!=null}" >
							<h2 class="hTitle"><s:message code="menu.catalogue-featured" text="Featured items" /></h2>
										    <!-- Iterate over featuredItems -->
											<c:set var="ITEMS" value="${requestScope.FEATURED_ITEM}" scope="request" />
											<c:set var="FEATURED" value="true" scope="request" />
		                         			<jsp:include page="/pages/shop/templates/exoticamobilia/sections/productBox.jsp" />
						</c:if>
							<h2 class="hTitle"><s:message code="label.category" text="Services" /></h2>
											<!-- Iterate over Categories Services -->
	                         				<c:set var="ITEMS_CAT" value="${requestScope.TOP_CATEGORIES}" scope="request" />
		                         			<jsp:include page="/pages/shop/templates/exoticamobilia/sections/categoryServices.jsp" />
			</c:if>
			</div>
			
			<div class="container">
				
			</div>
		
		
</div>
</div>