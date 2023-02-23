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
        <link rel="stylesheet" type="text/css" href="./CSS/movie_info.css">
	<link rel="stylesheet" type="text/css" href="./CSS/image-slider.css">
    </head>
    <body>
        <!--Header-->
	<jsp:include page='./header.jsp' />
        
        <!--Body-->
        <div class="body">
            <div class="movie-info">
			<div class="image">
				<img src="./Images/Movie/movie1.jpg" alt="2067">
			</div>
			
			<div class="info">
				<h1 class="movie_name"><strong>Avatar: The Way Of Water</strong></h1>
				
				<table>
					<tr>
						<td>
							<i class="fa fa-calendar"></i>&nbsp;
							Release Date: <span>15 December 2022</span>
						</td>
						
						<td>
							<i class='fas fa-comment-dots'></i>&nbsp;
							Language: <span>ENG</span>
						</td>
					</tr>
					
					<tr>
						<td>
							<i class="fa fa-clock"></i>&nbsp;
							Duration: <span>3 hr 12 mins</span>
						</td>
						
						<td>
							<i class='fas fa-closed-captioning'></i>&nbsp;
							Subtitles: <span>BM</span>
						</td>
					</tr>
					
					<tr>
						<td>
							<i class='fas fa-tag'></i>&nbsp;
							Genre: <span>ACTION</span>
						</td>
						
						<td>
							
						</td>
					</tr>
				</table>
				
				<span class="info_header"><strong>Director</strong></span>
				<p>James Cameron</p>
				
				<span class="info_header"><strong>Cast</strong></span>
				<p>Zoe Saldana, Kate Winslet, Sigourney Weaver</p>
				
				<span class="info_header"><strong>Synopsis</strong></span>
				<p>Jake, Neytiri and their kids try to stay together and go to great lengths to protect each other and protect the place they live as their land becomes torn apart. The Sully family endures danger, battles to the death, and tragedy as they are displaced from their homes and flee to the Metkayina`s waterworld, which disrupts tribal politics.</p>
				
				<a href="https://www.youtube.com/embed/JORN2hkXLyM" target="_blank">
					<button class="trailer_btn">
						<b><i class='far fa-play-circle'>&nbsp;</i>Watch Trailer</b>
					</button>
				</a>
				
				<a href="./booking.jsp" target="_blank">
					<button class="buy_btn"><b>Buy Ticket Now</b></button>
				</a>
			</div>
		</div>
		
		<div id="other_movie" class="slider">
			
			<h1>Other Movies You Might Also Like</h1>
			
			<button class="left controller" onclick="slider(-1)"><i class='fas fa-chevron-circle-left'></i></button>
			
			<div class="movies-container">
				<div class="movie-container">
					<img src="./Images/Movie/movie1.jpg" alt="2067">
					<div class="movie_info">
						<p class="movie_name"><strong>0</strong></p>
						<p class="movie_type"><i class='fas fa-tag'></i>&nbsp;Action</p>
						<p class="movie_duration"><i class="fa fa-clock"></i>&nbsp;3 hour</p>
						<p class="movie_language"><i class='fas fa-comment-dots'></i>&nbsp;ENG</p>
						<p class="movie_subtitle"><i class='fas fa-closed-captioning'></i>&nbsp;BM</p>
						<br>
						<button class="info_btn" onclick="openInfo()"><b><i class="fa fa-info-circle"></i></b></button>
						<button class="trailer_btn" onclick="openTrailer()"><b>Trailer</b></button>
						<br>
						<button class="buy_btn" onclick="openBooking()"><b>Buy Ticket Now</b></button>
					</div>
				</div>
			</div>
			
			<div class="movies-container">
				<div class="movie-container">
					<img src="./Images/Movie/movie2.jpg" alt="2067">
					<div class="movie_info">
						<p class="movie_name"><strong>1</strong></p>
						<p class="movie_type"><i class='fas fa-tag'></i>&nbsp;Action</p>
						<p class="movie_duration"><i class="fa fa-clock"></i>&nbsp;3 hour</p>
						<p class="movie_language"><i class='fas fa-comment-dots'></i>&nbsp;ENG</p>
						<p class="movie_subtitle"><i class='fas fa-closed-captioning'></i>&nbsp;BM</p>
						<br>
						<button class="info_btn" onclick="openInfo()"><b><i class="fa fa-info-circle"></i></b></button>
						<button class="trailer_btn" onclick="openTrailer()"><b>Trailer</b></button>
						<br>
						<button class="buy_btn" onclick="openBooking()"><b>Buy Ticket Now</b></button>
					</div>
				</div>
			</div>
			
			<div class="movies-container">
				<div class="movie-container">
					<img src="./Images/Movie/movie3.jpg" alt="2067">
					<div class="movie_info">
						<p class="movie_name"><strong>2</strong></p>
						<p class="movie_type"><i class='fas fa-tag'></i>&nbsp;Action</p>
						<p class="movie_duration"><i class="fa fa-clock"></i>&nbsp;3 hour</p>
						<p class="movie_language"><i class='fas fa-comment-dots'></i>&nbsp;ENG</p>
						<p class="movie_subtitle"><i class='fas fa-closed-captioning'></i>&nbsp;BM</p>
						<br>
						<button class="info_btn" onclick="openInfo()"><b><i class="fa fa-info-circle"></i></b></button>
						<button class="trailer_btn" onclick="openTrailer()"><b>Trailer</b></button>
						<br>
						<button class="buy_btn" onclick="openBooking()"><b>Buy Ticket Now</b></button>
					</div>
				</div>
			</div>
			
			<div class="movies-container">
				<div class="movie-container">
					<img src="./Images/Movie/movie4.jpg" alt="2067">
					<div class="movie_info">
						<p class="movie_name"><strong>3</strong></p>
						<p class="movie_type"><i class='fas fa-tag'></i>&nbsp;Action</p>
						<p class="movie_duration"><i class="fa fa-clock"></i>&nbsp;3 hour</p>
						<p class="movie_language"><i class='fas fa-comment-dots'></i>&nbsp;ENG</p>
						<p class="movie_subtitle"><i class='fas fa-closed-captioning'></i>&nbsp;BM</p>
						<br>
						<button class="info_btn" onclick="openInfo()"><b><i class="fa fa-info-circle"></i></b></button>
						<button class="trailer_btn" onclick="openTrailer()"><b>Trailer</b></button>
						<br>
						<button class="buy_btn" onclick="openBooking()"><b>Buy Ticket Now</b></button>
					</div>
				</div>
			</div>
			
			<div class="movies-container">
				<div class="movie-container">
					<img src="./Images/Movie/movie1.jpg" alt="2067">
					<div class="movie_info">
						<p class="movie_name"><strong>4</strong></p>
						<p class="movie_type"><i class='fas fa-tag'></i>&nbsp;Action</p>
						<p class="movie_duration"><i class="fa fa-clock"></i>&nbsp;3 hour</p>
						<p class="movie_language"><i class='fas fa-comment-dots'></i>&nbsp;ENG</p>
						<p class="movie_subtitle"><i class='fas fa-closed-captioning'></i>&nbsp;BM</p>
						<br>
						<button class="info_btn" onclick="openInfo()"><b><i class="fa fa-info-circle"></i></b></button>
						<button class="trailer_btn" onclick="openTrailer()"><b>Trailer</b></button>
						<br>
						<button class="buy_btn" onclick="openBooking()"><b>Buy Ticket Now</b></button>
					</div>
				</div>
			</div>
			
			<div class="movies-container">
				<div class="movie-container">
					<img src="./Images/Movie/movie2.jpg" alt="2067">
					<div class="movie_info">
						<p class="movie_name"><strong>5</strong></p>
						<p class="movie_type"><i class='fas fa-tag'></i>&nbsp;Action</p>
						<p class="movie_duration"><i class="fa fa-clock"></i>&nbsp;3 hour</p>
						<p class="movie_language"><i class='fas fa-comment-dots'></i>&nbsp;ENG</p>
						<p class="movie_subtitle"><i class='fas fa-closed-captioning'></i>&nbsp;BM</p>
						<br>
						<button class="info_btn" onclick="openInfo()"><b><i class="fa fa-info-circle"></i></b></button>
						<button class="trailer_btn" onclick="openTrailer()"><b>Trailer</b></button>
						<br>
						<button class="buy_btn" onclick="openBooking()"><b>Buy Ticket Now</b></button>
					</div>
				</div>
			</div>
			
			<div class="movies-container">
				<div class="movie-container">
					<img src="./Images/Movie/movie3.jpg" alt="2067">
					<div class="movie_info">
						<p class="movie_name"><strong>6</strong></p>
						<p class="movie_type"><i class='fas fa-tag'></i>&nbsp;Action</p>
						<p class="movie_duration"><i class="fa fa-clock"></i>&nbsp;3 hour</p>
						<p class="movie_language"><i class='fas fa-comment-dots'></i>&nbsp;ENG</p>
						<p class="movie_subtitle"><i class='fas fa-closed-captioning'></i>&nbsp;BM</p>
						<br>
						<button class="info_btn" onclick="openInfo()"><b><i class="fa fa-info-circle"></i></b></button>
						<button class="trailer_btn" onclick="openTrailer()"><b>Trailer</b></button>
						<br>
						<button class="buy_btn" onclick="openBooking()"><b>Buy Ticket Now</b></button>
					</div>
				</div>
			</div>
			
			<div class="movies-container">
				<div class="movie-container">
					<img src="./Images/Movie/movie4.jpg" alt="2067">
					<div class="movie_info">
						<p class="movie_name"><strong>7</strong></p>
						<p class="movie_type"><i class='fas fa-tag'></i>&nbsp;Action</p>
						<p class="movie_duration"><i class="fa fa-clock"></i>&nbsp;3 hour</p>
						<p class="movie_language"><i class='fas fa-comment-dots'></i>&nbsp;ENG</p>
						<p class="movie_subtitle"><i class='fas fa-closed-captioning'></i>&nbsp;BM</p>
						<br>
						<button class="info_btn" onclick="openInfo()"><b><i class="fa fa-info-circle"></i></b></button>
						<button class="trailer_btn" onclick="openTrailer()"><b>Trailer</b></button>
						<br>
						<button class="buy_btn" onclick="openBooking()"><b>Buy Ticket Now</b></button>
					</div>
				</div>
			</div>
			
			<div class="movies-container">
				<div class="movie-container">
					<img src="./Images/Movie/movie1.jpg" alt="2067">
					<div class="movie_info">
						<p class="movie_name"><strong>8</strong></p>
						<p class="movie_type"><i class='fas fa-tag'></i>&nbsp;Action</p>
						<p class="movie_duration"><i class="fa fa-clock"></i>&nbsp;3 hour</p>
						<p class="movie_language"><i class='fas fa-comment-dots'></i>&nbsp;ENG</p>
						<p class="movie_subtitle"><i class='fas fa-closed-captioning'></i>&nbsp;BM</p>
						<br>
						<button class="info_btn" onclick="openInfo()"><b><i class="fa fa-info-circle"></i></b></button>
						<button class="trailer_btn" onclick="openTrailer()"><b>Trailer</b></button>
						<br>
						<button class="buy_btn" onclick="openBooking()"><b>Buy Ticket Now</b></button>
					</div>
				</div>
			</div>
			
			<!--Controller-->
			<button class="right controller" onclick="slider(1)"><i class='fas fa-chevron-circle-right'></i></button>
		
		</div>
        </div>
        
        <!--Footer-->
        <jsp:include page='./footer.jsp' />
    </body>
</html>
