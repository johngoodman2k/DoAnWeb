<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:useBean id="categoriesWithDetails" scope="request" type="java.util.List<beans.Category>"/>
<div class="card mb-3">
    <div class="card-header">
        <h4>Categories</h4>
    </div>
    <div class="list-group list-group-flush"  >
        <c:forEach var="c" items="${categoriesWithDetails}">
        <c:choose>
            <c:when test="${per==1}">
            <a href="${pageContext.request.contextPath}/Admin/Course/ByCat?id=${c.catID}" class="list-group-item list-group-item-action">
                <i class="fa fa-caret-right" aria-hidden="true"></i>
                    ${c.catName}
            </c:when>
                <c:otherwise>
                <a href="${pageContext.request.contextPath}/Course/ByCat?id=${c.catID}" class="list-group-item list-group-item-action">
                    <i class="fa fa-caret-right" aria-hidden="true"></i>
                        ${c.catName}
                </a>
                </c:otherwise>
        </c:choose>
        </c:forEach>
    </div>
</div>
<div class="card">
    <div class="card-header">
        <h4>Featured</h4>
    </div>
    <div class="card-body">
        <h5 class="card-title">Special title treatment</h5>
        <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
        <a href="#" class="btn btn-primary">Go somewhere</a>
    </div>
</div>