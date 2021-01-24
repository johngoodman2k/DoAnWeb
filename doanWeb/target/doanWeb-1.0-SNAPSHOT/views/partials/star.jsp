<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<span class="star-rating-number" >${c.rating}</span>
<c:choose>
    <c:when test="${course.rating == 5.0}">
        <i class="fas fa-star orange-star"></i>
        <i class="fas fa-star orange-star"></i>
        <i class="fas fa-star orange-star"></i>
        <i class="fas fa-star orange-star"></i>
        <i class="fas fa-star orange-star"></i>
    </c:when>
    <c:when test="${course.rating>=4.0 && course.rating<4.5}" >
        <i class="fas fa-star orange-star"></i>
        <i class="fas fa-star orange-star"></i>
        <i class="fas fa-star orange-star"></i>
        <i class="fas fa-star orange-star"></i>
    </c:when>
    <c:when test="${course.rating>=3.0 && course.rating<3.5}" >
        <i class="fas fa-star orange-star"></i>
        <i class="fas fa-star orange-star"></i>
        <i class="fas fa-star orange-star"></i>
    </c:when>
    <c:when test="${course.rating>=2.0 && course.rating<2.5}">
        <i class="fas fa-star orange-star"></i>
        <i class="fas fa-star orange-star"></i>
    </c:when>
    <c:when test="${course.rating == 1.0}">
        <i class="fas fa-star orange-star"></i>
    </c:when>
    <c:when test="${course.rating>=4.5 && course.rating<5.0}">
        <i class="fas fa-star orange-star"></i>
        <i class="fas fa-star orange-star"></i>
        <i class="fas fa-star orange-star"></i>
        <i class="fas fa-star orange-star"></i>
        <i class="fas fa-star-half-alt orange-star"></i>
    </c:when>
    <c:when test="${course.rating>=3.5 && course.rating<4.0} ">
        <i class="fas fa-star orange-star"></i>
        <i class="fas fa-star orange-star"></i>
        <i class="fas fa-star orange-star"></i>
        <i class="fas fa-star-half-alt orange-star"></i>
    </c:when>
    <c:when test="${course.rating>=2.5 && course.rating<3.0} ">
        <i class="fas fa-star orange-star"></i>
        <i class="fas fa-star orange-star"></i>
        <i class="fas fa-star-half-alt orange-star"></i>
    </c:when>
    <c:when test="${course.rating>=1.5 && course.rating< 2.0} ">
        <i class="fas fa-star orange-star"></i>
        <i class="fas fa-star-half-alt orange-star"></i>
    </c:when>
    <c:when test="${course.rating>=0.5 && course.rating< 1.0}  ">
        <i class="fas fa-star orange-star"></i>
        <i class="fas fa-star-half-alt orange-star"></i>
    </c:when>
    <c:when test="${course.rating<0.5 && course.rating >=0}  ">
    </c:when>
</c:choose>