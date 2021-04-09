<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="com.bongda.model.*, com.bongda.dao.*, java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	 	// lấy thông tin bantochuc
	 		NguoiDung nguoiDung = (NguoiDung) session.getAttribute("bantochuc");
			int idDoiBong =(int)session.getAttribute("idDoiBong");
	if (nguoiDung == null) {
		response.sendRedirect("gdDangnhap.jsp?err=timeout");
	}
		//lay thong tin dang ki va luu
	ArrayList<ThanhToanTD> dsThanhToanTD = (ArrayList<ThanhToanTD>) session.getAttribute("dsThanhToanTD");
		
	if ( new HoaDonDoiDAO().luuHoaDonDoi(idDoiBong, dsThanhToanTD) ) {
	%>
	<script type="text/javascript">
		alert("Luu hoa don thành công!");
		 location.replace("gdChinhBTC.jsp")
	</script>
	<%
		//response.sendRedirect("gdChinhBTC.jsp");
	} else {
	%>
	<script type="text/javascript">
		alert("Lỗi luu hoa don!");
		history.back();
	</script>
	<%
		}
	%>
</body>
</html>