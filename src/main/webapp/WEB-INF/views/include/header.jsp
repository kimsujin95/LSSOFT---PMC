<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<%@ page session="false"%>
<html>
<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Pick Me Car</title>



<!-- Bootstrap core CSS -->
<link href="/resources/vendor/bootstrap/css/bootstrap.min.css"
   rel="stylesheet">

<!-- Custom fonts for this template -->
<link href="/resources/vendor/fontawesome-free/css/all.min.css"
   rel="stylesheet" type="text/css">
<link
   href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic'
   rel='stylesheet' type='text/css'>
<link
   href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800'
   rel='stylesheet' type='text/css'>

<!-- Custom styles for this template -->
<link href="/resources/css/clean-blog.min.css" rel="stylesheet">
<link href="/resources/css/pickmecar.css" rel="stylesheet">

</head>
<style>


</style>
<body>

	<!-- Navigation -->

	<nav class="navbar navbar-expand-lg navbar-light fixed-top"
		id="topMainNav">
		<div class="container" id="topMainNavWap">
			<div id="logoLocation">
				<a class="navbar-brand" id="LogoA" href="../menu/index">Pick Me
					Car</a> <img id="picklogo" width="50" height="50" alt="빈공간"
					src="/resources/img/index/logo.gif">
				<button class="navbar-toggler navbar-toggler-right"
					id="navi_toggler" type="button" aria-controls="navbarResponsive"
					aria-expanded="false" aria-label="Toggle navigation">
					Menu <i class="fas fa-bars"></i>
				</button>
			</div>
			<div class="collapse navbar-collapse" id="menubar">
				<ul class="navbar-nav ml-auto" id="menubarUl">
					<li class="nav-item" id="menubarLi"><a class="nav-link"
						id="menubarLink" href="../menu/index">Home</a>
						<ul class="dept01" id="s_MenubarUl">
							<li><a class="nav-link" id="s_MenubarLink"
								href="../introduce">픽미카소개</a></li>
							<li><a class="nav-link" id="s_MenubarLink" href="../use">이용안내</a></li>
							<li><a class="nav-link" id="s_MenubarLink" href="../rate">요금안내</a></li>
						</ul></li>
					<li class="nav-item" id="menubarLi"><a class="nav-link"
						id="menubarLink" href="../mapReservation">About</a>
						<ul class="dept01" id="s_MenubarUl">
							<li><a class="nav-link" id="s_MenubarLink"
								href="../mapReservation">지도로 예약하기</a></li>
							<li><a class="nav-link" id="s_MenubarLink"
								href="#">&nbsp;</a></li>
							<li><a class="nav-link" id="s_MenubarLink"
								href="#">&nbsp;</a></li>
						</ul></li>
					<li class="nav-item" id="menubarLi"><a class="nav-link"
						id="menubarLink" href="../attraction">Attraction</a>
						<ul class="dept01" id="s_MenubarUl">
							<li><a class="nav-link" a id="s_MenubarLink"
								href="../attraction">명소확인</a></li>
							<li><a class="nav-link" a id="s_MenubarLink" href="../play">공연/전시
									확인</a></li>
							<li><a class="nav-link" a id="s_MenubarLink"
								href="../menu/index">&nbsp;</a></li>
						</ul></li>
					<li class="nav-item" id="menubarLi"><a class="nav-link"
						id="menubarLink" href="../usePost">Contact</a>
						<ul class="dept01" id="s_MenubarUl">
							<li><a class="nav-link" id="s_MenubarLink" href="../usePost">이용후기</a></li>
							<li><a class="nav-link" id="s_MenubarLink"
								href="../board/list">공지사항</a></li>
							<li><a class="nav-link" id="s_MenubarLink" href="#">&nbsp;</a></li>
						</ul></li>

					<li class="nav-item" id="menubarLi"><sec:authorize
							access="isAnonymous()">
							<a class="nav-link" id="menubarLink1" href="../login/customLogin">Login</a>
							<ul class="dept01" id="s_MenubarUl">
								<li><a class="nav-link" id="s_MenubarLink"
									href="#">&nbsp;</a></li>
								<li><a class="nav-link" id="s_MenubarLink" href="#">&nbsp;</a></li>
								<li><a class="nav-link" id="s_MenubarLink" href="#">&nbsp;</a></li>
							</ul>
						</sec:authorize> <sec:authorize access="isAuthenticated()">
							<a class="nav-link" id="menubarLink1" href="#"><sec:authentication property="principal.username"/>님</a>
							<ul class="dept01" id="s_MenubarUl">
								<li><a class="nav-link" id="s_MenubarLink1"
									href="/login/mypage?userid=<sec:authentication property="principal.username"/>">My Page</a></li>
								<li><a class="nav-link" id="s_MenubarLink1" href="#">&nbsp;</a></li>
								<li><a class="nav-link" id="s_MenubarLink1" href="#">&nbsp;</a></li>
							</ul>
						</sec:authorize></li>

			
					<li class="nav-item" id="menubarLi">
						<sec:authorize access="isAnonymous()">
						<a class="nav-link" 
						id="menubarLink1" href="../login/joinform">Sign up</a> 
						<!-- id="menubarLink1" href="../login/memberForm2">Sign up</a> -->
						 
						
							
						
					 
						
						<ul class="dept01" id="s_MenubarUl">
							<li><a class="nav-link" id="s_MenubarLink"
								href="#">&nbsp;</a></li>
							<li><a class="nav-link" id="s_MenubarLink"
								href="#">&nbsp;</a></li>
							<li><a class="nav-link" id="s_MenubarLink"
								href="#">&nbsp;</a></li>
						</ul>
						</sec:authorize>
						<sec:authorize access="isAuthenticated()">
						<a class="nav-link"
						id="menubarLink1" href="/customLogout">Logout</a>
						
						<ul class="dept01" id="s_MenubarUl">
							<li><a class="nav-link" id="s_MenubarLink"
								href="#">&nbsp;</a></li>
							<li><a class="nav-link" id="s_MenubarLink"
								href="#">&nbsp;</a></li>
							<li><a class="nav-link" id="s_MenubarLink"
								href="#">&nbsp;</a></li>
						</ul></sec:authorize></li>
			</div>
			</ul>

			<ul>
			</ul>

		</div>

	</nav>
	<!-- Bootstrap core JavaScript -->
	<!-- <script src="/resources/vendor/jquery/jquery.min.js"></script>
  <script src="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script> -->

	<!-- Custom scripts for this template -->
	<script src="/resources/js/clean-blog.min.js"></script>



	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

	<!-- jQuery -->

	<script type="text/javascript">
		$(document).on('mouseover', '.nav-item a', function() {
			$('.dept01').clearQueue().slideDown("300");
		});
		$(document).on('mouseleave', 'div', function() {
			if (!$(this).hasClass('nav-item')) {
				$('.dept01').clearQueue().slideUp("200");
			}
		});
	</script>

</body>
</html>