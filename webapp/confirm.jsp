
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="model.Booking"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./css/booking.css">
<link rel="stylesheet" type="text/css" href="./css/index.css">
<title>Insert title here</title>
</head>
<body>
	<c:set var="bk" value="${requestScope.booking}" />
	<div class="wrapper">
		<b>Xác nhận đặt tour với các thông tin sau</b>
		<p>Họ tên: ${bk.customer.name}</p>
		<p>Địa chỉ: ${bk.customer.address}</p>
		<p>Email: ${bk.customer.email}</p>
		<p>Điện thoại: ${bk.customer.phone}</p>
		<p>Ngày khởi hành: <fmt:formatDate type="date" value="${bk.departureDate}" pattern="dd/MM/yyyy" /></p>
		<p>Số người lớn: ${bk.noAdults}</p>
		<p>Số trẻ em: ${bk.noChildren}</p>
		<button>
			<a href="tours">confirm</a>
		</button>
	</div>

</body>
</html>