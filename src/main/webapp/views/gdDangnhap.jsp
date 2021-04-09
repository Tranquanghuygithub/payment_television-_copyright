<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title></title>
		<link rel="stylesheet" type="text/css"
			href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css"> 	
			<!-- Font chữ google roboto font -->
			<link href="https://fonts.googleapis.com/css?family=Roboto:300,300i,400,500,700&display=swap&subset=vietnamese" rel="stylesheet">
			<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/template/assets/css/base.css">
			<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/template/assets/css/main.css">
			<link rel="stylesheet" href="${pageContext.request.contextPath}/template/assets/fonts/fontawesome-free-5.12.1-web/css/all.min.css">
	</head>
	<body>
		<div class="modal">
			<div class="modal__overlay"></div>
			<div class="modal__body">
				<div class="auth-form">
					<div class="auth-form__container">
						<div class="auth-form__header">
							<button class="btn auth-form__heading">
							Đăng nhập
							</button>
						</div>
					<%
						if (request.getParameter("err") != null && request.getParameter("err").equalsIgnoreCase("timeout")) {
					%>
					<h4 style="color:red;">Hết phiên làm việc. Làm ơn đăng nhập lại!</h4>
					<%
						} else if (request.getParameter("err") != null && request.getParameter("err").equalsIgnoreCase("fail")) {
					%>
					<h4 style="color:red;">Sai tên đăng nhập/mật khẩu!</h4>
					<%
}
%>
					<form action="${pageContext.request.contextPath}/views/doDangnhap.jsp" method="post">
							<div class="auth-form__form">
								<div class="auth-form__group">								
									<input type="text" class="auth-form__input" placeholder="Username cua ban" name="username" required="required">
								</div>
								<div class="auth-form__group">
									<input type="password"class="auth-form__input" placeholder="Password cua ban" name="password" required="required">
								</div>
							</div>
							<div class="auth-form__controls">
								<button class="btn btn--register">ĐĂNG NHẬP</button>
							</div>												
						</form>		
					</div>
				</div>
			</div>
		</div>
	</body>
</html>