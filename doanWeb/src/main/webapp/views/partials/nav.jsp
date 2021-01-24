

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

                    Your cart is empty.

                </div>
                <a href="" class=" btn text-info btn-block mt-2 font-weight-bold text-white">Keep Shopping</a>
            </div>
        </div>

        <a href="${pageContext.request.contextPath}/Account/Login" class="header-button btn header-login-button "  role="button">Log in</a>
        <a href="${pageContext.request.contextPath}/Account/Register" class="header-button btn header-signup-button "  role="button">Sign up</a>
    </div>
</header>