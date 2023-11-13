
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="model.Booking"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./css/booking.css">
<link rel="stylesheet" type="text/css" href="./css/index.css">
<title>Insert title here</title>
</head>
<body>
	<%
	Booking bk = (Booking) request.getAttribute("booking");
	SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
	%>
	<div class=wrapper>
		<b>Xác nhận đặt tour với các thông tin sau</b>
		<p>
			Họ tên:
			<%=bk.getCustomer().getName()%></p>
		<p>
			Địa chỉ:
			<%=bk.getCustomer().getAddress()%></p>
		<p>
			Email:
			<%=bk.getCustomer().getEmail()%></p>
		<p>
			Điện thoại:
			<%=bk.getCustomer().getPhone()%></p>
		<p>
			Ngày khởi hành:
			<%=dateFormat.format(bk.getDepartureDate())%></p>
		<p>
			Số người lớn:
			<%=bk.getNoAdults()%></p>
		<p>
			Số trẻ em:
			<%=bk.getNoChildren()%></p>
		<button>
			<a href="tours">confirm</a>
		</button>
	</div>

</body>
</html>