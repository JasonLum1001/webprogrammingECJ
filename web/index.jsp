<%-- 
    Document   : footer
    Created on : Feb 23, 2023, 8:24:03 PM
    Author     : Lum Jun Yean
--%>

<%@page import="java.sql.*"%>
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
                                    <%
                                    String driver = "com.mysql.jdbc.Driver";
                                    String connectionUrl = "jdbc:mysql://52.77.241.66/";
                                    String database = "ecjcinema";
                                    String userid = "root";
                                    String password = "ECJCinema123@";
                                    try {
                                    Class.forName(driver);
                                    } catch (ClassNotFoundException e) {
                                    e.printStackTrace();
                                    }
                                    Connection connection = null;
                                    Statement statement = null;
                                    ResultSet resultSet = null;
                                    %>
                                    
                                    <%
                                    try{
                                    connection = DriverManager.getConnection(connectionUrl + database+"? useTimezone=True&serverTimezone=UTC&autoReconnect=true&useSSL=false", userid, password);
                                    statement=connection.createStatement();
                                    String sql ="SELECT ID, Title FROM movies WHERE Category='Now Showing'";
                                    resultSet = statement.executeQuery(sql);
                                    int num = 0;
                                    while(resultSet.next()){
                                    %>
					<li>
                                            <span><%=resultSet.getString("Title")%></span>
						<a href="./booking.jsp?id=<%=resultSet.getString("ID")%>" target="_blank">
							<button>Book Now</button>
						</a>
					</li>
					
					<hr>
                                        
                                    <%
                                        if (num == 10){
                                            break;
                                        }
                                        num = num + 1;
                                    }
                                    connection.close();
                                    } catch (Exception e) {
                                    e.printStackTrace();
                                    }
                                    %>
					
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
				<div id="Now_Showing_content" class="tab movie_1 slider">
                                        <!--Controller (Left)-->
                                        <button class="left controller" onclick="slider(-1, 0)"><i class='fas fa-chevron-circle-left'></i></button>
					<%
                                        connection = DriverManager.getConnection(connectionUrl + database+"? useTimezone=True&serverTimezone=UTC&autoReconnect=true&useSSL=false", userid, password);
                                        statement=connection.createStatement();
                                        String sql ="SELECT ID, Image, Title, Running_time, Genre, Language, Subtitle, Trailer FROM movies WHERE Category='Now Showing'";
                                        resultSet = statement.executeQuery(sql);
                                        while(resultSet.next()){
                                        %>

                                        <div class="movies-container">
                                                <div class="movie-container">
                                                        <img src="<%=resultSet.getString("Image")%>" alt="<%=resultSet.getString("Title")%>">
                                                        <div class="movie_info">
                                                                <p class="movie_name"><strong><%=resultSet.getString("Title")%></strong></p>
                                                                <%
                                                                if (resultSet.getString("Genre") != null && !resultSet.getString("Genre").equals("N/A")){
                                                                    out.print("<p class='movie_type'><i class='fas fa-tag'></i>&nbsp;" + resultSet.getString("Genre") + "</p>");
                                                                }

                                                                if (resultSet.getString("Running_time") != null && !resultSet.getString("Running_time").equals("N/A")){
                                                                    out.print("<p class='movie_duration'><i class='fa fa-clock'></i>&nbsp;" + resultSet.getString("Running_time") + "</p>");
                                                                }

                                                                if (resultSet.getString("Language") != null && !resultSet.getString("Language").equals("N/A")){
                                                                    out.print("<p class='movie_language'><i class='fas fa-comment-dots'></i>&nbsp;" + resultSet.getString("Language") + "</p>");
                                                                }

                                                                if (resultSet.getString("Subtitle") != null && !resultSet.getString("Subtitle").equals("N/A")){
                                                                    out.print("<p class='movie_subtitle'><i class='fas fa-closed-captioning'></i>&nbsp;" + resultSet.getString("Subtitle") + "</p>");
                                                                }

                                                                %>

                                                                <br>

                                                                <a href="./movie_info.jsp?id=<%=resultSet.getInt("ID")%>" target="_blank">
                                                                <button class="info_btn"><b><i class="fa fa-info-circle"></i></b></button>
                                                                </a>

                                                                <%
                                                                if (resultSet.getString("Trailer") != null && !resultSet.getString("Subtitle").equals("N/A")){
                                                                    out.print("<a href='" + resultSet.getString("Trailer") + "' target='_blank'><button class='trailer_btn'><b>Trailer</b></button></a>");
                                                                }
                                                                else{
                                                                    out.print("<button class='trailer_btn' disabled><b>No Trailer</b></button>");
                                                                }
                                                                %>

                                                                <br>

                                                                <a href="./booking.jsp?id=<%=resultSet.getInt("ID")%>" target="_blank">
                                                                        <button class="buy_btn"><b>Buy Ticket Now</b></button>
                                                                </a>

                                                        </div>
                                                </div>
                                        </div>

                                        <%
                                        }
                                        %>
                                        
                                        <!--Controller (Right)-->
                                        <button class="right controller" onclick="slider(1, 0)"><i class='fas fa-chevron-circle-right'></i></button>
				</div>

				<!--Advance Sales-->
				<div id="Advance_Sales_content" class="tab movie_2 slider">
                                        <!--Controller (Left)-->
                                        <button class="left controller" onclick="slider(-1, 1)"><i class='fas fa-chevron-circle-left'></i></button>
					<%
                                        sql ="SELECT ID, Image, Title, Running_time, Genre, Language, Subtitle, Trailer FROM movies WHERE Category='Advance Sales'";
                                        resultSet = statement.executeQuery(sql);
                                        while(resultSet.next()){
                                        %>

                                        <div class="movies-container">
                                                <div class="movie-container">
                                                        <img src="<%=resultSet.getString("Image")%>" alt="<%=resultSet.getString("Title")%>">
                                                        <div class="movie_info">
                                                                <p class="movie_name"><strong><%=resultSet.getString("Title")%></strong></p>
                                                                <%
                                                                if (resultSet.getString("Genre") != null && !resultSet.getString("Genre").equals("N/A")){
                                                                    out.print("<p class='movie_type'><i class='fas fa-tag'></i>&nbsp;" + resultSet.getString("Genre") + "</p>");
                                                                }

                                                                if (resultSet.getString("Running_time") != null && !resultSet.getString("Running_time").equals("N/A")){
                                                                    out.print("<p class='movie_duration'><i class='fa fa-clock'></i>&nbsp;" + resultSet.getString("Running_time") + "</p>");
                                                                }

                                                                if (resultSet.getString("Language") != null && !resultSet.getString("Language").equals("N/A")){
                                                                    out.print("<p class='movie_language'><i class='fas fa-comment-dots'></i>&nbsp;" + resultSet.getString("Language") + "</p>");
                                                                }

                                                                if (resultSet.getString("Subtitle") != null && !resultSet.getString("Subtitle").equals("N/A")){
                                                                    out.print("<p class='movie_subtitle'><i class='fas fa-closed-captioning'></i>&nbsp;" + resultSet.getString("Subtitle") + "</p>");
                                                                }

                                                                %>

                                                                <br>

                                                                <a href="./movie_info.jsp?id=<%=resultSet.getInt("ID")%>" target="_blank">
                                                                <button class="info_btn"><b><i class="fa fa-info-circle"></i></b></button>
                                                                </a>

                                                                <%
                                                                if (resultSet.getString("Trailer") != null && !resultSet.getString("Subtitle").equals("N/A")){
                                                                    out.print("<a href='" + resultSet.getString("Trailer") + "' target='_blank'><button class='trailer_btn'><b>Trailer</b></button></a>");
                                                                }
                                                                else{
                                                                    out.print("<button class='trailer_btn' disabled><b>No Trailer</b></button>");
                                                                }
                                                                %>

                                                                <br>

                                                                <a href="./booking.jsp?id=<%=resultSet.getInt("ID")%>" target="_blank">
                                                                        <button class="buy_btn"><b>Buy Ticket Now</b></button>
                                                                </a>

                                                        </div>
                                                </div>
                                        </div>

                                        <%
                                        }
                                        %>
                                        
                                        <!--Controller (Right)-->
                                        <button class="right controller" onclick="slider(1, 1)"><i class='fas fa-chevron-circle-right'></i></button>
				</div>

				<!--Coming Soon-->
				<div id="Coming_Soon_content" class="tab movie_3 slider">
                                        <!--Controller (Left)-->
                                        <button class="left controller" onclick="slider(-1, 2)"><i class='fas fa-chevron-circle-left'></i></button>
					<%
                                        sql ="SELECT ID, Image, Title, Running_time, Genre, Language, Subtitle, Trailer FROM movies WHERE Category='Coming Soon'";
                                        resultSet = statement.executeQuery(sql);
                                        while(resultSet.next()){
                                        %>

                                        <div class="movies-container">
                                                <div class="movie-container">
                                                        <img src="<%=resultSet.getString("Image")%>" alt="<%=resultSet.getString("Title")%>">
                                                        <div class="movie_info">
                                                                <p class="movie_name"><strong><%=resultSet.getString("Title")%></strong></p>
                                                                <%
                                                                if (resultSet.getString("Genre") != null && !resultSet.getString("Genre").equals("N/A")){
                                                                    out.print("<p class='movie_type'><i class='fas fa-tag'></i>&nbsp;" + resultSet.getString("Genre") + "</p>");
                                                                }

                                                                if (resultSet.getString("Running_time") != null && !resultSet.getString("Running_time").equals("N/A")){
                                                                    out.print("<p class='movie_duration'><i class='fa fa-clock'></i>&nbsp;" + resultSet.getString("Running_time") + "</p>");
                                                                }

                                                                if (resultSet.getString("Language") != null && !resultSet.getString("Language").equals("N/A")){
                                                                    out.print("<p class='movie_language'><i class='fas fa-comment-dots'></i>&nbsp;" + resultSet.getString("Language") + "</p>");
                                                                }

                                                                if (resultSet.getString("Subtitle") != null && !resultSet.getString("Subtitle").equals("N/A")){
                                                                    out.print("<p class='movie_subtitle'><i class='fas fa-closed-captioning'></i>&nbsp;" + resultSet.getString("Subtitle") + "</p>");
                                                                }

                                                                %>

                                                                <br>

                                                                <a href="./movie_info.jsp?id=<%=resultSet.getInt("ID")%>" target="_blank">
                                                                <button class="info_btn"><b><i class="fa fa-info-circle"></i></b></button>
                                                                </a>

                                                                <%
                                                                if (resultSet.getString("Trailer") != null && !resultSet.getString("Subtitle").equals("N/A")){
                                                                    out.print("<a href='" + resultSet.getString("Trailer") + "' target='_blank'><button class='trailer_btn'><b>Trailer</b></button></a>");
                                                                }
                                                                else{
                                                                    out.print("<button class='trailer_btn' disabled><b>No Trailer</b></button>");
                                                                }
                                                                %>

                                                                <br>

                                                                <a href="./booking.jsp?id=<%=resultSet.getInt("ID")%>" target="_blank">
                                                                        <button class="buy_btn"><b>Buy Ticket Now</b></button>
                                                                </a>

                                                        </div>
                                                </div>
                                        </div>

                                        <%
                                        }
                                        %>
                                        
                                        <!--Controller (Right)-->
                                        <button class="right controller" onclick="slider(1, 2)"><i class='fas fa-chevron-circle-right'></i></button>
				</div>
				
			</div>
			
		</div>
		</div>
        </div>
        
        <!--Footer-->
        <jsp:include page='./footer.jsp' />
        
        <script src="./JS/image-slider.js"></script>
    </body>
</html>
