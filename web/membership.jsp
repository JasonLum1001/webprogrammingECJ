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
        <link rel="stylesheet" type="text/css" href="./CSS/membership.css">
    </head>
    <body>
        <!--Header-->
	<jsp:include page='./header.jsp' />
        
        <!--Body-->
        <div class="body">
            <h1 class="title">Membership</h1>
		
		<div class="membership_container">

				<table class="membership_info">

					<tr>
						<th colspan="3">
						Join now to enjoy exciting ECJMembership Treats, Birthday Freebies, Exclusive Screening Invites and
							Special Members-Only Promotions.
						</th>		
					</tr>

					<tr>
						<td>
							<center>
								<img src="./Images/Membership/benefit1.png">
							</center>
							<center><h4>FREE Lifetime Membership</h4></center>
							<p>That's right, membership is now FREE - sign-up in just THREE easy steps!</p>
						</td>

						<td>
							<center>
								<img src="./Images/Membership/benefit2.jpg">
							</center>
							<center><h4>Earn ECJMember Points</h4></center>
							<p>Earn 100 ECJMember Points for Every RM10 you spend with Cinema.com on movie tickets, popcorns and drinks.</p>
						</td>

						<td>
							<center>
								<img src="./Images/Membership/benefit3.png">
							</center>
							<center><h4>Extended ECJMember Points Validity</h4></center>
							<p>Don't worry about your points expiring anytime soon.</p>
						</td>
					</tr>

					<tr>
						<td>
							<center>
								<img src="./Images/Membership/benefit4.png">
							</center>
							<center><h4>ECJMember Offers</h4></center>
							<p>All movies get 20% discount!</p>
						</td>

						<td>
							<center>
								<img src="./Images/Membership/benefit5.jpg">
							</center>
							<center><h4>ECJMember Promotions</h4></center>
							<p>Special members-only deals, including merchandise offers, bundle promotions, and partner discounts.</p>
						</td>

						<td>
							<center>
								<img src="./Images/Membership/benefit6.png">
							</center>
							<center><h4>Birthday Freebies</h4></center>
							<p>Get 1,000 ECJMember Points during your birthday month.</p>
						</td>
					</tr>
					
					<tr>
						<th colspan="3">
							<a href="./login.php">
								<button class="signupBtn">Sign Up Now!  >></button>
							</a>
						</th>
					</tr>
				</table>
			</div>
        </div>
        
        <!--Footer-->
        <jsp:include page='./footer.jsp' />
    </body>
</html>
