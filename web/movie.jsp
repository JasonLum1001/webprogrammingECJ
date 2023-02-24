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
                
 		<!--Now Showing-->
		<div id="Now_Showing_content" class="tab movie_1">
			<div class="movies-container">
				
                            <%
                            try{
                            connection = DriverManager.getConnection(connectionUrl + database+"? useTimezone=True&serverTimezone=UTC&autoReconnect=true&useSSL=false", userid, password);
                            statement=connection.createStatement();
                            String sql ="SELECT ID, Image, Title, Running_time, Genre, Language, Subtitle, Trailer FROM movies WHERE Category='Now Showing'";
                            resultSet = statement.executeQuery(sql);
                            while(resultSet.next()){
                            %>
                            
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
				
                            <%
                            }
                            %>
			</div>
		</div>
		
		<!--Advance Sales-->
		<div id="Advance_Sales_content" class="tab movie_2">
			<div class="movies-container">
                            <%
                            sql ="SELECT ID, Image, Title, Running_time, Genre, Language, Subtitle, Trailer FROM movies WHERE Category='Advance Sales'";
                            resultSet = statement.executeQuery(sql);
                            while(resultSet.next()){
                            %>
                            
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
				
                            <%
                            }
                            %>
				
			</div>
		</div>
		
		<!--Coming Soon-->
		<div id="Coming_Soon_content" class="tab movie_3">
			<div class="movies-container">
                            <%
                            sql ="SELECT ID, Image, Title, Running_time, Genre, Language, Subtitle, Trailer FROM movies WHERE Category='Coming Soon'";
                            resultSet = statement.executeQuery(sql);
                            while(resultSet.next()){
                            %>
                            
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
				
                            <%
                            }
                            connection.close();
                            } catch (Exception e) {
                            e.printStackTrace();
                            }
                            %>
				
			</div>
		</div>
        </div>
        
        <!--Footer-->
        <jsp:include page='./footer.jsp' />
    </body>
</html>
