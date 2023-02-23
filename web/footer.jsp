<%-- 
    Document   : footer
    Created on : Feb 23, 2023, 8:24:03 PM
    Author     : Lum Jun Yean
--%>

<%@page import="java.time.Year"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="./CSS/footer.css">
    </head>
    <body>
        <div class="footer">
            <!--Company Info-->
            <div class="company_info">
                <!--Logo-->
                <a href="./index.jsp" title="Home" class="logo">
                        <img src="./Images/logo.png" alt="ECJ Cinema's logo">
                </a>
                <p class="address"><em>No. 1, UCSI Heights, Jalan Puncak Menara Gading, Taman Connaught, 56000 Cheras, Federal Territory of Kuala Lumpur</em></p>
                <p class="tel"><em>Tel: 03-9101 8880</em></p>
                <div class="box">
                    <span><strong>Follow Us</strong></span>
                    &nbsp;&nbsp;

                    <a class="facebook_footer" href="">
                        <i class="fa fa-facebook"></i>
                    </a>

                    <a class="twitter_footer" href="">
                        <i class="fa fa-twitter"></i>
                    </a>

                    <a class="google_footer" href="mailto: 1002058038@ucsiuniversity.edu.my">
                        <i class="fa fa-google"></i>
                    </a>

                    <a class="linkedin_footer" href="">
                        <i class="fa fa-linkedin"></i>
                    </a>

                    <a class="instagram_footer" href="">
                        <i class="fa fa-instagram"></i>
                    </a>
                </div>
            </div>

            <!--Footer Link-->
            <div class="footer_link">
                <!--Home-->
                <div>
                    <h3><strong>Home</strong></h3>
                    <a target="_self" href="./index.jsp">Home</a><br>
                </div>

                <!--Movie-->
                <div>
                    <h3><strong>Movie</strong></h3>
                    <a target="_self" href="./movie.jsp">Now Showing</a><br>
                    <a target="_self" href="./movie.jsp">Advance Sales</a><br>
                    <a target="_self" href="./movie.jsp">Coming Soon</a><br>
                </div>

                <!--Location-->
                <div>
                    <h3><strong>Cinema</strong></h3>
                    <a target="_self" href="./location.jsp">Location</a><br>
                </div>

                <!--Membership-->
                <div>
                    <h3><strong>Membership</strong></h3>
                    <a target="_self" href="./membership.jsp">ECJMember</a><br>
                </div>
            </div>

            <div class="footer_link">
                <!--About-->
                <div>
                    <h3><strong>About</strong></h3>
                    <a target="_self" href="./about.jsp">About Us</a><br>
                    <a target="_self" href="./contact.jsp">Contact Us</a><br>
                </div>

                <!--Help-->
                <div>
                    <h3><strong>Help</strong></h3>
                    <a target="_self" href="./faq.jsp">FAQ</a><br>
                    <a target="_self" href="./privacy_policy.jsp">Privacy Policy</a><br>
                </div>
            </div>

            <br>
            <!--Footer Copyright-->
            <div class="footer_copyright">
                <a target="_self" href="./t&c.jsp">Term &#38; Conditions</a>

                <p>|</p>

                <a target="_self" href="./privacy_policy.jsp">Privacy Policy</a>

                <p>|</p>

                <p>Copyright <% out.print(Year.now().getValue()); %> Web Programming UCSI University</p>
            </div>
        </div>
    </body>
</html>
