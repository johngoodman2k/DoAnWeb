<%@ page contentType="text/html;charset=UTF-8"  %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Login</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/register.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<body>

<div class="login-wrap">
    <div class="login-html">
        <div class="login-form">
            <div class="sign-in-htm">
                <div style="text-align: center; margin-bottom: 20px; color: white">
                    <H2>Login</H2>
                </div>

                <c:if test="${hasError}">
                    <div class="alert alert-warning alert-dismissible fade show" role="alert" style="color: red">
                        <strong>Login failed!</strong> ${errorMessage}
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                </c:if>
                <form method="post" >
                <div class="group">
                    <label for="user" class="label">Username</label>
                    <input id="user" type="text" class="input" name="username">
                </div>
                <div class="group">
                    <label for="pass" class="label">Password</label>
                    <input id="pass" type="password" class="input" data-type="password" name="password">
                </div>
<%--                <div class="group">--%>
<%--                    <input id="check" type="checkbox" class="check" checked>--%>
<%--                    <label for="check"><span class="icon"></span> Keep me Signed in</label>--%>
<%--                </div>--%>
                <div class="group">
                    <input type="submit" class="button" value="Sign In">
                </div>
<%--                <div class="hr"></div>--%>
<%--                <div class="foot-lnk">--%>
<%--                    <a href="#forgot">Forgot Password?</a>--%>
<%--                </div>--%>
                <div class="hr"></div>
                <div class="foot-lnk">

                    <span><a href="${pageContext.request.contextPath}/Home"  role="button" style="margin-right: 180px">Home</a></span>
                    <a href="${pageContext.request.contextPath}/Account/Register"  role="button">Register </a>
                </div>
                </form>
            </div>
        </div>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
</body>


</html>