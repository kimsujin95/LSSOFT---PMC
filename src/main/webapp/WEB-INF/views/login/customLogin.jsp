<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Pick Me car : 로그인</title>
<link rel="stylesheet" href="/resources/css/new_main.css">
</head>
<body>
	<!-- header -->
	<div id="header">
		<a href="/menu/index"><img src="/resources/img/login/m_logo.png" id="logo"></a>
	</div>
	<!-- wrapper -->
	<div id="wrapper">

		<form method='post' action="/login">

			<!-- content-->
			<div id="content">

				<!-- ID -->


				<div>
					<h3 class="join_title">
						<label for="id">아이디</label>
					</h3>
					<span class="box int_id"> <input type='text' name='username'
						class="int" maxlength="20" value=''
						placeholder='아이디를 입력하세요.'
						onfocus="this.placeholder=''" 
						onblur="this.placeholder='아이디를 입력하세요.'"> 
						<span class="step_url"></span>
					</span> <span class="error_next_box"></span>
				</div>
				<div>
					<h3 class="join_title">
						<label for="userpw">비밀번호</label>
					</h3>
					<span class="box int_pass"> <input type='password'
						name='password' class="int" maxlength="20" value=''
						placeholder='비밀번호를 입력하세요.'
						onfocus="this.placeholder=''" 
						onblur="this.placeholder='비밀번호를 입력하세요.'"
						>
					</span>
				</div>
				<h3 style="color:red;"><c:out value="${error }" /></h3>
				<h3 style="color:red;"><c:out value="${logout }" /></h3>
				
				<div class="btn_area">
					<button type="submit" id="btnJoin">로그인</button>
				</div>
				<input type="hidden" name="${_csrf.parameterName }"
					value="${_csrf.token }" />

			</div>

		</form>
	</div>
</body>
</html>