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
        <link rel="stylesheet" type="text/css" href="./CSS/movie.css">
    </head>
    <body>
        <!--Header-->
	<jsp:include page='./header.jsp' />
        
        <!--Body-->
        <div class="body">
            <h1 class="title">Movie</h1>
		
		<input type="radio" name="tabs" class="movie_tab" id="Now_Showing" checked />
		<label class="movie_tab_label label1" for="Now_Showing">Now Showing</label>
		<input type="radio" name="tabs" class="movie_tab" id="Advance_Sales" />
		<label class="movie_tab_label label2" for="Advance_Sales">Advance Sales</label>
		<input type="radio" name="tabs" class="movie_tab" id="Coming_Soon" />
		<label class="movie_tab_label label3" for="Coming_Soon">Coming Soon</label>
		
 		<!--Now Showing-->
		<div id="Now_Showing_content" class="tab movie_1">
			<div class="movies-container">
				
				<div class="movie-container">
					<img src="./Images/Movie/movie1.jpg" alt="2067">
					<div class="movie_info">
						<p class="movie_name"><strong>2067</strong></p>
						<p class="movie_type"><i class='fas fa-tag'></i>&nbsp;Action</p>
						<p class="movie_duration"><i class="fa fa-clock"></i>&nbsp;3 hour</p>
						<p class="movie_language"><i class='fas fa-comment-dots'></i>&nbsp;ENG</p>
						<p class="movie_subtitle"><i class='fas fa-closed-captioning'></i>&nbsp;BM</p>
						
						<br>
						
						<a href="./movie_info.php" target="_blank">
						<button class="info_btn"><b><i class="fa fa-info-circle"></i></b></button>
						</a>
						
						<a href="https://www.youtube.com/embed/JORN2hkXLyM" target="_blank">
							<button class="trailer_btn" onclick="openTrailer()"><b>Trailer</b></button>
						</a>
						
						<br>
						
						<a href="./booking.php" target="_blank">
							<button class="buy_btn"><b>Buy Ticket Now</b></button>
						</a>
						
					</div>
				</div>
				
				<div class="movie-container">
					<img src="./Images/Movie/movie2.jpg" alt="2067">
					<div class="movie_info">
						<p class="movie_name"><strong>Happy Halloween Scooby Doo!</strong></p>
						<p class="movie_type"><i class='fas fa-tag'></i>&nbsp;Action</p>
						<p class="movie_duration"><i class="fa fa-clock"></i>&nbsp;3 hour</p>
						<p class="movie_language"><i class='fas fa-comment-dots'></i>&nbsp;ENG</p>
						<p class="movie_subtitle"><i class='fas fa-closed-captioning'></i>&nbsp;BM</p>
						<br>
						
						<a href="./movie_info.php" target="_blank">
						<button class="info_btn"><b><i class="fa fa-info-circle"></i></b></button>
						</a>
						
						<a href="https://www.youtube.com/embed/JORN2hkXLyM" target="_blank">
							<button class="trailer_btn" onclick="openTrailer()"><b>Trailer</b></button>
						</a>
						
						<br>
						
						<a href="./booking.php" target="_blank">
							<button class="buy_btn"><b>Buy Ticket Now</b></button>
						</a>
						
					</div>
				</div>
				
				<div class="movie-container">
					<img src="./Images/Movie/movie3.jpg" alt="2067">
					<div class="movie_info">
						<p class="movie_name"><strong>Dating Amber</strong></p>
						<p class="movie_type"><i class='fas fa-tag'></i>&nbsp;Action</p>
						<p class="movie_duration"><i class="fa fa-clock"></i>&nbsp;3 hour</p>
						<p class="movie_language"><i class='fas fa-comment-dots'></i>&nbsp;ENG</p>
						<p class="movie_subtitle"><i class='fas fa-closed-captioning'></i>&nbsp;BM</p>
						<br>
						
						<a href="./movie_info.php" target="_blank">
						<button class="info_btn"><b><i class="fa fa-info-circle"></i></b></button>
						</a>
						
						<a href="https://www.youtube.com/embed/JORN2hkXLyM" target="_blank">
							<button class="trailer_btn" onclick="openTrailer()"><b>Trailer</b></button>
						</a>
						
						<br>
						
						<a href="./booking.php" target="_blank">
							<button class="buy_btn"><b>Buy Ticket Now</b></button>
						</a>
						
					</div>
				</div>
			</div>
		</div>
		
		<!--Advance Sales-->
		<div id="Advance_Sales_content" class="tab movie_2">
			<div class="movies-container">
				
				<div class="movie-container">
					<img src="./Images/Movie/movie2.jpg" alt="2067">
					<div class="movie_info">
						<p class="movie_name"><strong>2067</strong></p>
						<p class="movie_type"><i class='fas fa-tag'></i>&nbsp;Action</p>
						<p class="movie_duration"><i class="fa fa-clock"></i>&nbsp;3 hour</p>
						<p class="movie_language"><i class='fas fa-comment-dots'></i>&nbsp;ENG</p>
						<p class="movie_subtitle"><i class='fas fa-closed-captioning'></i>&nbsp;BM</p>
						
						<br>
						
						<a href="./movie_info.php" target="_blank">
						<button class="info_btn"><b><i class="fa fa-info-circle"></i></b></button>
						</a>
						
						<a href="https://www.youtube.com/embed/JORN2hkXLyM" target="_blank">
							<button class="trailer_btn" onclick="openTrailer()"><b>Trailer</b></button>
						</a>
						
						<br>
						
						<a href="./booking.php" target="_blank">
							<button class="buy_btn"><b>Buy Ticket Now</b></button>
						</a>
						
					</div>
				</div>
				
				<div class="movie-container">
					<img src="./Images/Movie/movie3.jpg" alt="2067">
					<div class="movie_info">
						<p class="movie_name"><strong>Happy Halloween Scooby Doo!</strong></p>
						<p class="movie_type"><i class='fas fa-tag'></i>&nbsp;Action</p>
						<p class="movie_duration"><i class="fa fa-clock"></i>&nbsp;3 hour</p>
						<p class="movie_language"><i class='fas fa-comment-dots'></i>&nbsp;ENG</p>
						<p class="movie_subtitle"><i class='fas fa-closed-captioning'></i>&nbsp;BM</p>
						<br>
						
						<a href="./movie_info.php" target="_blank">
						<button class="info_btn"><b><i class="fa fa-info-circle"></i></b></button>
						</a>
						
						<a href="https://www.youtube.com/embed/JORN2hkXLyM" target="_blank">
							<button class="trailer_btn" onclick="openTrailer()"><b>Trailer</b></button>
						</a>
						
						<br>
						
						<a href="./booking.php" target="_blank">
							<button class="buy_btn"><b>Buy Ticket Now</b></button>
						</a>
						
					</div>
				</div>
				
				<div class="movie-container">
					<img src="./Images/Movie/movie1.jpg" alt="2067">
					<div class="movie_info">
						<p class="movie_name"><strong>Dating Amber</strong></p>
						<p class="movie_type"><i class='fas fa-tag'></i>&nbsp;Action</p>
						<p class="movie_duration"><i class="fa fa-clock"></i>&nbsp;3 hour</p>
						<p class="movie_language"><i class='fas fa-comment-dots'></i>&nbsp;ENG</p>
						<p class="movie_subtitle"><i class='fas fa-closed-captioning'></i>&nbsp;BM</p>
						<br>
						
						<a href="./movie_info.php" target="_blank">
						<button class="info_btn"><b><i class="fa fa-info-circle"></i></b></button>
						</a>
						
						<a href="https://www.youtube.com/embed/JORN2hkXLyM" target="_blank">
							<button class="trailer_btn" onclick="openTrailer()"><b>Trailer</b></button>
						</a>
						
						<br>
						
						<a href="./booking.php" target="_blank">
							<button class="buy_btn"><b>Buy Ticket Now</b></button>
						</a>
						
					</div>
				</div>
			</div>
		</div>
		
		<!--Coming Soon-->
		<div id="Coming_Soon_content" class="tab movie_3">
			<div class="movies-container">
				
				<div class="movie-container">
					<img src="./Images/Movie/movie3.jpg" alt="2067">
					<div class="movie_info">
						<p class="movie_name"><strong>2067</strong></p>
						<p class="movie_type"><i class='fas fa-tag'></i>&nbsp;Action</p>
						<p class="movie_duration"><i class="fa fa-clock"></i>&nbsp;3 hour</p>
						<p class="movie_language"><i class='fas fa-comment-dots'></i>&nbsp;ENG</p>
						<p class="movie_subtitle"><i class='fas fa-closed-captioning'></i>&nbsp;BM</p>
						
						<br>
						
						<a href="./movie_info.php" target="_blank">
						<button class="info_btn"><b><i class="fa fa-info-circle"></i></b></button>
						</a>
						
						<a href="https://www.youtube.com/embed/JORN2hkXLyM" target="_blank">
							<button class="trailer_btn" onclick="openTrailer()"><b>Trailer</b></button>
						</a>
						
						<br>
						
						<a href="./booking.php" target="_blank">
							<button class="buy_btn"><b>Buy Ticket Now</b></button>
						</a>
						
					</div>
				</div>
				
				<div class="movie-container">
					<img src="./Images/Movie/movie1.jpg" alt="2067">
					<div class="movie_info">
						<p class="movie_name"><strong>Happy Halloween Scooby Doo!</strong></p>
						<p class="movie_type"><i class='fas fa-tag'></i>&nbsp;Action</p>
						<p class="movie_duration"><i class="fa fa-clock"></i>&nbsp;3 hour</p>
						<p class="movie_language"><i class='fas fa-comment-dots'></i>&nbsp;ENG</p>
						<p class="movie_subtitle"><i class='fas fa-closed-captioning'></i>&nbsp;BM</p>
						<br>
						
						<a href="./movie_info.php" target="_blank">
						<button class="info_btn"><b><i class="fa fa-info-circle"></i></b></button>
						</a>
						
						<a href="https://www.youtube.com/embed/JORN2hkXLyM" target="_blank">
							<button class="trailer_btn"><b>Trailer</b></button>
						</a>
						
						<br>
						
						<a href="./booking.php" target="_blank">
							<button class="buy_btn"><b>Buy Ticket Now</b></button>
						</a>
						
					</div>
				</div>
				
				<div class="movie-container">
					<img src="./Images/Movie/movie2.jpg" alt="2067">
					<div class="movie_info">
						<p class="movie_name"><strong>Dating Amber</strong></p>
						<p class="movie_type"><i class='fas fa-tag'></i>&nbsp;Action</p>
						<p class="movie_duration"><i class="fa fa-clock"></i>&nbsp;3 hour</p>
						<p class="movie_language"><i class='fas fa-comment-dots'></i>&nbsp;ENG</p>
						<p class="movie_subtitle"><i class='fas fa-closed-captioning'></i>&nbsp;BM</p>
						<br>
						
						<a href="./movie_info.php" target="_blank">
						<button class="info_btn"><b><i class="fa fa-info-circle"></i></b></button>
						</a>
						
						<a href="https://www.youtube.com/embed/JORN2hkXLyM" target="_blank">
							<button class="trailer_btn" onclick="openTrailer()"><b>Trailer</b></button>
						</a>
						
						<br>
						
						<a href="./booking.php" target="_blank">
							<button class="buy_btn"><b>Buy Ticket Now</b></button>
						</a>
						
					</div>
				</div>
			</div>
		</div>
        </div>
        
        <!--Footer-->
        <jsp:include page='./footer.jsp' />
    </body>
</html>
