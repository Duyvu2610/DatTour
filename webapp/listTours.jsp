<%@page import="java.text.DecimalFormat"%>
<%@page import="java.util.Collection"%>
<%@page import="model.Tour"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./css/list-tour.css">
<link rel="stylesheet" type="text/css" href="./css/index.css">
<title>Insert title here</title>
<style type="text/css">
table {
	width: 100%;
}

td:nth-child(3) {
	text-align: right;
}

td:nth-child(4) {
	text-align: center;
	width: 76px
}
</style>
</head>
<body>
	<div class="wrapper">
		<p class="title">
			<b>Các chương trình DU LỊCH</b>
		</p>

		<table>
			<tr>
				<th>Chương trình</th>
				<th>Lịch khởi hành</th>
				<th>Giá</th>
				<th>Đặt</th>
			</tr>

			<c:forEach var="tour" items="${requestScope.tours}">
				<fmt:formatNumber var="formattedNumber" value="${tour.price}"
					type="number" pattern="#,##0.##" />
				<c:set var="formattedNumber"
					value="${formattedNumber.replace(',', '.')}" />




				<tr>
					<td><a href="tour-detail?id=${tour.id}"><b>${tour.description}</b></a>
						<div>${tour.days}</div></td>
					<td>${tour.departureSchedule}</td>
					<td><b>${formattedNumber}</b></td>
					<td>
						<form action="booking-tour?id=${tour.id}" method="post">
							<button class="button">
								<b>Đặt tour</b>
							</button>
						</form>
					</td>
				</tr>

			</c:forEach>
		</table>
	</div>
</body>
</html>