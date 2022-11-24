<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Pick Me car : 로그인</title>
<link rel="stylesheet" href="/resources/css/new_main.css">
</head>
<body>
<h1>/login/member page</h1>
<p><sec:authentication property="principal"/></p>
<p><sec:authentication property="principal.member"/></p>
<p><sec:authentication property="principal.username"/></p>

<%-- <p><sec:authentication property="principal.member.authList"/></p> --%>
</body>
</html>