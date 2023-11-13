<%@page import="java.text.DecimalFormat"%>
<%@page import="java.util.Collection"%>
<%@page import="model.Tour"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./css/list-tour.css">
<link rel="stylesheet" type="text/css" href="./css/index.css">
<title>Insert title here</title>
<style type="text/css">
	table{
	width: 100%;
}
td:nth-child(3) {
	text-align: right;
}
td:nth-child(4){
	text-align: center;
	width: 76px
}


</style>
</head>
<body>
	<div class="wrapper">
		<%
		Collection<Tour> tours = (Collection<Tour>) request.getAttribute("tours");
		
		%>
		<p class="title"><b>Các chương trình DU LỊCH</b></p>

		<table>
			<tr>
				<th>Chương trình</th>
				<th>Lịch khởi hành</th>
				<th>Giá</th>
				<th>Đặt</th>
			</tr>

			<%
			for (Tour tour : tours) {
				DecimalFormat decimalFormat = new DecimalFormat("#,##0.##");
				String formattedNumber = decimalFormat.format(tour.getPrice());
				formattedNumber = formattedNumber.replace(",", ".");
			%>
			<tr>
				<td><a href="tour-detail?id=<%= tour.getId()%>"><b><%= tour.getDescription() %></b></a>
					<div><%= tour.getDays() %></div></td>
				<td><%= tour.getDepartureSchedule() %></td>
				<td><b><%= formattedNumber%></b></td>
				<td>
					<form action="booking-tour?id=<%=tour.getId()%>" method = "post"><button class="button"><b>Đặt tour</b></button></form>
				</td>
				
			</tr>
			<%
			}
			%>
		</table>
	</div>
</body>
</html>