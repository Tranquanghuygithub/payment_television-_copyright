<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="com.bongda.model.*, com.bongda.dao.*, java.util.*,  java.math.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<title>Document</title>
<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css">
<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css">
<!-- Font chữ google roboto font -->
<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,300i,400,500,700&display=swap&subset=vietnamese"
	rel="stylesheet">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/template/assets/css/bootstrap.min.css">
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
	// lay thong tin hoa don cua doi bong
	int id = Integer.valueOf(request.getParameter("id"));
	ThanhToanTDDAO thanhToanTDDAO = new ThanhToanTDDAO();
	ArrayList<ThanhToanTD> dsThanhToanTD = thanhToanTDDAO.getThanhToanTD(id);
	BigDecimal tongTien = BigDecimal.ZERO;
	for (ThanhToanTD thanhToanTD : dsThanhToanTD) {
		tongTien = tongTien.add(thanhToanTD.getTongTien());
	}
	// ngay thanh toan
	 Date date= new Date();
	SimpleDateFormat simpleDateFormat= new SimpleDateFormat("dd-MM-YYYY");
	String time= simpleDateFormat.format(date);
	session.setAttribute("tongTien", tongTien);
	session.setAttribute("idDoiBong", id);
	session.setAttribute("dsThanhToanTD", dsThanhToanTD);
	session.setAttribute("ngayTT",time );
	%>
	<div class="app">
		<header class="header">
			<div class="grid" style="align-items: center;">
				<!-- Header with search -->
				<div class="header-with-search">
					<div class="header__logo">
						<span> <img
							src="${pageContext.request.contextPath}/template//assets/img/brand.png"
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
				<div class="grid__row app__content infor-bill">
					<div class="banner">
						<h1 class="title-banner">Hóa Đơn Thanh Toán Đội Bóng</h1>
					</div>
					<div class="information-DB">
						<div class="infor-left">
							<table id="table_infor" style="">
								<tr>
									<td><label>Ma doi bong </label></td>
									<td><input type="text" value="${idDoiBong}" disabled></td>
								</tr>
								<tr>
									<td><label>Ten doi bong</label></td>
									<td><input type="text" value="Ha Noi" disabled></td>
								</tr>
								<tr>
									<td><label>Ngay Thanh Toan</label></td>
									<td><input type="text" value="${ngayTT}" disabled></td>
								</tr>
							</table>

						</div>



					</div>
					<div class="table-bill">
						<div class="table-responsive">
							<table class="table table-hover">
								<thead>
									<tr>
										<th>STT</th>
										<th>Mã trận đấu</th>
										<th>Tên trận đấu</th>
										<th>Ngaỳ thi đấu</th>
										<th>Số tiền thanh toán</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${dsThanhToanTD}" var="thanhToanTD"
										varStatus="loop">
										<tr>
											<td>${loop.index+1}</td>
											<td>${thanhToanTD.getId()}</td>
											<td>${thanhToanTD.getTenTranDau()}</td>
											<td>${thanhToanTD.getThoiGian()}</td>
											<td><fmt:formatNumber
													value="${thanhToanTD.getTongTien()}" type="currency" /></td>
										</tr>

									</c:forEach>
									<tr>
										<td colspan="3"></td>
										<td>Tổng tiền</td>
										<td><fmt:formatNumber value="${tongTien}" type="currency" />
										</td>
									</tr>

								</tbody>
							</table>
						</div>
						<br>
						<!-- Tong tien <input type="text" value="2.000.000VND">  -->
					</div>
					<!-- <button class="btn-confirm">Xac nhan</button> -->
					<button class="btn-confirm" onclick="openPage('doLuuHD.jsp')">Xac
						nhan</button>


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
	<script>
		function openPage(pageURL) {
			window.location.href = pageURL;
		}
	</script>
	<script
		src="${pageContext.request.contextPath}/template/assets/js/jquery-3.5.1.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/template/assets/js/bootstrap.min.js"></script>
</body>
</html>