<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="com.bongda.model.* , com.bongda.dao.*, java.util.*, com.bongda.utils.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Document</title>

<!--keyword: normallirer css cdn (reset css) reset css-->
<!-- CDN: content delivery netword (mạng phân phối.Nghĩa là nó là một hệ thống máy chủ trên toàn cầu\
			để lưu trữ bản sao của các nội dung tĩnh bên tròng website sau đó phân tán ra nhiều máy chủ khác(đgl points of presence và từ pop đó nó gứi đến người dùng truy cập trang web-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/template/assets/fonts/fontawesome-free-5.12.1-web/css/all.min.css">
<!-- Font chữ google roboto font -->
<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,300i,400,500,700&display=swap&subset=vietnamese"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/template/assets/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/template/assets/css/base.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/template/assets/css/main.css">
</head>
<body>
	<%
		// lay id nguoi dung
	NguoiDung nguoiDung = (NguoiDung) session.getAttribute("bantochuc");
	if (nguoiDung == null) {
		response.sendRedirect("gdDangnhap.jsp?err=timeout");
	}
	// lay du lieu thanh toan doi bong
	ThanhToanDBDAO thanhToanDBDAO = new ThanhToanDBDAO();
	ArrayList<ThanhToanDB> dsThanhToanDB = thanhToanDBDAO.getTongTienDB();
	session.setAttribute("dsThanhToanDB", dsThanhToanDB);
	%>
	<div class="app">
		<header class="header">
			<div class="grid">
				<nav class="header__navbar"></nav>
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
							<li class="header-item"><a href="${pageContext.request.contextPath}/views/gdThanhtoan.jsp">Thanh toán</a></li>
							<li class="header-item"><a href="">Đăng xuất</a></li>
						</ul>
					</div>
				</div>
			</div>
		</header>
		<div class="app__container">

			<div class="grid">
				<div class="grid__row app__content">
					<h1 style="margin: 50px auto;">Danh sách các đội bóng cần
						thanh toán</h1>
					<form style="width: 100%;">
						<div class="table-responsive">
							<table class="table table-hover">
								<thead>
									<tr>
										<th>STT</th>
										<th>Mã đội bóng</th>
										<th>Tên đội bóng</th>
										<th>Tổng tiền thanh toán(đơn vị VNĐ)</th>
										<th>Lựa chọn</th>
									</tr>
								</thead>

								<tbody>
									<c:forEach items="${dsThanhToanDB}" var="thanhToanDB"
										varStatus="loop">
										<tr>
											<td>${loop.index +1}</td>
											<td>${thanhToanDB.getId()}</td>
											<td>${thanhToanDB.getTenDoi()}</td>
											<td>
												<%-- <fmt:setLocale value="vi" />  --%> <fmt:formatNumber
													value="${thanhToanDB.getTongTien()}" type="currency" />
											</td>
											<td><a
												href="${pageContext.request.contextPath}/views/gdHoadon.jsp?id=${thanhToanDB.getId()}">
													Thanh toan</a></td>
										</tr>
									</c:forEach>
								</tbody>


							</table>
						</div>
					</form>

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

</body>
</html>