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
        <link rel="stylesheet" type="text/css" href="./CSS/location.css">
    </head>
    <body>
        <!--Header-->
	<jsp:include page='./header.jsp' />
        
        <!--Body-->
        <div class="body">
            <!--Title-->
		<h1 class="title">Cinemas</h1>

		<div class="map_containers">
			<!-- Cinema 1-->
			<div class="map_container">
				<h3 class="location_name">Cinema.com One Utama</h3>
				<a class="location_img" href="./location_info.jsp" target="_blank" title="One Utama: Click to view more info">
					<img src="./Images/Location/location1.jpg" alt="Cinema.com One Utama">
				</a>

				<p>Level 3, Old Wing, 1 Utama Shopping Centre,
				1, Lebuh Bandar Utama, Bandar Utama,
				47800 Petaling Jaya,
				Selangor, Malaysia.</p>

				<a href="./location_info.jsp" target="_blank">
					<button class="locationinfo"title="More Info">More Info</button>
					<button class="map"title="View Map">View Map</button>
				</a>
			</div>

			<!-- Cinema 2-->
			<div class="map_container">
				<h3 class="location_name">Cinema.com Suria KLCC</h3>
				<a class="location_img" href="./location_info.jsp" target="_blank" title="Suria KLCC: Click to view more info">
					<img src="./Images/Location/location2.jpg" alt="Cinema.com Suria KLCC">
				</a>

				<p>Level 3, Suria KLCC,
				Kuala Lumpur City Centre,
				50088 Kuala Lumpur,
				Wilayah Persekutuan, Malaysia.</p>

				<a href="./location_info.jsp" target="_blank">
					<button class="locationinfo"title="More Info">More Info</button>
					<button class="map"title="View Map">View Map</button>
				</a>
				
			</div>

			<!-- Cinema 3-->
			<div class="map_container">
				<h3 class="location_name">Coming Soon Cinema</h3>
				<a class="location_img" href="./location_info.jsp" target="_blank" title="Coming Soon Cinema">
					<img src="./Images/Location/location3.jpg" alt="Coming Soon Cinema">
				</a>

				<p>You will know where is this cinema soon!</p>
			</div>
		</div>
        </div>
        
        <!--Footer-->
        <jsp:include page='./footer.jsp' />
    </body>
</html>
