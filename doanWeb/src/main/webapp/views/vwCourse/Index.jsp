
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<t:category>
    <jsp:body>
        <div class="card-header">
        <h4 class="d-flex justify-content-between" style="margin-right: 150px">
        Courses
            <a class="btn btn-outline-success" href="${pageContext.request.contextPath}/Admin/Course/Add" role="button">
                <i class="fa fa-plus" aria-hidden="true"></i>
                Add Category
            </a>
        </h4>
        </div>
        <c:choose>
            <c:when test="${courses.size() == 0}">
                <div class="card-body">
                    <p class="card-text">Không có dữ liệu.</p>
                </div>
            </c:when>
            <c:otherwise>
                <c:forEach var="c" items="${courses}">

                    <div class="categories-items-wrapper">
                    <div class="course-list-container">
                        <a href="#">
                            <div class="course-card-container course-card-large">
                                <div class="course-card-image-wrapper">
                                    <img src="${pageContext.request.contextPath}/public/imgs/sourseimgs/${c.couID}/img.jpg " width="260" height="145" class="course-card-image" alt="">
                                </div>
                                <div class="course-card-main-content course-card-has-price-text">
                                    <div class="course-card-title udlite-heading-sm" >${c.couName}</div>
                                    <p class="udlite-text-sm course-card-headline mb-1" style="font-size: 0.9rem; "> <strong>${c.tinyDes}</strong> </p>
                                    <div class="udlite-text-xs course-card-instructor-list mb-1">Tim Buchalka, Jean-Paul Roberts, Tim Buchalka's Learn Programming Academy</div>
                                    <span class="course-comparison-content-star-wrapper">
                                        <span class="udlite-star-only">Rating: 4.8 out of 1</span>
                                    <span class="star-rating-number" >${c.rating}</span>
                                    <c:choose>
                                        <c:when test="${c.rating == 5.0}">
                                            <i class="fas fa-star orange-star"></i>
                                            <i class="fas fa-star orange-star"></i>
                                            <i class="fas fa-star orange-star"></i>
                                            <i class="fas fa-star orange-star"></i>
                                            <i class="fas fa-star orange-star"></i>
                                        </c:when>
                                        <c:when test="${c.rating>=4.0 && c.rating<4.5}" >
                                            <i class="fas fa-star orange-star"></i>
                                            <i class="fas fa-star orange-star"></i>
                                            <i class="fas fa-star orange-star"></i>
                                            <i class="fas fa-star orange-star"></i>
                                        </c:when>
                                        <c:when test="${c.rating>=3.0 && c.rating<3.5}" >
                                            <i class="fas fa-star orange-star"></i>
                                            <i class="fas fa-star orange-star"></i>
                                            <i class="fas fa-star orange-star"></i>
                                        </c:when>
                                        <c:when test="${c.rating>=2.0 && c.rating<2.5}">
                                            <i class="fas fa-star orange-star"></i>
                                            <i class="fas fa-star orange-star"></i>
                                        </c:when>
                                        <c:when test="${c.rating == 1.0}">
                                            <i class="fas fa-star orange-star"></i>
                                        </c:when>
                                        <c:when test="${c.rating>=4.5 && c.rating<5.0}">
                                            <i class="fas fa-star orange-star"></i>
                                            <i class="fas fa-star orange-star"></i>
                                            <i class="fas fa-star orange-star"></i>
                                            <i class="fas fa-star orange-star"></i>
                                            <i class="fas fa-star-half-alt orange-star"></i>
                                        </c:when>
                                        <c:when test="${c.rating>=3.5 && c.rating<4.0} ">
                                            <i class="fas fa-star orange-star"></i>
                                            <i class="fas fa-star orange-star"></i>
                                            <i class="fas fa-star orange-star"></i>
                                            <i class="fas fa-star-half-alt orange-star"></i>
                                        </c:when>
                                        <c:when test="${c.rating>=2.5 && c.rating<3.0} ">
                                            <i class="fas fa-star orange-star"></i>
                                            <i class="fas fa-star orange-star"></i>
                                            <i class="fas fa-star-half-alt orange-star"></i>
                                        </c:when>
                                        <c:when test="${c.rating>=1.5 && c.rating< 2.0} ">
                                            <i class="fas fa-star orange-star"></i>
                                            <i class="fas fa-star-half-alt orange-star"></i>
                                        </c:when>
                                        <c:when test="${c.rating>=0.5 && c.rating< 1.0}  ">
                                            <i class="fas fa-star orange-star"></i>
                                            <i class="fas fa-star-half-alt orange-star"></i>
                                        </c:when>
                                        <c:when test="${c.rating<0.5 && c.rating >=0}  ">
                                        </c:when>
                                    </c:choose>
                                    <span class="pl-2 udlite-text-sm">(11,356)</span>
                                    </span>

                                    <div class="udlite-text-xs course-card-row course-card-meta-info">
                                        <span class="course-card-row">Last updated: 10 hours</span>
                                    </div>

                                    <div class="price-text-container course-card-price-text-container">
                                        <div class="price-text-price-part udlite-heading-sm">
                                            <span class="udlite-star-only">Current price</span>
                                            <span >$${c.price}</span>
                                            <span style="text-decoration:line-through" >${c.salePrice}</span>
                                        </div>
                                    </div>
                                    <div>
                                        <a class="btn btn-sm btn-outline-primary" href="${pageContext.request.contextPath}/Course/Detail?id=${c.couID}" role="button">
                                            <i class="fa fa-eye" aria-hidden="true"></i>
                                            Tìm hiểu ngay
                                        </a>
                                        <a class="btn btn-sm btn-outline-primary" href="#" role="button">
                                            <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                                            Thêm vào giỏ
                                        </a>
                                        <a class="btn btn-sm btn-outline-primary" href="${pageContext.request.contextPath}/Admin/Course/Edit?id=${c.couID}" role="button">
                                            <i class="fa fa-pencil" aria-hidden="true"></i>
                                            Edit
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                </c:forEach>
            </c:otherwise>
        </c:choose>

    </jsp:body>
</t:category>
