<%-- 
    Document   : footer
    Created on : Feb 23, 2023, 8:24:03 PM
    Author     : Lum Jun Yean
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="./CSS/login.css">
    </head>
    <body>
        <!--Header-->
	<jsp:include page='./header.jsp' />
        
        <!--Body-->
        <div class="body">
            <input type="radio" name="tabs" class="login_tab" id="Register"/>
		<div id="label3"><label class="login_tab_label label3" for="Register">Don't have an account? Sign up now</label></div>

		<input type="radio" name="tabs" class="login_tab" id="Login" checked/>
		<div id="label2"><label class="login_tab_label label2" for="Login">Already have an account? Sign in here</label></div>

		<div id="login" class="login-model tab">
			<h1 class="title">Sign In</h1>

			<form method="post" action="signInUp">
			    <div class="input_container">

                        <div class="container">
                            <label for="u_email"><i class="fa fa-envelope"></i>Email<span class="require">*</span></label>
                            <input type="email" name="u_email" class="u_email input_" placeholder=" " required /><br>
                        </div>

                        <div class="container">
                            <label for="u_password"><i class='fas fa-key'></i>Password<span class="require">*</span></label>
                            <input type="password" name="u_password" class="u_password input_" placeholder=" " required />
                        </div>

                        <input type="submit" class="submitBtn" value="Sign In">

			    </div>
			</form>

		</div>



        <div id="register" class="register-model tab">

            <form method="post" action="signInUp">

                <h1 class="title">Sign Up</h1>

                <div class="input_container">
                    <div class="container">
                        <label for="email"><i class="fa fa-envelope"></i>Email<span class="require">*</span></label>
                        <input type="email" name="email" class="email input_" placeholder=" " required />
                    </div>

                    <div class="container">
                        <label for="phone"><i class="fa fa-phone"></i>Phone Number<span class="require">*</span></label>
                        <input type="tel" name="phone" class="phone input_" placeholder=" " required />
                    </div>

                    <div class="container">
                        <label for="password"><i class='fas fa-key'></i>Password<span class="require">*</span></label>
                        <input type="password" name="password" class="password input_" placeholder=" " required />
                    </div>

                    <div class="container">
                        <label for="re-password"><i class='fas fa-key'></i>Re-type Password<span class="require">*</span></label>
                        <input type="password" name="re-password" class="re-password input_" placeholder=" " required />
                    </div>

                    <input type="submit" class="submitBtn" value="Sign Up">
                </div>

            </form>
			
		</div>
        </div>
    </body>
</html>
