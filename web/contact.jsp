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
        <link rel="stylesheet" type="text/css" href="./CSS/contact.css">
    </head>
    <body>
        <!--Header-->
	<jsp:include page='./header.jsp' />
        
        <!--Body-->
        <div class="body">
            <h1 class="title">Contact Us</h1>
		
		<div class="contact_info_container">
			<div class="map">
				<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7968.098784204392!2d101.73002492128282!3d3.081491554380558!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31cc35a3a63ae3b3%3A0xad98e9962494aca3!2sUCSI%20University!5e0!3m2!1sen!2smy!4v1676110617750!5m2!1sen!2smy" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
			</div>

			<div class="contact_info">
				<div class="card_holder">
					<div class="card">
						<i class="fa fa-map-marker"></i>
						<h6>Address</h6>
						<p>No. 1, UCSI Heights, Jalan Puncak Menara Gading, 
							Taman Connaught, 56000 Cheras, 
							Federal Territory of Kuala Lumpur</p>
					</div>

					<div class="card">
						<i class="fa fa-phone"></i>
						<h6>Phone Number</h6>
						<p>03-9101 8880</p>
					</div>

					<div class="card">
						<i class="fa fa-envelope"></i>
						<h6>Email</h6>
						<p>ECJCinema@gmail.com</p>
					</div>

					<div class="card">
						<i class="fa fa-clock-o"></i>
						<h6>Business Hour</h6>
						<p>Mon - Fri: 10am - 9pm
							Sat - Sun: 10am - 2pm</p>
					</div>
				</div>
				
				<p>Whether you’re curious about our cinemas, in love with our service, or have any feedback for us, please contact us with any questions, inquiries or feedbacks. We would be happy to hear and answer all your questions.</p>
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
        </div>
        
        <!--Footer-->
        <jsp:include page='./footer.jsp' />
    </body>
</html>
