<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
                            <div class="header-items "> Development</div>
                            <i class="fas fa-chevron-right"></i>
                        </a>
                        <div class="header-dropdown-menu header-dropdown-sub-menu">
                            <ul class="m-0 list-unstyled">
                                <li>
                                    <a href="" class="header-dropdown-categories">
                                        <div>Web Development</div>
                                    </a>
                                </li>
                                <li>
                                    <a href="" class="header-dropdown-categories">
                                        <div>App Development</div>
                                    </a>
                                </li>
                                <li>
                                    <a href="" class="header-dropdown-categories">
                                        <div>Manager</div>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </li>
                    <li>
                        <a class="header-dropdown-categories primary-category-content" href="">
                            <div class="header-items"> Business</div>
                            <i class="fas fa-chevron-right"></i>
                        </a>
                        <div class="header-dropdown-menu header-dropdown-sub-menu">
                            <ul class="m-0 list-unstyled">
                                <li>
                                    <a href="" class="header-dropdown-categories">
                                        <div>Direct to KJdemy</div>
                                    </a>
                                </li>
                                <li>
                                    <a href="" class="header-dropdown-categories">
                                        <div>Make money with KJ</div>
                                    </a>
                                </li>
                                <li>
                                    <a href="" class="header-dropdown-categories">
                                        <div class="">Deal with KJ</div>
                                    </a>
                                </li>
                            </ul>
                        </div>

                    </li>
                </ul>
            </div>
        </div>

        <div class="flex-fill header-search rounded-pill d-none d-md-block">
            <form class="h-100 d-flex align-items-center">
                <button class="ml-2 btn outline-none">
                    <i class="fas fa-search"></i>
                </button>
                <label>
                    <input placeholder="Search for anything" type="text" class="header-search-input flex-fill pr-3">
                </label>
            </form>
        </div>

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
                        <div class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
                               aria-haspopup="true" aria-expanded="false">
                                Hi, <b>${authUser.name}</b>!
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="${pageContext.request.contextPath}/Account/Profile">
                                    <i class="fa fa-user" aria-hidden="true"></i>
                                    Profile
                                </a>
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