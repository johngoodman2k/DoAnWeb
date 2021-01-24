<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<jsp:useBean id="course" scope="request" type="beans.Course"/>


<t:navandbelow>
    <jsp:body>
        <div class="container-fluid top-container ">
            <div class="container">
                <div class="row">
                    <div class="col">

                        <div class="top-container-content">
                            <div class="">
                                <div class="topic-menu udlite-breadcrumb">
                                    <a class="topic-menu-link" href="${pageContext.request.contextPath}/Home">Home</a>
                                    <span>
                                <i class="fas fa-arrow-right topic-menu-icon"></i>
                                    </span>
                                    <a class="topic-menu-link" href="${pageContext.request.contextPath}/Course/ByCat?id=${course.catID}">Category</a>
                                </div>
                            </div>
                            <div class="">
                                <h1 class="udlite-heading-md top-container-content-heading">${course.couName}</h1>
                            </div>
                            <div class="udlite-text-md">
                                ${course.tinyDes}
                            </div>

                            <div class="card-main-content-rating ">
                                <span class="card-main-content-rating-text ">Rating ${course.rating}
                                    <span><jsp:include page="../partials/star.jsp"/></span>
                                    <span class="pt-1 pl-2 " style="color: white">(11,356)</span>
                                </span>
                            </div>
                            </br>
                            </br>
                            <div class="card-main-content-price ">
                                <span class="card-main-content-price-text-1 ">$${course.price}</span>
                                <span class="text-muted pl-3 " style="text-decoration: line-through; ">$${course.salePrice} </span>
                            </div>
                            <div class="top-menu-lastupdate-desktop">
                                <div>
                                    <span><i class="fas fa-exclamation-circle"></i></span>
                                    <span class="pr-4">Last updated 1/2021</span>
                                    <span><i class="fas fa-globe"></i></span>
                                    <span>VietNam</span>
                                </div>

                            </div>

                            <div class="pb-5 pt-2">
                                <div class="card-main-content-banner ">Hot Deal</div>

                                <span class="pl-3 ">
                                <a href="${pageContext.request.contextPath}/Course/ByCat?id=${course.catID}" type="button" class="btn btn-outline-light" >Wishlist
                                    <i class="fas fa-heart pl-2"></i>
                                </a>
                            </span>

                                <span class="pl-3 pr-3">
                                <a href="${pageContext.request.contextPath}/Course/ByCat?id=${course.catID}" type="button" class="btn btn-outline-light">Add to Cart
                                    <i class="fas fa-cart-plus pl-2"></i>
                                </a>
                            </span>
                                <span>
                                <a href="${pageContext.request.contextPath}/Course/ByCat?id=${course.catID}" type="button" class="btn btn-outline-light">Share
                                    <i class="far fa-share-square pl-2"></i>
                                </a>
                            </span>
                            </div>
                        </div>

                    </div>
                    <div class="col">
                        <div class="course-card-image-wrapper">
                            <img src="${pageContext.request.contextPath}/public/imgs/sourseimgs/${course.couID}/img.jpg " width="570" height="400" class="w-100 d-block" alt="">
                        </div>

                    </div>
                </div>

            </div>
        </div>
        </div>

        <div class="container pt-4">
            <div class="course-landing-page__topic-menu component-margin">
                <div class=course-landing-content>
                    <h2 class="course-landing-content-heading udlite-heading-xl">What you'll learn</h2>
                    <div class="course-landing-content-wrapper">
                        ${course.preview}
                    </div>
                </div>

                </div>

            </div>

        </div>


        <div class="container ">
            <div class="course-landing-page__topic-menu component-margin">
                <h2 class="udlite-heading-xl">Courses Content</h2>
                <div class="curriculum-sub-header">
                    <div class="udlite-text-sm">
                    <span class="curriculum-sub-header-content">
                        20 sections • 120 lectures •
                        <span>20h&nbsp;3m
                            <span>total length</span>
                    </span>
                    </span>
                    </div>

                </div>

                    <div class="">
                        <div class="tab-content" id="nav-tabContent">
                            <div class="tab-panel-content">
                                <div class="row">
                                    <div class="col-8">
                                        <ul class="list-unstyled">
                                            <li>
                                                <div class="udlite-text-sm udlite-block-list udlite-block-list-item udlite-block-list-item-neutral udlite-block-list-item-tight">
                                                    <div class="udlite-block-list-content">
                                                    <span class="udlite-block-list-content-text ">
                                                        <i class="far fa-file pr-3"></i> Auto Welcome Messages
                                                    </span>
                                                    </div>
                                                </div>
                                            </li>

                                            <li>
                                                <div class="udlite-text-sm udlite-block-list udlite-block-list-item udlite-block-list-item-neutral udlite-block-list-item-tight">
                                                    <div class="udlite-block-list-content">
                                                    <span class="udlite-block-list-content-text ">
                                                        <i class="fas fa-play pr-3"></i> <a href="">Course Introduction</a>
                                                    </span>
                                                    </div>
                                                </div>
                                            </li>

                                            <li>
                                                <div class="udlite-text-sm udlite-block-list udlite-block-list-item udlite-block-list-item-neutral udlite-block-list-item-tight">
                                                    <div class="udlite-block-list-content">
                                                    <span class="udlite-block-list-content-text ">
                                                        <i class="fas fa-play pr-3"></i> <a href="">Course Curriculum Overview</a>
                                                    </span>
                                                    </div>
                                                </div>
                                            </li>

                                            <li>
                                                <div class="udlite-text-sm udlite-block-list udlite-block-list-item udlite-block-list-item-neutral udlite-block-list-item-tight">
                                                    <div class="udlite-block-list-content">
                                                    <span class="udlite-block-list-content-text ">
                                                        <i class="fas fa-play pr-3"></i> <a href="">Why Python?</a>
                                                    </span>
                                                    </div>
                                                </div>
                                            </li>

                                            <li>
                                                <div class="udlite-text-sm udlite-block-list udlite-block-list-item udlite-block-list-item-neutral udlite-block-list-item-tight">
                                                    <div class="udlite-block-list-content">
                                                    <span class="udlite-block-list-content-text ">
                                                        <i class="far fa-file pr-3"></i> Course FAQs
                                                    </span>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="col text-right">
                                        <ul class="list-unstyled">
                                            <li>
                                                <div class="udlite-block-list-content-text">0:44</div>
                                            </li>

                                            <li>
                                                <div class="udlite-block-list-content-text">4:34</div>
                                            </li>

                                            <li>
                                                <div class="udlite-block-list-content-text">5:43</div>
                                            </li>

                                            <li>
                                                <div class="udlite-block-list-content-text">2:27</div>
                                            </li>

                                            <li>
                                                <div class="udlite-block-list-content-text">3:14</div>
                                            </li>
                                        </ul>
                                    </div>

                        <div class="tab-pane fade" id="list-profile" role="tabpanel" aria-labelledby="list-profile-list">...</div>
                        <div class="tab-pane fade" id="list-messages" role="tabpanel" aria-labelledby="list-messages-list">...</div>
                        <div class="tab-pane fade" id="list-settings" role="tabpanel" aria-labelledby="list-settings-list">...</div>
                    </div>
                </div>
            </div>
        </div>
        </div>

        <div class="container ">
            <div class="course-landing-page__topic-menu component-margin">
                <h2 class="udlite-heading-xl">Description</h2>

                ${course.fullDes}
            </div>

        </div>

<%--        <div class="container ">--%>
<%--            <div class="course-landing-page__topic-menu component-margin">--%>
<%--                <h2 class="udlite-heading-xl">Student also bought</h2>--%>
<%--        <div>--%>
<%--            <c:choose>--%>
<%--                <c:when test="${coursesS.size() == 0}">--%>
<%--                    <div class="card-body">--%>
<%--                        <p class="card-text">Không có dữ liệu.</p>--%>
<%--                    </div>--%>
<%--                </c:when>--%>
<%--                <c:otherwise>--%>
<%--&lt;%&ndash;                    <c:when test="${courses.size() <= 5}">&ndash;%&gt;--%>
<%--&lt;%&ndash;                        <c:forEach var="c" items="${courses}">&ndash;%&gt;--%>
<%--&lt;%&ndash;                            <div class="course-comparison-content-container">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                <div>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                    <div class="course-comparison-content-wrapper">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                        <div class="course-landing-content-main">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                            <a href="" class="course-landing-content-main-title heading-md">${c.couName}</a>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                            <div class="course-landing-content-main-infor">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                                <div class="d-flex align-items-center">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                                    <span class="course-landing-content-main-infor-time">63.5 total hours &nbsp;</span>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                                    <span>Updated 1/2021</span>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                                </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                            </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                        </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                        <div class="course-comparison-content">&ndash;%&gt;--%>
<%--&lt;%&ndash;                            <span class="course-comparison-content-star-wrapper">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                <span class="udlite-star-only">Rating: 4.8 out of 1</span>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                <span class="star-rating-number">${c.rating}</span>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                <i class="fas fa-star star-color"></i>&ndash;%&gt;--%>
<%--&lt;%&ndash;                            </span>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                            <span class="course-comparison-content-numberstudent udlite-text-sm">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                <i class="fas fa-user mr-2 mt-1"></i>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                <span>25,765</span>&ndash;%&gt;--%>
<%--&lt;%&ndash;                            </span>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                            <div class="course-comparison-pricetext-container">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                                <div class="udlite-heading-sm course-comparison-discount-price price-text">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                                    <span class="udlite-star-only">Current Price</span>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                                    <span>${c.price}$</span>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                                </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                                <div>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                                    <div class="course-comparison-pricetext-container">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                                        <div class=" course-comparison-original-price ogprice-text">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                                            <span class="udlite-star-only">Origina Price</span>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                                            <span>${c.salePrice}$</span>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                                        </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                                    </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                                </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                            </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                        </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                        <div class="course-comparison-image-wrapper">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                            <img src="imgs/11.jpg" class="" width="64" height="64" alt="">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                        </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                        <a href="#" class="course-comparison-whole-card-link"></a>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                    </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;                            </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;                        </c:forEach>&ndash;%&gt;--%>
<%--&lt;%&ndash;                    </c:when>&ndash;%&gt;--%>
<%--                </c:otherwise>--%>
<%--            </c:choose>--%>
<%--        </div>--%>




        <div class="container ">
            <div class="course-landing-page__topic-menu component-margin">
                <div class="style-instructors">
                    <h2 class="udlite-heading-xl">Instructor</h2>
                    <div class="instructor-wrapper">
                        <span class="in-page-offset-anchor"></span>
                        <div>
                            <div class="udlite-heading-lg instructor-heading">
                                <a href="">Mr.Khang Dam Truoc</a>
                            </div>
                            <div class="instructor-job-title udlite-text-md">Head of Data Science, Pierian Data Inc.</div>
                        </div>
                        <div class="instructor-image">
                            <a href="" class="instructor-image-link">
                                <img src="imgs/khang.jpg" class="instructor-image-and-stats udlite-avatar-image udlite-avatar" width="64" height="64" alt="">
                            </a>
                            <ul class="list-unstyled">
                                <li>
                                    <div class="udlite-text-sm udlite-block-list udlite-block-list-item udlite-block-list-item-neutral udlite-block-list-item-tight">
                                        <div class="udlite-block-list-content">
                                        <span class="udlite-block-list-content-text"><i class="fas fa-star udlite-block-list-icon-gold"></i>
                                            4.6 Instructor Rating
                                        </span>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="udlite-text-sm udlite-block-list udlite-block-list-item udlite-block-list-item-neutral udlite-block-list-item-tight">
                                        <div class="udlite-block-list-content">
                                        <span class="udlite-block-list-content-text"><i class="fas fa-medal udlite-block-list-icon-gold"></i>
                                            1,699,985 Reviews
                                        </span>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="udlite-text-sm udlite-block-list udlite-block-list-item udlite-block-list-item-neutral udlite-block-list-item-tight">
                                        <div class="udlite-block-list-content">
                                        <span class="udlite-block-list-content-text"><i class="fas fa-user-friends udlite-block-list-icon-gold"></i>
                                            12,142,645 Students
                                        </span>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="udlite-text-sm udlite-block-list udlite-block-list-item udlite-block-list-item-neutral udlite-block-list-item-tight">
                                        <div class="udlite-block-list-content">
                                        <span class="udlite-block-list-content-text"><i class="fas fa-play-circle udlite-block-list-icon-gold"></i>
                                            20 Courses
                                        </span>
                                        </div>
                                    </div>
                                </li>

                            </ul>
                        </div>

                        <div class="show-more-container">
                            <span id="" data-type="checkbox" data-checked style="display: none;"></span>

                            <div>
                                <div class="udlite-text-sm instructor-description">
                                    <p> Khang Dam Truoc has a BS and MS in Mechanical Engineering from UTE University and years of experience as a professional instructor and trainer for Data Science and programming. He has publications and patents in various
                                        fields such as microfluidics, materials science, and data science technologies. Over the course of his career he has developed a skill set in analyzing data and he hopes to use his experience in teaching and data science
                                        to help other people learn the power of programming the ability to analyze data, as well as present the data in clear and beautiful visualizations. Currently he works as the Head of Data Science for Pierian Data Inc.
                                        and provides in-person data science and python programming training courses to employees working at top companies, including General Electric, Cigna, The New York Times, Credit Suisse, McKinsey and many more. Feel free
                                        to contact him on LinkedIn for more information on in-person training sessions or group training sessions in Las Vegas, NV.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="container ">
            <div class="course-landing-page__topic-menu component-margin">
                <h2 class="udlite-heading-xl">Student feedback</h2>
                <div class="ratings-and-reviews">
                    <div class="m-3">
                        <div class="review-summary-widget-container">
                            <div class="udlite-heading-xxxl review-summary-widget-number">4.6
                                <div class="review-summary-widget-stars mr-2">
                                <span class="star-rating-wrapper ">

                                    <i class="fas fa-star star-rating-style"></i>
                                    <i class="fas fa-star star-rating-style"></i>
                                    <i class="fas fa-star star-rating-style"></i>
                                    <i class="fas fa-star star-rating-style"></i>
                                    <i class="fas fa-star-half-alt star-rating-style"></i>
                                </span>
                                </div>
                                <div class="udlite-heading-sm">Course Rating</div>
                            </div>

                            <div class="review-summary-widget-rates">
                                <button class="udlite-btn udlite-btn-small udlite-btn-link udlite-heading-xs review-summary-widget-rates-row">
                                <span class="review-summary-widget-rate-gauge">
                                    <span class="review-summary-widget-rate-gauge-bg">
                                        <span class="review-summary-widget-rate-gauge-fill" style="width: 54%;"></span>
                                    </span>
                                </span>

                                    <span class="star-rating-wrapper ">
                                    <i class="fas fa-star star-rating-style star-color"></i>
                                    <i class="fas fa-star star-rating-style star-color"></i>
                                    <i class="fas fa-star star-rating-style star-color"></i>
                                    <i class="fas fa-star star-rating-style star-color"></i>
                                    <i class="fas fa-star star-rating-style star-color"></i>
                                </span>

                                    <span class="udlite-text-sm review-summary-widget-rate-percent">
                                    <span>54%</span>
                                </span>
                                </button>

                                <button class="udlite-btn udlite-btn-small udlite-btn-link udlite-heading-xs review-summary-widget-rates-row">
                                <span class="review-summary-widget-rate-gauge">
                                    <span class="review-summary-widget-rate-gauge-bg">
                                        <span class="review-summary-widget-rate-gauge-fill" style="width: 24%;"></span>
                                    </span>
                                </span>

                                    <span class="star-rating-wrapper ">
                                    <i class="fas fa-star star-rating-style star-color"></i>
                                    <i class="fas fa-star star-rating-style star-color"></i>
                                    <i class="fas fa-star star-rating-style star-color"></i>
                                    <i class="fas fa-star star-rating-style star-color"></i>
                                    <i class="far fa-star star-rating-style "></i>
                                </span>

                                    <span class="udlite-text-sm review-summary-widget-rate-percent">
                                    <span>24%</span>
                                </span>
                                </button>

                                <button class="udlite-btn udlite-btn-small udlite-btn-link udlite-heading-xs review-summary-widget-rates-row">
                                <span class="review-summary-widget-rate-gauge">
                                    <span class="review-summary-widget-rate-gauge-bg">
                                        <span class="review-summary-widget-rate-gauge-fill" style="width: 4%;"></span>
                                    </span>
                                </span>

                                    <span class="star-rating-wrapper ">
                                    <i class="fas fa-star star-rating-style star-color"></i>
                                    <i class="fas fa-star star-rating-style star-color"></i>
                                    <i class="fas fa-star star-rating-style star-color"></i>
                                    <i class="far fa-star star-rating-style "></i>
                                    <i class="far fa-star star-rating-style "></i>
                                </span>

                                    <span class="udlite-text-sm review-summary-widget-rate-percent">
                                    <span>4%</span>
                                </span>
                                </button>


                                <button class="udlite-btn udlite-btn-small udlite-btn-link udlite-heading-xs review-summary-widget-rates-row">
                                <span class="review-summary-widget-rate-gauge">
                                    <span class="review-summary-widget-rate-gauge-bg">
                                        <span class="review-summary-widget-rate-gauge-fill" style="width: 2%;"></span>
                                    </span>
                                </span>

                                    <span class="star-rating-wrapper ">
                                    <i class="fas fa-star star-rating-style star-color"></i>
                                    <i class="fas fa-star star-rating-style star-color"></i>
                                    <i class="far fa-star star-rating-style "></i>
                                    <i class="far fa-star star-rating-style "></i>
                                    <i class="far fa-star star-rating-style "></i>
                                </span>

                                    <span class="udlite-text-sm review-summary-widget-rate-percent">
                                    <span>2%</span>
                                </span>
                                </button>


                                <button class="udlite-btn udlite-btn-small udlite-btn-link udlite-heading-xs review-summary-widget-rates-row">
                                <span class="review-summary-widget-rate-gauge">
                                    <span class="review-summary-widget-rate-gauge-bg">
                                        <span class="review-summary-widget-rate-gauge-fill" style="width: 0.2%;"></span>
                                    </span>
                                </span>

                                    <span class="star-rating-wrapper ">
                                    <i class="fas fa-star star-rating-style star-color"></i>
                                    <i class="far fa-star star-rating-style "></i>
                                    <i class="far fa-star star-rating-style "></i>
                                    <i class="far fa-star star-rating-style "></i>
                                    <i class="far fa-star star-rating-style "></i>
                                </span>

                                    <span class="udlite-text-sm review-summary-widget-rate-percent">
                                    <span>0.2%</span>
                                </span>
                                </button>
                            </div>

                        </div>

                    </div>

                    <div class="mb-2">
                        <h2 class="udlite-heading-xl ">Reviews</h2>
                    </div>
                    <div>
                        <div>
                            <div class="reviews-section-review-container">
                                <div class="individual-review">
                                    <div class="individual-review-author-avatar">
                                        <div class="udlite-avatar udlite-heading-md" style="width: 4.8rem; height: 4.8rem; background: rgb(40, 150, 169);">SH</div>
                                    </div>
                                    <div class="individual-review-content">
                                        <div class="individual-review-content-name-container">
                                            <div class="udlite-heading-sm individual-review-content-name"> Son Heung Min</div>
                                        </div>
                                        <div class="individual-review-detail">
                                        <span class="star-rating-wrapper ">
                                            <i class="fas fa-star star-rating-style star-color"></i>
                                            <i class="fas fa-star star-rating-style star-color"></i>
                                            <i class="fas fa-star star-rating-style star-color"></i>
                                            <i class="fas fa-star star-rating-style star-color"></i>
                                            <i class="fas fa-star star-rating-style star-color"></i>
                                        </span>

                                            <span class="udlite-text-sm individual-review-detail-time">2 weeks ago</span>
                                        </div>
                                        <div class="review-show-more-container">
                                            <span></span>
                                            <div class="review-show-more-content" style="max-height: 100px;">
                                                <div>
                                                    <div class="udlite-text-sm" style="color: #3c3b37;">
                                                        <p>I must say I love the course Jose actually went from very basic right up to advance topics, One thing which i would like to ask Jose to improve is Final Capstone Project section, Instead of letting us
                                                            choose from if there is one provided with the solution that would be great</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="individual-review-feedback">
                                            <div>
                                                <p class="individual-review-feedback-title"> Was this review helpful?</p>
                                                <div class="review-feedback-actions">
                                                    <button class="udlite-btn udlite-btn-medium udlite-btn-icon-round udlite-btn-secondary udlite-btn-icon-medium udlite-btn-icon udlite-text-md  review-feedback-actions-thumb-up">
                                                        <i class="far fa-thumbs-up" ></i>
                                                    </button>

                                                    <button class="udlite-btn udlite-btn-medium udlite-btn-icon-round udlite-btn-secondary udlite-btn-icon-medium udlite-btn-icon udlite-text-md  review-feedback-actions-thumb-up">
                                                        <i class="far fa-thumbs-down" ></i>
                                                    </button>

                                                    <button class="udlite-btn-ghost udlite-btn-medium udlite-btn udlite-text-sm">
                                                        <span>Report</span>
                                                    </button>
                                                </div>
                                            </div>
                                        </div>


                                    </div>
                                </div>
                            </div>

                            <div class="reviews-section-review-container">
                                <div class="individual-review">
                                    <div class="individual-review-author-avatar">
                                        <div class="udlite-avatar udlite-heading-md" style="width: 4.8rem; height: 4.8rem; background: rgb(40, 150, 169);">SH</div>
                                    </div>
                                    <div class="individual-review-content">
                                        <div class="individual-review-content-name-container">
                                            <div class="udlite-heading-sm individual-review-content-name"> Son Heung Min</div>
                                        </div>
                                        <div class="individual-review-detail">
                                        <span class="star-rating-wrapper ">
                                            <i class="fas fa-star star-rating-style star-color"></i>
                                            <i class="fas fa-star star-rating-style star-color"></i>
                                            <i class="fas fa-star star-rating-style star-color"></i>
                                            <i class="fas fa-star star-rating-style star-color"></i>
                                            <i class="fas fa-star star-rating-style star-color"></i>
                                        </span>

                                            <span class="udlite-text-sm individual-review-detail-time">2 weeks ago</span>
                                        </div>
                                        <div class="review-show-more-container">
                                            <span></span>
                                            <div class="review-show-more-content" style="max-height: 100px;">
                                                <div>
                                                    <div class="udlite-text-sm" style="color: #3c3b37;">
                                                        <p>I must say I love the course Jose actually went from very basic right up to advance topics, One thing which i would like to ask Jose to improve is Final Capstone Project section, Instead of letting us
                                                            choose from if there is one provided with the solution that would be great</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="individual-review-feedback">
                                            <div>
                                                <p class="individual-review-feedback-title"> Was this review helpful?</p>
                                                <div class="review-feedback-actions">
                                                    <button class="udlite-btn udlite-btn-medium udlite-btn-icon-round udlite-btn-secondary udlite-btn-icon-medium udlite-btn-icon udlite-text-md  review-feedback-actions-thumb-up">
                                                        <i class="far fa-thumbs-up" ></i>
                                                    </button>

                                                    <button class="udlite-btn udlite-btn-medium udlite-btn-icon-round udlite-btn-secondary udlite-btn-icon-medium udlite-btn-icon udlite-text-md  review-feedback-actions-thumb-up">
                                                        <i class="far fa-thumbs-down" ></i>
                                                    </button>

                                                    <button class="udlite-btn-ghost udlite-btn-medium udlite-btn udlite-text-sm">
                                                        <span>Report</span>
                                                    </button>
                                                </div>
                                            </div>
                                        </div>


                                    </div>
                                </div>
                            </div>

                            <div class="reviews-section-review-container">
                                <div class="individual-review">
                                    <div class="individual-review-author-avatar">
                                        <div class="udlite-avatar udlite-heading-md" style="width: 4.8rem; height: 4.8rem; background: rgb(40, 150, 169);">SH</div>
                                    </div>
                                    <div class="individual-review-content">
                                        <div class="individual-review-content-name-container">
                                            <div class="udlite-heading-sm individual-review-content-name"> Son Heung Min</div>
                                        </div>
                                        <div class="individual-review-detail">
                                        <span class="star-rating-wrapper ">
                                            <i class="fas fa-star star-rating-style star-color"></i>
                                            <i class="fas fa-star star-rating-style star-color"></i>
                                            <i class="fas fa-star star-rating-style star-color"></i>
                                            <i class="fas fa-star star-rating-style star-color"></i>
                                            <i class="fas fa-star star-rating-style star-color"></i>
                                        </span>

                                            <span class="udlite-text-sm individual-review-detail-time">2 weeks ago</span>
                                        </div>
                                        <div class="review-show-more-container">
                                            <span></span>
                                            <div class="review-show-more-content" style="max-height: 100px;">
                                                <div>
                                                    <div class="udlite-text-sm" style="color: #3c3b37;">
                                                        <p>I must say I love the course Jose actually went from very basic right up to advance topics, One thing which i would like to ask Jose to improve is Final Capstone Project section, Instead of letting us
                                                            choose from if there is one provided with the solution that would be great</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="individual-review-feedback">
                                            <div>
                                                <p class="individual-review-feedback-title"> Was this review helpful?</p>
                                                <div class="review-feedback-actions">
                                                    <button class="udlite-btn udlite-btn-medium udlite-btn-icon-round udlite-btn-secondary udlite-btn-icon-medium udlite-btn-icon udlite-text-md  review-feedback-actions-thumb-up">
                                                        <i class="far fa-thumbs-up" ></i>
                                                    </button>

                                                    <button class="udlite-btn udlite-btn-medium udlite-btn-icon-round udlite-btn-secondary udlite-btn-icon-medium udlite-btn-icon udlite-text-md  review-feedback-actions-thumb-up">
                                                        <i class="far fa-thumbs-down" ></i>
                                                    </button>

                                                    <button class="udlite-btn-ghost udlite-btn-medium udlite-btn udlite-text-sm">
                                                        <span>Report</span>
                                                    </button>
                                                </div>
                                            </div>
                                        </div>


                                    </div>
                                </div>
                            </div>

                            <div class="reviews-section-review-container">
                                <div class="individual-review">
                                    <div class="individual-review-author-avatar">
                                        <div class="udlite-avatar udlite-heading-md" style="width: 4.8rem; height: 4.8rem; background: rgb(40, 150, 169);">SH</div>
                                    </div>
                                    <div class="individual-review-content">
                                        <div class="individual-review-content-name-container">
                                            <div class="udlite-heading-sm individual-review-content-name"> Son Heung Min</div>
                                        </div>
                                        <div class="individual-review-detail">
                                        <span class="star-rating-wrapper ">
                                            <i class="fas fa-star star-rating-style star-color"></i>
                                            <i class="fas fa-star star-rating-style star-color"></i>
                                            <i class="fas fa-star star-rating-style star-color"></i>
                                            <i class="fas fa-star star-rating-style star-color"></i>
                                            <i class="fas fa-star star-rating-style star-color"></i>
                                        </span>

                                            <span class="udlite-text-sm individual-review-detail-time">2 weeks ago</span>
                                        </div>
                                        <div class="review-show-more-container">
                                            <span></span>
                                            <div class="review-show-more-content" style="max-height: 100px;">
                                                <div>
                                                    <div class="udlite-text-sm" style="color: #3c3b37;">
                                                        <p>I must say I love the course Jose actually went from very basic right up to advance topics, One thing which i would like to ask Jose to improve is Final Capstone Project section, Instead of letting us
                                                            choose from if there is one provided with the solution that would be great</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="individual-review-feedback">
                                            <div>
                                                <p class="individual-review-feedback-title"> Was this review helpful?</p>
                                                <div class="review-feedback-actions">
                                                    <button class="udlite-btn udlite-btn-medium udlite-btn-icon-round udlite-btn-secondary udlite-btn-icon-medium udlite-btn-icon udlite-text-md  review-feedback-actions-thumb-up">
                                                        <i class="far fa-thumbs-up" ></i>
                                                    </button>

                                                    <button class="udlite-btn udlite-btn-medium udlite-btn-icon-round udlite-btn-secondary udlite-btn-icon-medium udlite-btn-icon udlite-text-md  review-feedback-actions-thumb-up">
                                                        <i class="far fa-thumbs-down" ></i>
                                                    </button>

                                                    <button class="udlite-btn-ghost udlite-btn-medium udlite-btn udlite-text-sm">
                                                        <span>Report</span>
                                                    </button>
                                                </div>
                                            </div>
                                        </div>


                                    </div>
                                </div>
                            </div>

                            <div class="reviews-section-review-container">
                                <div class="individual-review">
                                    <div class="individual-review-author-avatar">
                                        <div class="udlite-avatar udlite-heading-md" style="width: 4.8rem; height: 4.8rem; background: rgb(40, 150, 169);">SH</div>
                                    </div>
                                    <div class="individual-review-content">
                                        <div class="individual-review-content-name-container">
                                            <div class="udlite-heading-sm individual-review-content-name"> Son Heung Min</div>
                                        </div>
                                        <div class="individual-review-detail">
                                        <span class="star-rating-wrapper ">
                                            <i class="fas fa-star star-rating-style star-color"></i>
                                            <i class="fas fa-star star-rating-style star-color"></i>
                                            <i class="fas fa-star star-rating-style star-color"></i>
                                            <i class="fas fa-star star-rating-style star-color"></i>
                                            <i class="fas fa-star star-rating-style star-color"></i>
                                        </span>

                                            <span class="udlite-text-sm individual-review-detail-time">2 weeks ago</span>
                                        </div>
                                        <div class="review-show-more-container">
                                            <span></span>
                                            <div class="review-show-more-content" style="max-height: 100px;">
                                                <div>
                                                    <div class="udlite-text-sm" style="color: #3c3b37;">
                                                        <p>I must say I love the course Jose actually went from very basic right up to advance topics, One thing which i would like to ask Jose to improve is Final Capstone Project section, Instead of letting us
                                                            choose from if there is one provided with the solution that would be great</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="individual-review-feedback">
                                            <div>
                                                <p class="individual-review-feedback-title"> Was this review helpful?</p>
                                                <div class="review-feedback-actions">
                                                    <button class="udlite-btn udlite-btn-medium udlite-btn-icon-round udlite-btn-secondary udlite-btn-icon-medium udlite-btn-icon udlite-text-md  review-feedback-actions-thumb-up">
                                                        <i class="far fa-thumbs-up" ></i>
                                                    </button>

                                                    <button class="udlite-btn udlite-btn-medium udlite-btn-icon-round udlite-btn-secondary udlite-btn-icon-medium udlite-btn-icon udlite-text-md  review-feedback-actions-thumb-up">
                                                        <i class="far fa-thumbs-down" ></i>
                                                    </button>

                                                    <button class="udlite-btn-ghost udlite-btn-medium udlite-btn udlite-text-sm">
                                                        <span>Report</span>
                                                    </button>
                                                </div>
                                            </div>
                                        </div>


                                    </div>
                                </div>
                            </div>


                        </div>
                    </div>

                </div>
            </div>
        </div>
    </jsp:body>
</t:navandbelow>