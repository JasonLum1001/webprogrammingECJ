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
        
        <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="./CSS/about.css">
    </head>
    <body>
        <!--Header-->
	<jsp:include page='./header.jsp' />
	
	<!--Body-->
	<div class="body">
            <!--Title-->
            <h1 class="title">About Us</h1>

            <div class="content">
                <div>
                    <h1>Our Story</h1>
                    <p class="about"><big><strong>ECJ Cinema </strong></big>was found on 5th of March 2001 in Kuala Lumpur, Malaysia by 3 founders respectively are Esther Chong Jun Lynn, Crystal Ling Yu Jie, and Lum Jun Yean. <br><br>
                            ECJ Cinema was introduced to public a year later on 5th of March 2002. In the beginning, we focused on providing movie services only. As our business grow, we start providing more and more variety of services. Until now, we offer movies, advance sales, coming soon movies preview, movie experiences, online booking, and many more.<br><br>
                            Our goal is to serve every customer with 3P concept, which are polite, patient and positive. We do our best to entertain and ensure the happiness, relaxation, and enjoyment that our customer obtain from our services.<br><br>
                            Thank you for the supports and affirmation given from all of our supporters and customers. ECJ Cinema will continue to improve our services and business. Providing everyone a better movie experience with us in the near future. Have a nice day.</p>
                    <p class="quote">ECJ Cinema - An entertainment place where build a stronger relationship</p>
                </div>
            <img src="./Images/About/caption.jpg">
            </div>
	</div>
	
	<!--Footer-->
        <jsp:include page='./footer.jsp' />
    </body>
</html>
