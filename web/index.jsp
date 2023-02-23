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
        <link rel="stylesheet" type="text/css" href="./CSS/home.css">
        <link rel="stylesheet" type="text/css" href="./CSS/slideshow.css">
	<link rel="stylesheet" type="text/css" href="./CSS/image-slider.css">
    </head>
    <body>
        <!--Header-->
	<jsp:include page='./header.jsp' />
        
        <!--Body-->
        <div class="body">
            <!-- Slideshow container -->
		<div id="slideshow">
			<div class="slide-wrapper">
				<div class="slide">
					<a href="" title="Coming Soon Cinema">
						<img src="./Images/Announcement/advertisement1.PNG">
					</a>
				</div>
				
				<div class="slide">
					<a href="" title="Dating Amber">
						<img src="./Images/Announcement/advertisement2.PNG">
					</a>
				</div>
				
				<div class="slide">
					<a href="" title="Soul">
						<img src="./Images/Announcement/advertisement3.PNG">
					</a>
				</div>
			</div>
		</div>
		
		<div class="m_container"> 
			<!-- Membership container -->
			<div>
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
							<a href="./login.jsp">
								<button class="signupBtn">Sign Up Now!  >></button>
							</a>
						</th>
					</tr>
				</table>
			</div>
			
			<div class="top_ten">
				<h1>Top 10 Movies</h1>
				<ol>
					<li>
						<span>A Guilty Conscience</span>
						<a href="./booking.jsp" target="_blank">
							<button>Book Now</button>
						</a>
					</li>
					
					<hr>
					
					<li>
						<span>Coast Guard Malaysia: Ops Helang</span>
						<a href="./booking.jsp" target="_blank">
							<button>Book Now</button>
						</a>
					</li>
					
					<hr>
					
					<li>
						<span>3D Titanic</span>
						<a href="./booking.jsp" target="_blank">
							<button>Book Now</button>
						</a>
					</li>
					
					<hr>
					
					<li>
						<span>Harum Malam</span>
						<a href="./booking.jsp" target="_blank">
							<button>Book Now</button>
						</a>
					</li>
					
					<hr>
					
					<li>
						<span>The King of Musang King</span>
						<a href="./booking.jsp" target="_blank">
							<button>Book Now</button>
						</a>
					</li>
					
					<hr>
					
					<li>
						<span>Someday Or One Day</span>
						<a href="./booking.jsp" target="_blank">
							<button>Book Now</button>
						</a>
					</li>
					
					<hr>
					
					<li>
						<span>Ma, I Love You</span>
						<a href="./booking.jsp" target="_blank">
							<button>Book Now</button>
						</a>
					</li>
					
					<hr>
					
					<li>
						<span>The Wandering Earth 2</span>
						<a href="./booking.jsp" target="_blank">
							<button>Book Now</button>
						</a>
					</li>
					
					<hr>
					
					<li>
						<span>Avatar: The Way Of Water</span>
						<a href="./booking.jsp" target="_blank">
							<button>Book Now</button>
						</a>
					</li>
					
					<hr>
					
					<li>
						<span>Pathaan</span>
						<a href="./booking.jsp" target="_blank">
							<button>Book Now</button>
						</a>
					</li>
					
					<hr>
				</ol>
			</div>
		</div>
		
		<!-- Movie Tabs -->
		<div class="movie_tabs">
			<div>
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

								<a href="./movie_info.jsp" target="_blank">
								<button class="info_btn"><b><i class="fa fa-info-circle"></i></b></button>
								</a>

								<a href="https://www.youtube.com/embed/JORN2hkXLyM" target="_blank">
									<button class="trailer_btn" onclick="openTrailer()"><b>Trailer</b></button>
								</a>

								<br>

								<a href="./booking.jsp" target="_blank">
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

								<a href="./movie_info.jsp" target="_blank">
								<button class="info_btn"><b><i class="fa fa-info-circle"></i></b></button>
								</a>

								<a href="https://www.youtube.com/embed/JORN2hkXLyM" target="_blank">
									<button class="trailer_btn" onclick="openTrailer()"><b>Trailer</b></button>
								</a>

								<br>

								<a href="./booking.jsp" target="_blank">
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

								<a href="./movie_info.jsp" target="_blank">
								<button class="info_btn"><b><i class="fa fa-info-circle"></i></b></button>
								</a>

								<a href="https://www.youtube.com/embed/JORN2hkXLyM" target="_blank">
									<button class="trailer_btn" onclick="openTrailer()"><b>Trailer</b></button>
								</a>

								<br>

								<a href="./booking.jsp" target="_blank">
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

								<a href="./movie_info.jsp" target="_blank">
								<button class="info_btn"><b><i class="fa fa-info-circle"></i></b></button>
								</a>

								<a href="https://www.youtube.com/embed/JORN2hkXLyM" target="_blank">
									<button class="trailer_btn" onclick="openTrailer()"><b>Trailer</b></button>
								</a>

								<br>

								<a href="./booking.jsp" target="_blank">
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

								<a href="./movie_info.jsp" target="_blank">
								<button class="info_btn"><b><i class="fa fa-info-circle"></i></b></button>
								</a>

								<a href="https://www.youtube.com/embed/JORN2hkXLyM" target="_blank">
									<button class="trailer_btn" onclick="openTrailer()"><b>Trailer</b></button>
								</a>

								<br>

								<a href="./booking.jsp" target="_blank">
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

								<a href="./movie_info.jsp" target="_blank">
								<button class="info_btn"><b><i class="fa fa-info-circle"></i></b></button>
								</a>

								<a href="https://www.youtube.com/embed/JORN2hkXLyM" target="_blank">
									<button class="trailer_btn" onclick="openTrailer()"><b>Trailer</b></button>
								</a>

								<br>

								<a href="./booking.jsp" target="_blank">
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

								<a href="./movie_info.jsp" target="_blank">
								<button class="info_btn"><b><i class="fa fa-info-circle"></i></b></button>
								</a>

								<a href="https://www.youtube.com/embed/JORN2hkXLyM" target="_blank">
									<button class="trailer_btn" onclick="openTrailer()"><b>Trailer</b></button>
								</a>

								<br>

								<a href="./booking.jsp" target="_blank">
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

								<a href="./movie_info.jsp" target="_blank">
								<button class="info_btn"><b><i class="fa fa-info-circle"></i></b></button>
								</a>

								<a href="https://www.youtube.com/embed/JORN2hkXLyM" target="_blank">
									<button class="trailer_btn"><b>Trailer</b></button>
								</a>

								<br>

								<a href="./booking.jsp" target="_blank">
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

								<a href="./movie_info.jsp" target="_blank">
								<button class="info_btn"><b><i class="fa fa-info-circle"></i></b></button>
								</a>

								<a href="https://www.youtube.com/embed/JORN2hkXLyM" target="_blank">
									<button class="trailer_btn" onclick="openTrailer()"><b>Trailer</b></button>
								</a>

								<br>

								<a href="./booking.jsp" target="_blank">
									<button class="buy_btn"><b>Buy Ticket Now</b></button>
								</a>

							</div>
						</div>
					</div>
				</div>
				
			</div>
			
		</div>
		</div>
        </div>
        
        <!--Footer-->
        <jsp:include page='./footer.jsp' />
    </body>
</html>
