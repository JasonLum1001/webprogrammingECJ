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
        <link rel="stylesheet" type="text/css" href="./CSS/booking.css">
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
        
        <!--Body-->
        <div class="body">
            <!-- Progress Bar-->
		<div class="progress_bar_container">
			<div class="progress_bar">
				<div class="progression"></div>
			</div>
		</div>
            
                <%
                try{
                connection = DriverManager.getConnection(connectionUrl + database+"? useTimezone=True&serverTimezone=UTC&autoReconnect=true&useSSL=false", userid, password);
                statement=connection.createStatement();
                //String sql = "SELECT DISTINCT movies.ID, movies.Image, movies.Title, movies_avail.Date, movies_avail.Time, movies_avail.Booked_Seats FROM movies INNER JOIN movies_avail ON movies.Title=movies_avail.Title WHERE movies.ID='" + requestID + "' ORDER BY movies.ID ASC, movies_avail.Date ASC, movies_avail.Time ASC;";
                String sql = "SELECT DISTINCT Image, Title FROM movies WHERE movies.ID='" + requestID + "'";
                resultSet = statement.executeQuery(sql);
                while(resultSet.next()){
                %>  
		
		<div class="purchase_system">
			<details id="info_detail" open>
				<summary class="tab_header"><i class='fa fa-plus'></i><span>Info</span></summary>
				
				<form action="" method="get">
					<div class="image_container">
						<img src="<%=resultSet.getString("Image")%>" alt="<%=resultSet.getString("Title")%>">
					</div>
					
					<div>
                                            <input id="movie" value="<%=resultSet.getString("Title")%>" name="movie" readonly>
                                                    <!-- <button onclick="window.location.href='movie.php'"><i class='fas fa-video'></i>Select Movie</button> -->
                                            <br>

                                            <dl>
                                                <dt><label>Select Location:</label></dt>
                                                <dd>
                                                    <select id="location" name="location">
                                                        <option value="One Utama">One Utama</option>
                                                        <option value="Suria KLCC">Suria KLCC</option>
                                                    </select>
                                                </dd>
                                                <br>
                                                <!-- Use card layout to show date and time or use input type -->
                                                <dt><label>Select Date</label></dt>
                                                <dd>
                                                    <input type="date" id="date" name="date" value="2023-02-13">
                                                </dd>
                                                <br>
                                                <dt><label>Select Time</label></dt>
                                                <dd>
                                                    <input type="time" id="time" name="time" value="12:00">
                                                </dd>
                                            </dl>

                                            <input type="Submit" class="submitBtn" value="Proceed to Seat">
					</div>
				</form>
				
			</details>
			
			<details id="seat_detail">
				<summary class="tab_header"><i class='fa fa-plus'></i><span>Seat</span></summary>
				<div class="info_div">
					<div>
						<div>
							<label class="info_label1">Movie</label>
							<span>:</span>
							<span class="info_detail1">2067</span>
						</div>
						<div>
							<label class="info_label2">Location</label>
							<span>:</span>
							<span class="info_detail2">One Utama</span>
						</div>
						<div>
							<label class="info_label1">Date</label>
							<span>:</span>
							<span class="info_detail1">13/2/2023</span>
						</div>
						<div>
							<label class="info_label2">Time</label>
							<span>:</span>
							<span class="info_detail2">12:00 PM</span>
						</div>
						<div>
							<label class="info_label3">Seat Chosen</label>
							<span>:</span>
							<input class="info_detail3" name="seats" value="C101, C102, C103" readonly>
						</div>
					</div>
				</div>
					
				
				<div class="legend">
					<div>
						<input type="checkbox" id="booked_seat" class="preview_ seats">
						<span class="seatbox"></span>
						<span>Booked Seats</span>
					</div>
					<div>
						<input type="checkbox" id="available_seat" class="preview_ seats">
						<span class="seatbox"></span>
						<span>Available Seats</span>
					</div>
					<div>
						<input type="checkbox" id="selected_seat" class="preview_ seats" checked>
						<span class="seatbox"></span>
						<span>Selected Seats</span>
					</div>
				</div>
				
				<div class="seat_selection">
					<table>
					    <tr>
                            <td class="seat_row"></td>
                            <td class="seatsN">1</td>
                            <td class="seatsN">2</td>
                            <td></td>
                            <td class="seatsN">3</td>
                            <td class="seatsN">4</td>
                            <td class="seatsN">5</td>
                            <td class="seatsN">6</td>
                            <td class="seatsN">7</td>
                            <td class="seatsN">8</td>
                            <td class="seatsN">9</td>
                            <td class="seatsN">10</td>
                            <td class="seatsN">11</span></td>
                            <td></td>
                            <td class="seatsN">12</span></td>
                            <td class="seatsN">13</span></td>
                        </tr>

						<tr>
							<td class="seat_row">A</td>
							<td><input type="checkbox" id="available_seat" class="seats"><span class="seatbox"></span></td>
							<td><input type="checkbox" id="available_seat" class="seats"><span class="seatbox"></span></td>
							<td></td>
							<td><input type="checkbox" id="available_seat" class="seats"><span class="seatbox"></span></td>
							<td><input type="checkbox" id="available_seat" class="seats"><span class="seatbox"></span></td>
							<td><input type="checkbox" id="available_seat" class="seats"><span class="seatbox"></span></td>
							<td><input type="checkbox" id="available_seat" class="seats"><span class="seatbox"></span></td>
							<td><input type="checkbox" id="available_seat" class="seats"><span class="seatbox"></span></td>
							<td><input type="checkbox" id="available_seat" class="seats"><span class="seatbox"></span></td>
							<td><input type="checkbox" id="available_seat" class="seats"><span class="seatbox"></span></td>
							<td><input type="checkbox" id="available_seat" class="seats"><span class="seatbox"></span></td>
							<td><input type="checkbox" id="available_seat" class="seats"><span class="seatbox"></span></td>
							<td></td>
							<td><input type="checkbox" id="available_seat" class="seats"><span class="seatbox"></span></td>
							<td><input type="checkbox" id="available_seat" class="seats"><span class="seatbox"></span></td>

						</tr>
						
						<tr>
							<td class="seat_row">B</td>
							<td><input type="checkbox" id="available_seat" class="seats"><span class="seatbox"></span></td>
							<td><input type="checkbox" id="available_seat" class="seats"><span class="seatbox"></span></td>
							<td></td>
							<td><input type="checkbox" id="available_seat" class="seats"><span class="seatbox"></span></td>
							<td><input type="checkbox" id="available_seat" class="seats"><span class="seatbox"></span></td>
							<td><input type="checkbox" id="available_seat" class="seats"><span class="seatbox"></span></td>
							<td><input type="checkbox" id="available_seat" class="seats"><span class="seatbox"></span></td>
							<td><input type="checkbox" id="available_seat" class="seats"><span class="seatbox"></span></td>
							<td><input type="checkbox" id="available_seat" class="seats"><span class="seatbox"></span></td>
							<td><input type="checkbox" id="available_seat" class="seats"><span class="seatbox"></span></td>
							<td><input type="checkbox" id="available_seat" class="seats"><span class="seatbox"></span></td>
							<td><input type="checkbox" id="available_seat" class="seats"><span class="seatbox"></span></td>
							<td></td>
							<td><input type="checkbox" id="available_seat" class="seats"><span class="seatbox"></span></td>
							<td><input type="checkbox" id="available_seat" class="seats"><span class="seatbox"></span></td>
						</tr>
						
						<tr>
							<td class="seat_row">C</td>
							<td><input type="checkbox" id="available_seat" class="seats"><span class="seatbox"></span></td>
							<td><input type="checkbox" id="available_seat" class="seats"><span class="seatbox"></span></td>
							<td></td>
							<td><input type="checkbox" id="available_seat" class="seats"><span class="seatbox"></span></td>
							<td><input type="checkbox" id="available_seat" class="seats"><span class="seatbox"></span></td>
							<td><input type="checkbox" id="available_seat" class="seats"><span class="seatbox"></span></td>
							<td><input type="checkbox" id="available_seat" class="seats"><span class="seatbox"></span></td>
							<td><input type="checkbox" id="available_seat" class="seats"><span class="seatbox"></span></td>
							<td><input type="checkbox" id="available_seat" class="seats"><span class="seatbox"></span></td>
							<td><input type="checkbox" id="available_seat" class="seats"><span class="seatbox"></span></td>
							<td><input type="checkbox" id="available_seat" class="seats"><span class="seatbox"></span></td>
							<td><input type="checkbox" id="available_seat" class="seats"><span class="seatbox"></span></td>
							<td></td>
							<td><input type="checkbox" id="available_seat" class="seats"><span class="seatbox"></span></td>
							<td><input type="checkbox" id="available_seat" class="seats"><span class="seatbox"></span></td>
						</tr>
						
						<tr>
							<td class="seat_row">D</td>
							<td><input type="checkbox" id="available_seat" class="seats"><span class="seatbox"></span></td>
							<td><input type="checkbox" id="available_seat" class="seats"><span class="seatbox"></span></td>
							<td></td>
							<td><input type="checkbox" id="available_seat" class="seats"><span class="seatbox"></span></td>
							<td><input type="checkbox" id="available_seat" class="seats"><span class="seatbox"></span></td>
							<td><input type="checkbox" id="available_seat" class="seats"><span class="seatbox"></span></td>
							<td><input type="checkbox" id="available_seat" class="seats"><span class="seatbox"></span></td>
							<td><input type="checkbox" id="available_seat" class="seats"><span class="seatbox"></span></td>
							<td><input type="checkbox" id="available_seat" class="seats"><span class="seatbox"></span></td>
							<td><input type="checkbox" id="available_seat" class="seats"><span class="seatbox"></span></td>
							<td><input type="checkbox" id="available_seat" class="seats"><span class="seatbox"></span></td>
							<td><input type="checkbox" id="available_seat" class="seats"><span class="seatbox"></span></td>
							<td></td>
							<td><input type="checkbox" id="available_seat" class="seats"><span class="seatbox"></span></td>
							<td><input type="checkbox" id="available_seat" class="seats"><span class="seatbox"></span></td>
						</tr>
						
						<tr>
							<td class="seat_row">E</td>
							<td><input type="checkbox" id="available_seat" class="seats"><span class="seatbox"></span></td>
							<td><input type="checkbox" id="available_seat" class="seats"><span class="seatbox"></span></td>
							<td></td>
							<td><input type="checkbox" id="available_seat" class="seats"><span class="seatbox"></span></td>
							<td><input type="checkbox" id="available_seat" class="seats"><span class="seatbox"></span></td>
							<td><input type="checkbox" id="available_seat" class="seats"><span class="seatbox"></span></td>
							<td><input type="checkbox" id="available_seat" class="seats"><span class="seatbox"></span></td>
							<td><input type="checkbox" id="available_seat" class="seats"><span class="seatbox"></span></td>
							<td><input type="checkbox" id="available_seat" class="seats"><span class="seatbox"></span></td>
							<td><input type="checkbox" id="available_seat" class="seats"><span class="seatbox"></span></td>
							<td><input type="checkbox" id="available_seat" class="seats"><span class="seatbox"></span></td>
							<td><input type="checkbox" id="available_seat" class="seats"><span class="seatbox"></span></td>
							<td></td>
							<td><input type="checkbox" id="available_seat" class="seats"><span class="seatbox"></span></td>
							<td><input type="checkbox" id="available_seat" class="seats"><span class="seatbox"></span></td>
						</tr>
						
						<tr>
							<td class="seat_row">F</td>
							<td><input type="checkbox" id="available_seat" class="seats"><span class="seatbox"></span></td>
							<td><input type="checkbox" id="available_seat" class="seats"><span class="seatbox"></span></td>
							<td></td>
							<td><input type="checkbox" id="available_seat" class="seats"><span class="seatbox"></span></td>
							<td><input type="checkbox" id="available_seat" class="seats"><span class="seatbox"></span></td>
							<td><input type="checkbox" id="available_seat" class="seats"><span class="seatbox"></span></td>
							<td><input type="checkbox" id="available_seat" class="seats"><span class="seatbox"></span></td>
							<td><input type="checkbox" id="available_seat" class="seats"><span class="seatbox"></span></td>
							<td><input type="checkbox" id="available_seat" class="seats"><span class="seatbox"></span></td>
							<td><input type="checkbox" id="available_seat" class="seats"><span class="seatbox"></span></td>
							<td><input type="checkbox" id="available_seat" class="seats"><span class="seatbox"></span></td>
							<td><input type="checkbox" id="available_seat" class="seats"><span class="seatbox"></span></td>
							<td></td>
							<td><input type="checkbox" id="available_seat" class="seats"><span class="seatbox"></span></td>
							<td><input type="checkbox" id="available_seat" class="seats"><span class="seatbox"></span></td>
						</tr>
						
						<tr>
							<td class="seat_row">G</td>
							<td><input type="checkbox" id="available_seat" class="seats"><span class="seatbox"></span></td>
							<td><input type="checkbox" id="available_seat" class="seats"><span class="seatbox"></span></td>
							<td></td>
							<td><input type="checkbox" id="available_seat" class="seats"><span class="seatbox"></span></td>
							<td><input type="checkbox" id="available_seat" class="seats"><span class="seatbox"></span></td>
							<td><input type="checkbox" id="available_seat" class="seats"><span class="seatbox"></span></td>
							<td><input type="checkbox" id="available_seat" class="seats"><span class="seatbox"></span></td>
							<td><input type="checkbox" id="available_seat" class="seats"><span class="seatbox"></span></td>
							<td><input type="checkbox" id="available_seat" class="seats"><span class="seatbox"></span></td>
							<td><input type="checkbox" id="available_seat" class="seats"><span class="seatbox"></span></td>
							<td><input type="checkbox" id="available_seat" class="seats"><span class="seatbox"></span></td>
							<td><input type="checkbox" id="available_seat" class="seats"><span class="seatbox"></span></td>
							<td></td>
							<td><input type="checkbox" id="available_seat" class="seats"><span class="seatbox"></span></td>
							<td><input type="checkbox" id="available_seat" class="seats"><span class="seatbox"></span></td>
						</tr>
						
						<tr>
							<td class="seat_row"></td>
							<td colspan="4"></td>
							<td class="screen" colspan="7"><div>Screen</div></td>
							<td colspan="4"></td>
						</tr>
					</table>

					<input type="Submit" class="submitBtn" value="Proceed to Payment">
				</div>

				
			</details>
			
			<details id="paid_detail">
				<summary class="tab_header"><i class='fa fa-plus'></i><span>Purchase</span></summary>
				
				<div>
					<div>
						<table class="info_container">
							<tr>
								<td class="info_label">Movie</td>
								<td>:</td>
								<td class="info_detail">2063</td>
							</tr>

							<tr>
								<td class="info_label">Cinema</td>
								<td>:</td>
								<td class="info_detail">One Utama Cinema.com</td>
							</tr>

							<tr>
								<td class="info_label">Date</td>
								<td>:</td>
								<td class="info_detail">13/2/2023</td>
							</tr>

							<tr>
								<td class="info_label">Time</td>
								<td>:</label>
								<td class="info_detail">12:00 PM</td>
							</tr>

							<tr>
								<td class="info_label">Seats</td>
								<td>:</td>
								<td class="info_detail">C101, C102, C103</td>
							</tr>

							<tr class="space"></tr>

							<tr>
								<td class="info_label">Cost</td>
								<td>:</td>
								<td class="info_detail"><b>RM <span>132</span></td>
							</tr>
						</table>

						<div class="image_container">
							<img src="./Images/Movie/movie1.jpg" alt="2067">
						</div>
					</div>
					<input type="Submit" class="submitBtn" value="Pay">
				</div>
				
			</details>
			
			<details id="success_detail">
				<summary class="tab_header"><i class='fa fa-plus'></i><span>Payment Success</span></summary>
				
				<div class="receipt">
					<div class="header_bar">
						<h1>Payment Successful</h1>
						<p>Booking ID: <span>ABC1234567890</span></p>
						<p>Payment Date: 13 Feb 2023 12:00 PM</p>
					</div>
					
					<div class="movieInfo_bar">
						<h3>One Utama Cinema.com</h3>
						<h1>2063</h1>
						<p>Tue, 13 Feb 2023 12:00 PM</p>
					</div>
					
					<div class="price_bar">
						<div>
							<div class="item_container">
								<p class="item"><span>3</span> Tickets</p>
								<p class="item_desr">Seats: <span>C101, C102, C103</span></p>
							</div>

							<div class="price">
								<p>RM <span>120</span></p>
							</div>
						</div>
						
						<hr>
						
						<div>
							<p class="item_container">Service Charges 10%</p>
							<p class="price">RM <span>12</span></p>
						</div>
						
						<div class="total_price">
							<p class="item_container">Total Amount</p>
							<p class="price">RM <span>132</span></p>
						</div>
					</div>
						
				</div>
			</details>
                            
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
    </body>
</html>
