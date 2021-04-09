<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.bongda.model.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title></title>
<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css">
<!-- Font chữ google roboto font -->
<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,300i,400,500,700&display=swap&subset=vietnamese"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/template/assets/css/base.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/template/assets/css/main.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/template/assets/fonts/fontawesome-free-5.12.1-web/css/all.min.css">
</head>
<body>
	<%
		NguoiDung nguoiDung = (NguoiDung) session.getAttribute("bantochuc");
	if (nguoiDung == null) {
		response.sendRedirect("gdDangnhap.jsp?err=timeout");
	}
	%>
	<div class="app">
		<header class="header">
			<div class="grid" style="align-items: center;">
				<div class="header-with-search">
					<div class="header__logo">
						<span> <img
							src="${pageContext.request.contextPath}/template/assets/img/brand.png"
							alt="brand.png" class="header__logo-img"></span>
					</div>
					<div class="header__right">
						<ul class="header-list">
							<li class="header-item"><a href="${pageContext.request.contextPath}/views/gdChinhBTC.jsp">Trang chủ</a></li>
							<li class="header-item"><a href="">Lên lịch trình</a></li>
							<li class="header-item"><a href="">Xem thống kê</a></li>
							<li class="header-item"><a
								href="${pageContext.request.contextPath}/views/gdThanhtoan.jsp">Thanh
									toán</a></li>
							<li class="header-item"><a href="">Đăng xuất</a></li>
						</ul>
					</div>
				</div>
			</div>
		</header>
		<div class="app__container">
			<div class="grid" style="height: 600px;">
				<div class="grid__row app__content">

					<h1 style="margin: auto; margin-top: 200px;">Chào Mừng Bạn Đến
						Với Phần Mềm Quản Lí Giải Bóng Đá Ngoại Hạng</h1>

				</div>
			</div>
		</div>
		<div class="footer">
			<div class="grid">
				<div class="grid__row grid__footer">
					<div class="footer-content">
						<h3>CÔNG TY CỔ PHẦN MYLEAGUE</h3>
						<p class="address">
							<b>Địa chỉ</b> "Tổ 6 Mỗ Lao, Quận Hà Đông, Thành phố Hà Nội"
						</p>
						<p class="phone">
							<b>SĐT</b> ": 0383144400"
						</p>
						<p class="email">
							<b>Email</b> ": tranhuy26031998@gmail.com"
						</p>
					</div>
				</div>
			</div>
			<div class="grid__full-grid">
				<p class="footer__copyright">© 2019 Tran Huy JSC. All rights
					reserved.</p>
			</div>
		</div>
	</div>
	<!-- jQuery -->
	<script src="./assets/js/jquery-3.5.1.min.js"></script>
	<!-- Bootstrap JavaScript -->
	<script src="./assets/js/bootstrap.min.js"></script>
	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
</body>
</html>