<body>

<div class="container ">
    <div class="newest-courses-title ">
        <span><i class="fas fa-search-plus " style="font-size: 40px ; margin-right: 10px; color: #00008B "></i></span>
        <span class="udlite-heading-md ">10 MOST VIEWED COURSES</span>
    </div>
    <div class="slideshow-container ">

        <div class="mySlides fade ">
            <div class="numbertext ">1 / 10</div>
            <div>
                <a href=" ">
                    <img src="${pageContext.request.contextPath}/public/imgs/indeximgs/1.jpg " class="d-block w-100 " width="800 " height="300 ">
                </a>
            </div>
            <div class="text ">See now!</div>
        </div>

        <div class="mySlides fade ">
            <div class="numbertext ">2 / 10</div>
            <div>
                <a href=" ">
                    <img src="${pageContext.request.contextPath}/public/imgs/indeximgs/2.jpg " class="d-block w-100 " width="800 " height="300 ">
                </a>
            </div>
            <div class="text ">See now!</div>
        </div>

        <div class="mySlides fade ">
            <div class="numbertext ">3 / 10</div>
            <div>
                <a href=" ">
                    <img src="${pageContext.request.contextPath}/public/imgs/indeximgs/3.jpg " class="d-block w-100 " width="800 " height="300 ">
                </a>
            </div>
            <div class="text ">See now!</div>
        </div>

        <div class="mySlides fade ">
            <div class="numbertext ">4 / 10</div>
            <div>
                <a href=" ">
                    <img src="${pageContext.request.contextPath}/public/imgs/indeximgs/4.jpg " class="d-block w-100 " width="800 " height="300 ">
                </a>
            </div>
            <div class="text ">See now!</div>
        </div>

        <div class="mySlides fade ">
            <div class="numbertext ">5 / 10</div>
            <div>
                <a href=" ">
                    <img src="${pageContext.request.contextPath}/public/imgs/indeximgs/5.jpg " class="d-block w-100 " width="800 " height="300 ">
                </a>
            </div>
            <div class="text ">See now!</div>
        </div>

        <div class="mySlides fade ">
            <div class="numbertext ">6 / 10</div>
            <div>
                <a href=" ">
                    <img src="${pageContext.request.contextPath}/public/imgs/indeximgs/6.png " class="d-block w-100 " width="800 " height="300 ">
                </a>
            </div>
            <div class="text ">See now!</div>
        </div>

        <div class="mySlides fade ">
            <div class="numbertext ">7 / 10</div>
            <div>
                <a href=" ">
                    <img src="${pageContext.request.contextPath}/public/imgs/indeximgs/7.jpg " class="d-block w-100 " width="800 " height="300 ">
                </a>
            </div>
            <div class="text ">See now!</div>
        </div>

        <div class="mySlides fade ">
            <div class="numbertext ">8 / 10</div>
            <div>
                <a href=" ">
                    <img src="${pageContext.request.contextPath}/public/imgs/indeximgs/8.png " class="d-block w-100 " width="800 " height="300 ">
                </a>
            </div>
            <div class="text ">See now!</div>
        </div>

        <div class="mySlides fade ">
            <div class="numbertext ">9 / 10</div>
            <div>
                <a href=" ">
                    <img src="${pageContext.request.contextPath}/public/imgs/indeximgs/9.jpg " class="d-block w-100 " width="800 " height="300 ">
                </a>
            </div>
            <div class="text ">See now!</div>
        </div>

        <div class="mySlides fade ">
            <div class="numbertext ">10 / 10</div>
            <div>
                <a href=" ">
                    <img src="${pageContext.request.contextPath}/public/imgs/indeximgs/10.jpeg " class="d-block w-100 " width="800 " height="300 ">
                </a>
            </div>
            <div class="text ">See now!</div>
        </div>

        <a class="prev " onclick="plusSlides(-1) ">&#10094;</a>
        <a class="next " onclick="plusSlides(1) ">&#10095;</a>

    </div>
</div>
<br>

    <div style="text-align:center ">
        <span class="dot " onclick="currentSlide(1) "></span>
        <span class="dot " onclick="currentSlide(2) "></span>
        <span class="dot " onclick="currentSlide(3) "></span>
        <span class="dot " onclick="currentSlide(4) "></span>
        <span class="dot " onclick="currentSlide(5) "></span>
        <span class="dot " onclick="currentSlide(6) "></span>
        <span class="dot " onclick="currentSlide(7) "></span>
        <span class="dot " onclick="currentSlide(8) "></span>
        <span class="dot " onclick="currentSlide(9) "></span>
        <span class="dot " onclick="currentSlide(10) "></span>
    </div>
<script>
        let slideIndex = 0;
        showSlides1();
        // Next/previous controls
        function plusSlides(n) {
            showSlides(slideIndex += n);
            slideIndex = slideIndex -n;
        }

        // Thumbnail image controls
        function currentSlide(n) {
            showSlides(slideIndex = n);
        }


        function showSlides(n) {
            let i;
            const slides = document.getElementsByClassName("mySlides");
            const dots = document.getElementsByClassName("dot");
            if (n > slides.length) {slideIndex = 1}
            if (n < 1) {slideIndex = slides.length}

            // if (slideIndex > slides.length) {slideIndex = 1}
            for (i = 0; i < slides.length; i++) {
                slides[i].style.display = "none";
            }

            for (i = 0; i < dots.length; i++) {
                dots[i].className = dots[i].className.replace(" active", "");
            }
            slides[slideIndex-1].style.display = "block";
            dots[slideIndex-1].className += " active";
            // setTimeout(showSlides, 4000); // Change image every 4 seconds
        }
        function showSlides1() {
            let i;
            const slides = document.getElementsByClassName("mySlides");
            const dots = document.getElementsByClassName("dot");
            for (i = 0; i < slides.length; i++) {
                slides[i].style.display = "none";
            }
            slideIndex++;
            if (slideIndex > slides.length) {slideIndex = 1}
            for (i = 0; i < dots.length; i++) {
                dots[i].className = dots[i].className.replace(" active", "");
            }
            slides[slideIndex-1].style.display = "block";
            dots[slideIndex-1].className += " active";
            setTimeout(showSlides1, 3000); // Change image every 4 seconds
        }

</script>
</body>