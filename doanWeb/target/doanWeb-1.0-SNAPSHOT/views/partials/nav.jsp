<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:useBean id="categoriesWithDetails" scope="request" type="java.util.List<beans.Category>"/>

<header class="header-position">
    <div class="header ">
        <a href="${pageContext.request.contextPath}/Home">
            <h1>KJdemy</h1>
        </a>


        <div class="header-dropdown-container ">
            <button class="header-dropdown-button">Categories</button>
            <div class="header-dropdown-menu">
                <ul class="m-0 list-unstyled">
                    <li>
                        <a class="header-dropdown-categories  primary-category-content" href="">
                            <div class="header-items ">Development</div>
                            <i class="fas fa-chevron-right"></i>
                        </a>
                        <div class="header-dropdown-menu header-dropdown-sub-menu">
                            <ul class="m-0 list-unstyled">
                                <c:choose>
                                <c:when test="${categoriesWithDetails.size() == 0}">
                                    <div class="card-body">
                                        <p class="card-text">Không có dữ liệu.</p>
                                    </div>
                                </c:when>
                                <c:otherwise>
                                    <c:forEach var="c" items="${categoriesWithDetails}">
                                        <li>
                                            <a href="${pageContext.request.contextPath}/Course/ByCat?id=${c.catID}" class="header-dropdown-categories">
                                                <div>${c.catName}</div>
                                            </a>
                                        </li>
                                    </c:forEach>
                                </c:otherwise>
                                </c:choose>


                            </ul>
                        </div>
                    </li>
                    <li>
                        <a class="header-dropdown-categories primary-category-content" href="${pageContext.request.contextPath}/Course/ByCat?id=1">
                            <div class="header-items"> Business</div>
                            <i class="fas fa-chevron-right"></i>
                        </a>
                        <div class="header-dropdown-menu header-dropdown-sub-menu">
                            <ul class="m-0 list-unstyled">
                                <li>
                                    <a href="${pageContext.request.contextPath}/Course/ByCat?id=1" class="header-dropdown-categories">
                                        <div>Direct to KJdemy</div>
                                    </a>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath}/Course/ByCat?id=1" class="header-dropdown-categories">
                                        <div>Make money with KJ</div>
                                    </a>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath}/Course/ByCat?id=1" class="header-dropdown-categories">
                                        <div class="">Deal with KJ</div>
                                    </a>
                                </li>
                            </ul>
                        </div>

                    </li>
                </ul>
            </div>
        </div>
        <form action="${pageContext.request.contextPath}/Search/Index" method="get" class="flex-fill header-search rounded-pill d-none d-md-block">
            <div >
                    <button class="ml-2 btn outline-none" type="submit" >
                        <i class="fas fa-search"></i>
                    </button>
                    <label>
                        <input placeholder="Search for anything" type="text" class="header-search-input flex-fill pr-3" name="txtSearch">
                    </label>
            </div>
        </form>


        <div class="header-dropdown-container ">
            <button class="header-dropdown-button">
                <i class="fas fa-shopping-cart" style="font-size: 22px;"></i>
            </button>
            <div class="  header-dropdown-menu px-3 py-2">
                <div class="header-dropdown-menu-heading">

                    Your cart is empty

                </div>
                <a href="" class=" btn text-info btn-block mt-2 font-weight-bold text-white">Keep Shopping</a>
            </div>
        </div>
            <c:choose>
                <c:when test="${auth}">

                    <form id="frmLogout" method="post" action="${pageContext.request.contextPath}/Account/Logout"></form>
<%--                    <div>--%>

<%--                    </div>--%>
                        <div class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="${pageContext.request.contextPath}/Account/Profile" id="navbarDropdown" role="button" data-toggle="dropdown"
                               aria-haspopup="true" aria-expanded="false">
                                Hi, <b>${authUser.name}</b>!
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="${pageContext.request.contextPath}/Account/Profile">
                                    <i class="fa fa-user" aria-hidden="true"></i>
                                    Profile
                                </a>
                                <c:if test="${per == 1}">
                                    <a class="dropdown-item" href="${pageContext.request.contextPath}/Admin/Category">
                                        <i class="fa fa-user" aria-hidden="true"></i>
                                        Edit Category
                                    </a>
                                    <a class="dropdown-item" href="${pageContext.request.contextPath}/Admin/Course/ByCat?id=1">
                                        <i class="fa fa-user" aria-hidden="true"></i>
                                        Edit Course
                                    </a>
                                </c:if>

                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="javascript: $('#frmLogout').submit();">
                                    <i class="fa fa-sign-out" aria-hidden="true"></i>
                                    Logout
                                </a>
                            </div>
                        </div>
                    </c:when>
                    <c:otherwise>
                                <a class="nav-link" href="${pageContext.request.contextPath}/Account/Register">
                                <i class="fa fa-user-plus" aria-hidden="true"></i>
                                Register
                                </a>

                                <a class="nav-link" href="${pageContext.request.contextPath}/Account/Login">
                                    <i class="fa fa-sign-in" aria-hidden="true"></i>
                                    Login
                                </a>

                    </c:otherwise>
                </c:choose>
    </div>

</header>