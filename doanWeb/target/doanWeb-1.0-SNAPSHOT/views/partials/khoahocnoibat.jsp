<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:useBean id="coursesWithDetails" scope="request" type="java.util.List<beans.Course>"/>



<div class="container mt-5 mb-5 ">
    <div class="mt-4 mb-4 text-center">
        <span><i class="fas fa-medal" style="font-size: 40px ; margin-right: 10px; color:gold "></i></span>
        <span class="udlite-heading-md ">3 MOST VIEWED COURSES LAST WEEK</span>
    </div>
    <div class="owl-carousel owl-theme " >
        <c:choose>
            <c:when test="${coursesWithDetails.size() == 0}">
                <div class="card-body">
                    <p class="card-text">Không có dữ liệu.</p>
                </div>
            </c:when>
            <c:otherwise>
                <c:forEach var="c" items="${coursesWithDetails}">
                    <c:if test="${c.couID >= 19 && c.couID <=21}">

                        <div class="ml-2 mr-2 ">
                            <div class="card ">
                                <a href="${pageContext.request.contextPath}/Course/Detail?id=${c.couID}" role="button">
                                    <div class="card-image-wrapper ">
                                        <img src="${pageContext.request.contextPath}/public/imgs/sourseimgs/${c.couID}/img.jpg "  width="240 " height="135 " alt=" ">
                                    </div>
                                    <div class="card-main-content ">
                                        <div class="card-main-content-title udlite-heading-md " style="font-size: 1.2rem !important; "> ${c.couName}</div>
                                        <div class="card-main-content-instructor "> <small class="text-muted "> by
                                            <a href=" ">Mr.John dam sau</a>
                                        </small></div>
                                        <div class="card-main-content-rating ">
                                            <div class="">
                                                <span class="card-main-content-rating-text ">Rating ${c.rating}</span>
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
                                                <span class="pt-1 pl-2 ">(11,356)</span>
                                            </div>
                                        </div>
                                        <div class="card-main-content-price ">
                                            <span class="card-main-content-price-text ">$90.00</span>
                                            <span class="text-muted pl-3 " style="text-decoration: line-through; ">$189.00 </span>
                                        </div>
                                        <div class="card-main-content-banner ">Hot Deal</div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        </a>
                    </c:if>
                </c:forEach>
            </c:otherwise>
        </c:choose>


    </div>
</div>