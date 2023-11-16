<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./css/index.css">
<title>Insert title here</title>
</head>
<body>
	<div class="wrapper">
		<c:set var="tour" value="${requestScope.tour}" />
		<b>${tour.description}</b> <br> <span><b>Số ngày: </b></span> <span>${tour.days}.</span>
		<b> Phương tiện:</b> <span>${tour.transportation}. </span> <b>Lịch
			khởi hành:</b> <span>${tour.departureSchedule}</span>
		<p>
			<b style="font-size: x-large;">Chương trình chi tiết</b>
		</p>
		${tour.details}

		<div style="display: flex; justify-content: space-between;">
			<button class="button">
				<a href="booking-tour?id=${tour.id}" style="all: unset">Đặt tour</a>
			</button>
			<a href="/DatTour">CHƯƠNG TRÌNH TOUR</a>
		</div>
	</div>
</body>
</html>