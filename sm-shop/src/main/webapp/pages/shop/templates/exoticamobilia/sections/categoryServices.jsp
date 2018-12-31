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
 			<a href="<c:url value="/shop/category/${category.description.friendlyUrl}.html"/>
 			<sm:breadcrumbParam categoryId="${category.id}"/>" class="<c:if test="${fn:length(category.children)>0}">dropdown-toggle</c:if>
 			 active <c:if test="${category.code==code}">currentSelectedLink</c:if>"
 			  <c:if test="${fn:length(category.children)>0}">data-toggle="dropdown"</c:if>> 
 			  <span class="name">${category.description.name}</span></a>
 
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<div class="row-exoticamobilia row">
										<c:forEach items="${requestScope.ITEMS_CAT}" var="category">
											<div class="col-sm-3" >
												<div class="white-bg object-non-visible animated object-visible">
	
                                   
													<div class="product-image">
													<c:if test="${category.categoryImage!=null}">
													<a href="<c:url value="/shop/category/" /><c:out value="${category.categoryImage}"/>.html">
													<img src="<c:url value="/resources/templates/exoticamobilia/img/"/><c:out value="${category.categoryImage}"/>" class="product-img" />
													</a>
													</c:if>
													</div>
													
										    </div>
										    </div>
										</c:forEach>
</div>  