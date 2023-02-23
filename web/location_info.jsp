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
        <link rel="stylesheet" type="text/css" href="./CSS/location_info.css">
    </head>
    <body>
        <!--Header-->
	<jsp:include page='./header.jsp' />
        
        <!--Body-->
        <div class="body">
            <h1 class="title">Cinema.com One Utama</h1>
		
		<div class="cinema_info_container">
			<div class="map">
				<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3983.7871855862427!2d101.61323351380877!3d3.1507598977057993!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31cc4ed29f2fe42f%3A0xfd81eb3a4d9eb904!2z5LiH6L6-5bm_5Zy6!5e0!3m2!1szh-CN!2smy!4v1601434960245!5m2!1szh-CN!2smy" frameborder="1" style="border:1" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
			</div>

			<div class="info">
				<h6>Address</h6>
				<p>Level 3, Old Wing, 1 Utama Shopping Centre,
					1, Lebuh Bandar Utama, Bandar Utama,
					47800 Petaling Jaya,
					Selangor, Malaysia.</p>

				<div class="hall_info_container">
					<div>
						<h6>Number of Halls:</h6>
						<span>13</span>
					</div>

					<div>
						<h6>Seating Capacity:</h6>
						<span>1,900</span>
					</div>
				</div>
			</div>
		</div>
        </div>
        
        <!--Footer-->
        <jsp:include page='./footer.jsp' />
    </body>
</html>
