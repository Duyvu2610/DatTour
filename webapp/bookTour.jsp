<%@page import="model.Tour"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./css/book-tour.css">
<link rel="stylesheet" type="text/css" href="./css/index.css">
<title>Insert title here</title>
<style type="text/css">
.row {
	display: flex;
	justify-content: space-between;
	margin: 7px 0
}

form {
	width: 100%;
	padding: 8px
}

.wrapper {
	width: 500px;
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
}
</style>
</head>
<body>
	<%
	Tour tour = (Tour) request.getAttribute("tour");
	%>
	<div class="wrapper">
		<div>
			<span>Đặt tour : </span><b><%=tour.getDescription()%></b><span>
				<%=tour.getDays()%></span>
		</div>
		<form method = "post" action="confirm?id=<%=tour.getId()%>">
			<div style="">
				<b>Thông tin khách hàng</b>
				<div>
					<div class="row">
						<label for="name">Họ tên: (*)</label> <input type="text" id="name"
							name="name" required>
					</div>
					<div class="row">
						<label for="location">Địa chỉ:</label> <input type="text"
							id="location" name="location" required>
					</div>
					<div class="row">
						<label for="email">E-mail: (*)</label> <input type="email"
							id="email" name="email" required>
					</div>
					<div class="row">
						<label for="phone">Điện thoại:</label> <input type="text"
							id="phone" name="phone" required>
					</div>
				</div>
				<b>Thông tin chuyến đi</b>
				<div>
					<div class="row">
						<label for="date">Ngày khởi hành: (*)</label>
						<div>
							<input type="text" id="date" name="date" style="width: 84px" required>
							<span>dd/mm/yyyy</span>
						</div>

					</div>
					<div class="row">
						<label for="adult">Số người lớn: (*)</label> <input type="text"
							id="adult" name="adult" style="width: 30px; margin-right: 140px" required>

					</div>
					<div class="row">
						<label for="child">Số trẻ em:</label> <input type="text"
							id="child" name="child" style="width: 30px; margin-right: 140px" required>
					</div>

				</div>
				<div style="margin-left: 370px">
					<button type = "submit">Gửi</button>
					<button><a href = "tours"style="all: unset">Hủy</a></button>
				</div>


			</div>
		</form>
	</div>
</body>
</html>