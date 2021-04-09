<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, com.bongda.model.*,com.bongda.dao.*"%>
<%
	String username= (String)request.getParameter("username");
    String password =(String)request.getParameter("password");
    NguoiDung nguoiDung= new NguoiDung();
    nguoiDung.setUsername(username);
    nguoiDung.setPassword(password);
    NguoiDungDAO nguoiDungDAO = new NguoiDungDAO();
    boolean kq= nguoiDungDAO.checkLogin(nguoiDung);
   	if (kq && (nguoiDung.getVaiTro().equalsIgnoreCase("bantochuc"))) {
		session.setAttribute("bantochuc", nguoiDung);
		response.sendRedirect("gdChinhBTC.jsp");
	} else {
		response.sendRedirect("gdDangnhap.jsp?err=fail");
	}
%>
<!-- <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html> -->