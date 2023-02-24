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
        <link rel="stylesheet" type="text/css" href="./CSS/movie_info.css">
	<link rel="stylesheet" type="text/css" href="./CSS/image-slider.css">
    </head>
    <body>
        <!--Header-->
	<jsp:include page='./header.jsp' />
        
        <%
        String requestID = request.getParameter("id");
            
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
        String sql ="SELECT ID, Image, Title, Category, Release_date, Running_time, Genre, Language, Subtitle, Director, Cast, Synopsis, Trailer FROM movies WHERE ID='" + requestID + "'";
        resultSet = statement.executeQuery(sql);
        while(resultSet.next()){
        %>  
        
        <!--Body-->
        <div class="body">
            <div class="movie-info">
			<div class="image">
				<img src="<%=resultSet.getString("Image")%>" alt="<%=resultSet.getString("Title")%>">
			</div>
			
			<div class="info">
				<h1 class="movie_name"><strong><%=resultSet.getString("Title")%></strong></h1>
				
				<table>
					<tr>
						<td>
							<i class="fa fa-calendar"></i>&nbsp;
							Release Date: <span><%=resultSet.getString("Release_date")%></span>
						</td>
						
						<td>
							<i class='fas fa-comment-dots'></i>&nbsp;
							Language: <span><%=resultSet.getString("Language")%></span>
						</td>
					</tr>
					
					<tr>
						<td>
							<i class="fa fa-clock"></i>&nbsp;
							Duration: <span><%=resultSet.getString("Running_time")%></span>
						</td>
						
						<td>
							<i class='fas fa-closed-captioning'></i>&nbsp;
							Subtitles: <span><%=resultSet.getString("Subtitle")%></span>
						</td>
					</tr>
					
					<tr>
						<td>
							<i class='fas fa-tag'></i>&nbsp;
							Genre: <span><%=resultSet.getString("Genre")%></span>
						</td>
						
						<td>
							
						</td>
					</tr>
				</table>
				
                                <%
                                if (resultSet.getString("Director") != null && !resultSet.getString("Director").equals("N/A")){
                                    out.print("<span class='info_header'><strong>Director</strong></span><p>" + resultSet.getString("Director") + "</p>");
                                }

                                if (resultSet.getString("Cast") != null && !resultSet.getString("Cast").equals("N/A")){
                                    out.print("<span class='info_header'><strong>Cast</strong></span><p>" + resultSet.getString("Cast") + "</p>");
                                }

                                if (resultSet.getString("Synopsis") != null && !resultSet.getString("Synopsis").equals("N/A")){
                                    out.print("<span class='info_header'><strong>Synopsis</strong></span><p>" + resultSet.getString("Synopsis") + "</p>");
                                }
                                %>
                                
				
				
				<%
                                if (resultSet.getString("Trailer") != null && !resultSet.getString("Subtitle").equals("N/A")){
                                    out.print("<a href='" + resultSet.getString("Trailer") + "' target='_blank'><button class='trailer_btn'><b>Trailer</b></button></a>");
                                }
                                else{
                                    out.print("<button class='trailer_btn' disabled><b>No Trailer</b></button>");
                                }
                                %>
				
				<a href="./booking.jsp?id=<%=resultSet.getString("ID")%>" target="_blank">
					<button class="buy_btn"><b>Buy Ticket Now</b></button>
				</a>
			</div>
		</div>
		
		<div id="other_movie" class="slider">
			
			<h1>Other Movies You Might Also Like</h1>
			
                        <!--Controller (Left)-->
			<button class="left controller" onclick="slider(-1, 0)"><i class='fas fa-chevron-circle-left'></i></button>
			
                        <%
                        sql ="SELECT ID, Image, Title, Running_time, Genre, Language, Subtitle, Trailer FROM movies WHERE Category='" + resultSet.getString("Category") + "'";
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
            <%
            }
            connection.close();
            } catch (Exception e) {
            e.printStackTrace();
            }
            %>
			
			
			
        </div>
        
        <!--Footer-->
        <jsp:include page='./footer.jsp' />
        
        <script src="./JS/image-slider.js"></script>
    </body>
</html>
