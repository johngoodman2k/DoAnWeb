
<%@ page contentType="text/html;charset=UTF-8"  %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Register</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/register.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-datetimepicker/2.5.20/jquery.datetimepicker.min.css">
</head>
<body>
<form method="post" id="frmRegister">
    <div class="login-wrap">
        <div class="login-html">
            <div class="login-form">
                <div class="sign-up-htm">
                    <div style="text-align: center; margin-bottom: 20px; color: white">
                        <H2>Register</H2>
                    </div>

                    <div class="group">
                        <label for="user" class="label" >Username</label>
                        <input id="user" type="text" class="input" name="username">
                    </div>
                    <div class="group">
                        <label for="pass" class="label">Password</label>
                        <input id="pass" type="password" class="input" data-type="password" name="password">
                    </div>
                    <div class="group">
                        <label for="confirm" class="label">Repeat Password</label>
                        <input id="confirm" type="password" class="input" data-type="password" name="confirm">
                    </div>
                    <div class="group">
                        <label for="txtName" class="label" >Name</label>
                        <input id="txtName" type="text" class="input" name="name">
                    </div>

                    <div class="group">
                        <label for="email" class="label">Email Address</label>
                        <input id="email" type="text" class="input" name="email">
                    </div>
                    <div class="group">
                        <label for="txtDOB" class="label" >Date of Birth</label>
                        <input id="txtDOB" type="text" class="input" name="dob">
                    </div>

                    <div class="group">
                        <input type="submit" class="button" value="Sign Up">
                    </div>
                    <div class="hr"></div>
                    <div class="foot-lnk">

                        <span><a href="${pageContext.request.contextPath}/Home"  role="button" style="margin-right: 180px">Home</a></span>
                        <a href="${pageContext.request.contextPath}/Account/Login"  role="button">Already Member?</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</form>
<script>
    $('#frmRegister').on('submit', function (e) {
        e.preventDefault();

        const username = $('#user').val();
        if (username.length === 0) {
            alert('Invalid username.');
            return;
        }

        $.getJSON('${pageContext.request.contextPath}/Account/IsAvailable?user=' + username, function (data) {
            if (data === true) {
                $('#frmRegister').off('submit').submit();
            } else {
                alert('Not available.');
            }
        });
    });
</script>

<script src="https://code.jquery.com/jquery-3.5.1.min.js"> </script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-datetimepicker/2.5.20/jquery.datetimepicker.full.min.js"></script>
<script>


    $('#txtDOB').datetimepicker({
        format: 'd/m/Y',
        timepicker: false,
        mask: true,
    });

    $('#user').select();
</script>
</body>


</html>