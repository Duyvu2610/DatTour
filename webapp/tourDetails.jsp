<%@page import="model.Tour"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./css/index.css">
<title>Insert title here</title>
</head>
<body>
	<div class="wrapper">
		<%
		Tour tour = (Tour) request.getAttribute("tour");
		%>
		<b><%=tour.getDescription() %></b>
		<br>
		<span><b>Số ngày: </b></span>
		<span><%=tour.getDays() %>.</span>
		<b> Phương tiện:</b>
		<span><%= tour.getTransportation() %>. </span>
		<b>Lịch khởi hành:</b>
		<span><%= tour.getDepartureSchedule() %></span>
		<p><b style="font-size: x-large;">Chương trình chi tiết</b></p>
		<%=tour.getDetails() %>
		<div style="display: flex;justify-content: space-between;">
				<button class = "button"><a href = "booking-tour?id=<%= tour.getId() %>" style="all: unset">Đặt tour</a></button>

			<a href = "tours">CHƯƠNG TRÌNH TOUR</a>
		</div>
	</div>
</body>
</html>