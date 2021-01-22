
<%@ tag pageEncoding="utf-8" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>KJdemy</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
    <script src="https://kit.fontawesome.com/b325eaacc3.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/public/owlCarouse/owl.carousel.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/public/owlCarouse/owl.theme.default.min.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/styleindex.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/styledetail.css">

    <title>KJDemy Your Future Your Choices</title>
</head>

<body>
<jsp:include page="../../views/partials/nav.jsp"/>

<div class="container-fluid mt-3">
    <div class="row">
        <div class="col-sm-3">
    <jsp:include page="../../views/partials/left.jsp"/>
        </div>
        <div class="col-sm-9">
            <div class="card">
                <div class="card-body">
                    <jsp:doBody />
                </div>
            </div>
        </div>
    </div>

</div>

<div>
    <jsp:include page="../../views/partials/topcategories.jsp"/>
</div>
<div>
    <jsp:include page="../../views/partials/below.jsp"/>
</div>


<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js "></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js "></script>
<script src="${pageContext.request.contextPath}/public/owlCarouse/owl.carousel.min.js "></script>
<script>
    $('.owl-carousel').owlCarousel();
</script>

</body>

</html>

