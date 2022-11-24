<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Pick Me car : 로그아웃</title>
<link rel="stylesheet" href="/resources/css/new_main.css">
</head>
<body>
	<!-- header -->
	<div id="header">
		<a href="/menu/index"><img src="/resources/img/login/m_logo.png" id="logo"></a>
	</div>
	<!-- wrapper -->
	<div id="wrapper">

		<form method='post' action="/customLogout">

			<!-- content-->
			<div id="content">

				<!-- ID -->

				<h3 style="color:red;">로그아웃 하시겠습니까?</h3>

				<input type="hidden" name="${_csrf.parameterName }"
					value="${_csrf.token }" />
				<div class="btn_area">
					<button id="btnJoin">로그아웃</button>
				</div>
			</div>
		</form>
	</div>
</body>
</html>