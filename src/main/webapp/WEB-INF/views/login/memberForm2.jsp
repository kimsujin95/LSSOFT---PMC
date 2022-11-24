<!--###########회원가입 유효성검사 연습용페이지 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>

<!DOCTYPE html >
<html>
<head>
<meta id="_csrf" name="_csrf" content="${_csrf.token}">
<meta id="_csrf_header" name="_csrf_header"
	content="${_csrf.headerName }">
<link rel="stylesheet" href="/resources/css/new_main.css">
</head>
<h3>회원가입 정보</h3>

<body>
<form action="/login/memberForm2" method="post">
	<table>
		<tr>
			<th>아이디</th>
			<td><input type="text" name="member_id" id="member_id" size="20"/>
				<input type="button" name="btnOverlapped" value="중복확인" />
			</td>		
			
		</tr>
		<tr>
			<th>비밀번호</th>
			<td><input type="password" name="member_pwd" id="member_pwd" size="20"/>
			</td>
			
		</tr>
		<tr>
			<th>비밀번호 확인</th>
			<td><input type="password" name="member_ckpwd" id="member_ckpwd" size="20"/>
			</td>
			
		</tr>
		<tr>
			<th>이 름</th>
			<td><input type="text" name="member_name" id="member_name"size="20"/>
			</td>
			
		</tr>
		<tr>
			<th>성 별</th>
			<td><label for="man">남자</label>
				<input type="radio" name="gender" id="man" value="M"/>
				<label for="woman">여자</label>
				<input type="radio" name="gender" id="woman" value="F"/>
			</td>
			
		</tr>
		<tr>
			<th>취 미</th>
			<td><input type="checkbox" name="hobby" value="hobby1"/>운동
				<input type="checkbox" name="hobby" value="hobby2"/>여행
				<input type="checkbox" name="hobby" value="hobby3"/>독서
			</td>			
		</tr>
		<tr>
			<th>회사명</th>
			<td><input type="text" name="office" size="20"/>
			</td>
		</tr>
		<tr>
			<th>연락처</th>
			<td><select name="phone1">
					<option value="010">010</option>
					<option value="011">011</option>
					<option value="02">02</option>
					<option value="031">031</option>
					<option value="032">032</option>
				</select>	
				<input type="text" name="phone2" size="4"/>
				<input type="text" name="phone3" size="4"/>
			</td>
		</tr>
		</table>
		<br/><br/>
		<table>
			<tr>
				<td><input type="submit" value="등록"/>
				</td>
			</tr>
		</table>		

	</form>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="main.js"></script>
	<script type="text/javascript">
$(document).ready(function(){
	var id = document.querySelector('#member_id');
	var pwd = doucument.querySelector('#member_pwd');
	var ckpwd = doucument.querySelector('#member_ckpwd');
	var name = doucument.querySelector('#member_name');
/* 	var man = doucument.getElementById('man');
	var woman = doucument.getElementById('woman'); */
	
	var error = document.querySelectorAll('.error_next_box');
	
	/*이벤트 등록*/
	id.addEventListener("change", checkId);
	pwd.addEventListener("change", checkPwd);
	ckpwd.addEventListener("change", checkCkPwd);
	name.addEventListener("change", checkName);
/* 	man.addEventListener("change", checkMan);
	woman.addEventListener("change", checkWoman); */
	
	/*콜백 함수*/
	function checkId(){
		var idPattern = /[a-zA-Z0-9]{3~14}/;
		
		if(id.value == ""){
			error[0].innerHTML = "필수정보입니다.";
			error[0].style.display = "block";
		}
		else if(!idPatter.test(id.value)){
			error[0].innerHTML = "3~14자의 영문과 숫자로만 입력할 수 있습니다"
			error[0].style.display="block";
		}
	}
	
	function checkPwd(){
		var pwdPattern = /[a-zA-Z0-9~!@#$%^&*()_+|<>?:{}]{4,14}/;
		if(pwd.value == ""){
			error[1].innerHTML = "필수정보입니다.";
			error[1].style.display = "block";
		}
		else if(!pwdPattern.test(pwd.value)){
			error[1].innerHTML = "4~14자 영문 대/소문자, 숫자,특수문자를 사용하세요";
			error[1].sytle.display = "block";
		}
		else{
			error[1].style.display = "none";
		}

	}
	
	function checkCkPwd(){
		if(ckpwd.value == pwd.value){
			error[2].innerHTML = "비밀번호가 일치합니다.";
			error[2].style.display = "block";
		}
		else if(ckpwd.value != pwd.value){
			error[2].innerHTML = "비밀번호가 일치하지않습니다.";
			error[2].style.display = "block";
		}
		if(pw.value == ""){
			error[2].innerHTML = "필수정보입니다.";
			error[2].style.display = "block";
		}
	}
	
	function checkName(){
		if(name.value == ""){
			error[3].innerHTML = "필수정보입니다";
			error[3].style.display="block";
		}else{
			error[3].style.display="none";
		}
	}
	
});

</script>
</body>
	
</html>


