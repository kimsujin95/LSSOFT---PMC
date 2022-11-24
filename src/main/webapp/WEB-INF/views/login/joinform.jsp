<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>

<html>
<head>
<meta id="_csrf" name="_csrf" content="${_csrf.token}">
<meta id="_csrf_header" name="_csrf_header"
	content="${_csrf.headerName }">

<title>Pick Me car : 회원가입</title>
<link rel="stylesheet" href="/resources/css/new_main.css">

</head>
<body>
	<!-- header -->
	<div id="header">
		<a href="/menu/index"><img src="/resources/img/login/m_logo.png" id="logo"></a>
	</div>


	<!-- wrapper -->
	<div id="wrapper">
		<form action="/login/joinform" method="post">
			<!-- content-->
			<div id="content">

				<!-- ID -->
				<div>
					<h3 class="join_title">
						<label for="id">아이디</label>
					</h3>
					<span class="box int_id"> <input type="text" id="userid"
						name="userid" class="int" maxlength="20"> <span
						class="step_url"></span>
					</span> <span class="error_next_box"></span>
				</div>

				<!-- PW1 -->
				<div>
					<h3 class="join_title">
						<label for="userpw">비밀번호</label>
					</h3>
					<span class="box int_pass"> <input type="text" id="userpw"
						name="userpw" class="int" maxlength="20"> <span
						id="alertTxt">사용불가</span> <img
						src="/resources/img/login/m_icon_pass.png" id="pswd1_img1"
						class="pswdImg">
					</span> <span class="error_next_box"></span>
				</div>

				<!-- PW2 -->
				<div>
					<h3 class="join_title">
						<label for="pswd2">비밀번호 재확인</label>
					</h3>
					<span class="box int_pass_check"> <input type="text"
						id="pswd2" class="int" maxlength="20"> <img
						src="/resources/img/login/m_icon_check_disable.png"
						id="pswd2_img1" class="pswdImg">
					</span> <span class="error_next_box"></span>
				</div>

				<!-- NAME -->
				<div>
					<h3 class="join_title">
						<label for="username">이름</label>
					</h3>
					<span class="box int_name"> <input type="text" id="username"
						name="username" class="int" maxlength="20">
					</span> <span class="error_next_box"></span>
				</div>

				<!-- BIRTH -->
				<div>
					<h3 class="join_title">
						<label for="yy">생년월일</label>
					</h3>

					<div id="bir_wrap">
						<!-- BIRTH_YY -->
						<div id="bir_yy">
							<span class="box"> <input type="text" id="yy" class="int"
								maxlength="4" placeholder="년(4자)">
							</span>
						</div>

						<!-- BIRTH_MM -->
						<div id="bir_mm">
							<span class="box"> <select id="mm" class="sel">
									<option>월</option>
									<option value="01">1</option>
									<option value="02">2</option>
									<option value="03">3</option>
									<option value="04">4</option>
									<option value="05">5</option>
									<option value="06">6</option>
									<option value="07">7</option>
									<option value="08">8</option>
									<option value="09">9</option>
									<option value="10">10</option>
									<option value="11">11</option>
									<option value="12">12</option>
							</select>
							</span>
						</div>

						<!-- BIRTH_DD -->
						<div id="bir_dd">
							<span class="box"> <input type="text" id="dd" class="int"
								maxlength="2" placeholder="일">
							</span>
						</div>
						<input type="hidden" id="birthday" name="birthday" value="">
					</div>
					<span class="error_next_box"></span>
				</div>

				<!-- GENDER -->
				<div>
					<h3 class="join_title">
						<label for="gender">성별</label>
					</h3>
					<span class="box gender_code"> <select id="gender"
						name="gender" class="sel">
							<option>성별</option>
							<option value="M">남자</option>
							<option value="F">여자</option>
					</select>
					</span> <span class="error_next_box">필수 정보입니다.</span>
				</div>
				<!-- EMAIL -->
				<div>
					<h3 class="join_title">
						<label for="email">본인확인 이메일<span class="optional">(선택)</span></label>
					</h3>
					<span class="box int_email"> <input type="text" id="email"
						name="email" class="int" maxlength="100" placeholder="선택입력">
					</span> <span class="error_next_box">이메일 주소를 다시 확인해주세요.</span>
				</div>

				<!-- MOBILE -->
				<div>
					<h3 class="join_title">
						<label for="phoneno">휴대전화</label>
					</h3>
					<span class="box int_mobile"> <input type="tel" id="phoneno"
						name="phoneno" class="int" maxlength="16" placeholder="전화번호 입력">
					</span> <span class="error_next_box"></span>
				</div>
				<input type="hidden" id="enabled" name="enabled" value="1"/>
				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
				<input type="hidden" id="auth" name="auth" value="ROLE_MEMBER"/>


				<!-- JOIN BTN-->
				<div class="btn_area">
					<button type="submit" id="btnJoin">가입하기</button>
				</div>



			</div>
			<!-- content-->

		</form>
	</div>
	<!-- wrapper -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="main.js"></script>
</body>
</html>

<script type="text/javascript">
$(document).ready(function(){
   var id = document.querySelector('#userid');

   var pw1 = document.querySelector('#userpw');
   var pwMsg = document.querySelector('#alertTxt');
   var pwImg1 = document.querySelector('#pswd1_img1');

   var pw2 = document.querySelector('#pswd2');
   var pwImg2 = document.querySelector('#pswd2_img1');
   var pwMsgArea = document.querySelector('.int_pass');

   var userName = document.querySelector('#username');

   var yy = document.querySelector('#yy');
   var mm = document.querySelector('#mm');
   var dd = document.querySelector('#dd');

   var gender = document.querySelector('#gender');

   var email = document.querySelector('#email');

   var mobile = document.querySelector('#phoneno');

   var error = document.querySelectorAll('.error_next_box');

   /* 입력폼 요소에 이벤트 핸들러 연걸*/
   id.addEventListener("change", checkId);
   pw1.addEventListener("change", checkPw);
   pw2.addEventListener("change", comparePw);
   userName.addEventListener("change", checkName);
   yy.addEventListener("change", isBirthCompleted);
   mm.addEventListener("change", isBirthCompleted);
   dd.addEventListener("change", isBirthCompleted);
   gender.addEventListener("change", function() {
       if(gender.value === "성별") {
           error[5].style.display = "block";
       } else {
           error[5].style.display = "none";
       }
   })
   email.addEventListener("change", isEmailCorrect);
   mobile.addEventListener("change", checkPhoneNum);

   /*콜백함수*/

   function checkId() {
       var idPattern = /[a-zA-Z0-9_-]{5,20}/;
       if(id.value === "") {
           error[0].innerHTML = "필수 정보입니다.";
           error[0].style.display = "block";
       } else if(!idPattern.test(id.value)) {
           error[0].innerHTML = "5~20자의 영문 소문자, 숫자와 특수기호(_),(-)만 사용 가능합니다.";
           error[0].style.display = "block";
       } else {
           error[0].innerHTML = "멋진 아이디네요!";
           error[0].style.color = "#08A600";
           error[0].style.display = "block";
       }
   }

   function checkPw() {
       var pwPattern = /[a-zA-Z0-9~!@#$%^&*()_+|<>?:{}]{8,16}/;
       if(pw1.value === "") {
           error[1].innerHTML = "필수 정보입니다.";
           pwMsg.style.display = "block";
           pwMsgArea.style.paddingRight = "40px";
           pwImg1.src = "/resources/img/login/m_icon_pass.png";
           error[1].style.display = "block";
       } else if(!pwPattern.test(pw1.value)) {
           error[1].innerHTML = "8~16자 영문 대 소문자, 숫자, 특수문자를 사용하세요.";
           pwMsg.innerHTML = "사용불가";
           pwMsgArea.style.paddingRight = "93px";
           error[1].style.display = "block";
           pwMsg.style.color = "red";
           pwMsg.style.display = "block";
           pwImg1.src = "/resources/img/login/m_icon_not_use.png";
       } else {
           error[1].style.display = "none";
           pwMsg.innerHTML = "안전";
           pwMsgArea.style.paddingRight = "93px";
           pwMsg.style.color = "#03c75a";
           pwMsg.style.display = "block";
           pwImg1.src = "/resources/img/login/m_icon_safe.png";
       }
   }

   function comparePw() {
       if(pw2.value === pw1.value) {
           pwImg2.src = "/resources/img/login/m_icon_check_enable.png";
           error[2].style.display = "none";
       } else if(pw2.value !== pw1.value) {
           pwImg2.src = "/resources/img/login/m_icon_check_disable.png";
           error[2].innerHTML = "비밀번호가 일치하지 않습니다.";
           error[2].style.display = "block";
       } 

       if(pw2.value === "") {
           error[2].innerHTML = "필수 정보입니다.";
           error[2].style.display = "block";
       }
   }

   function checkName() {
       var namePattern = /[a-zA-Z가-힣]/;
       if(userName.value === "") {
           error[3].innerHTML = "필수 정보입니다.";
           error[3].style.display = "block";
       } else if(!namePattern.test(userName.value) || userName.value.indexOf(" ") > -1) {
           error[3].innerHTML = "한글과 영문 대 소문자를 사용하세요. (특수기호, 공백 사용 불가)";
           error[3].style.display = "block";
       } else {
           error[3].style.display = "none";
       }
   }


   function isBirthCompleted() {
       var yearPattern = /[0-9]{4}/;

       if(!yearPattern.test(yy.value)) {
           error[4].innerHTML = "태어난 년도 4자리를 정확하게 입력하세요.";
           error[4].style.display = "block";
       } else {
           isMonthSelected();
       }


       function isMonthSelected() {
           if(mm.value === "월") {
               error[4].innerHTML = "태어난 월을 선택하세요.";
           } else {
               isDateCompleted();
           }
       }

       function isDateCompleted() {
           if(dd.value === "") {
               error[4].innerHTML = "태어난 일(날짜) 2자리를 정확하게 입력하세요.";
           } else {
               isBirthRight();
           }
       }
   }



   function isBirthRight() {
       var datePattern = /\d{1,2}/;
       if(!datePattern.test(dd.value) || Number(dd.value)<1 || Number(dd.value)>31) {
           error[4].innerHTML = "생년월일을 다시 확인해주세요.";
       } else if(Number(dd.value)<10){
    	   dd.value="0"+dd.value;
           checkAge();
       }else{
    	   checkAge();
       }
   }

   function checkAge() {
       if(Number(yy.value) < 1920) {
           error[4].innerHTML = "정말이세요?";
       } else if(Number(yy.value) > 2019) {
           error[4].innerHTML = "미래에서 오셨군요. ^^";
       } else if(Number(yy.value) > 2005) {
           error[4].innerHTML = "만 14세 미만의 어린이는 보호자 동의가 필요합니다.";
       } else {
           error[4].style.display = "none";
           birthday.value= yy.value+"/"+mm.value+"/"+dd.value;
       }
   }


   function isEmailCorrect() {
       var emailPattern = /[a-z0-9]{2,}@[a-z0-9-]{2,}\.[a-z0-9]{2,}/;

       if(email.value === ""){ 
           error[6].style.display = "none"; 
       } else if(!emailPattern.test(email.value)) {
           error[6].style.display = "block";
       } else {
           error[6].style.display = "none"; 
       }

   }

   function checkPhoneNum() {
       var isPhoneNum = /([01]{2,})([01679]{1,})([0-9]{3,4})([0-9]{4})/;

       if(mobile.value === "") {
           error[7].innerHTML = "필수 정보입니다.";
           error[7].style.display = "block";
       } else if(!isPhoneNum.test(mobile.value)) {
           error[7].innerHTML = "형식에 맞지 않는 번호입니다.(-제외 숫자만 입력)";
           error[7].style.display = "block";
       } else {
           error[7].style.display = "none";
       }

       
   }

});
$(document).ready(function(){
	var token = $("meta[name='_csrf']").attr("content");
	var header = $("meta[name='_csrf_header']").attr("content");
	$(document).ajaxSend(function(e, xhr, options){
		xhr.setRequestHeader(header, token);
	});
});
</script>

