<%-- 
    Document   : header
    Created on : Feb 23, 2023, 8:19:23 PM
    Author     : Lum Jun Yean
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Tab Icon and Title -->
        <title>ECJ Cinema</title>
	<link rel="Shortcut Icon" type="image/ico" href="./Images/logo.png">
        
        <!-- Font Family Import -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Dosis:wght@300&family=Josefin+Sans:wght@600&family=Oswald&display=swap" rel="stylesheet">
        
        <!-- CSS and Icon -->
        <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="./CSS/top_bar.css">
    </head>
    <body>
        <div class="header">
            <!--Logo-->
            <a href="./index.jsp" title="Home" class="logo">
                <img src="./Images/logo.png" alt="Cinema.com's logo">
            </a>

            <!--Sign in Button-->
            <div class="sign_btn">
                <a href="./login.jsp">
                    <i class='fas fa-user-circle'></i>
                </a>
            </div>
        </div>

        <!--Menu Bar-->
        <div class="menu_bar">
            <div class="topbar">
                <!--Home-->
                <a href="./index.jsp" target="_self">Home</a>

                <!--Movie-->
                <a href="./movie.jsp" target="_self">Movie</a>

                <!--Location-->
                <a href="./location.jsp" target="_self">Cinema</a>

                <!--Membership-->
                <a href="./membership.jsp" target="_self">Membership</a>
            </div>
        </div>
    </body>
</html>
