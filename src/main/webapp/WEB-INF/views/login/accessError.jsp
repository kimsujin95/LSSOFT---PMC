<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ page import="java.util.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Pick Me car : 접근 제한 페이지</title>
<link rel="stylesheet" href="/resources/css/new_main.css">
</head>
<body>
	<!-- header -->
	<div id="header">
		<a href="/menu/index"><img src="/resources/img/login/m_logo.png" id="logo"></a>
	</div>
	<!-- wrapper -->
	<p>로그인이 필요한 페이지입니다!</p>
	<div id="wrapper">

	<%-- 	<form method='post' action="/login/customLogin">

			<!-- content-->
			<div id="content">

				<!-- ID -->

				<h3 style="color:red;">로그인 하시겠습니까?</h3>

				<input type="hidden" name="${_csrf.parameterName }"
					value="${_csrf.token }" />
				<div class="btn_area">
					<button id="btnJoin">로그인</button>
				</div>
			</div>
		</form> --%>
		<p3><a href="/login/customLogin">로그인</a></p3>
		<p3><a href="/login/joinform">회원가입</a></p3>
	</div>
</body>
</html>