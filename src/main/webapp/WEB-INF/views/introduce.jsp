<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<!-- Bootstrap cdn 설정 -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>



<%@include file="include/header.jsp" %>
   <style type="text/css">

      
   </style>

   <link rel="stylesheet" href="/resources/css/aboutUs.css">
  <!-- Page Header -->
  <body>
  <html>
  
  <header class="masthead" style="background-image: url('/resources/img/introduce.jpg')">
    <div class="overlay"></div>
    <div class="container">
      <div class="row">
        <div class="col-lg-8 col-md-10 mx-auto">
          <div class="page-heading">
            <h1>Introduction</h1>
            <span class="subheading">픽미카 소개</span>
          </div>
        </div>
      </div>
    </div>
  </header>

  <!-- Main Content -->
  <div>
    <div class="row">
      <div class="col-lg-12 col-md-10 mx-auto">
       <div id = "aboutus_main">
       <div>
      <h1 id="content"> PICK ME CAR </h1> 
      <br>

      <p id="contenttext">필요한 순간,</p>
      <p id="contenttext">어디에서든,</p>
      <p id="contenttext">고르기만 하세요.</p>
     <p id="contenttext">준비는 PICK ME CAR가 할게요</p>
      <br>
      
      <h4 id="aboutus_content">언제 어디서든,</h4><br>
      <h4 id="aboutus_content">원하는 서비스를 선택해 이용해 보세요</h4>

      <br>
      <br>
      <br>
	</div>
<div id="about_main2">
<br>
<br>
<br>

<!-- carousel를 구성할 영역 설정 -->
<div id="about_main1" style="width: 500px;">
<!-- carousel를 사용하기 위해서는 class에 carousel와 slide 설정한다. -->
<!-- carousel는 특이하게 id를 설정해야 한다.-->
<div id="carousel-example-generic" class="carousel slide "
    style="max-width: 900px; margin: 0 auto" >
<!-- carousel의 지시자 -->
<!-- 지시자라고는 하는데 ol태그의 class에 carousel-indicators를 넣는다. -->
<ol class="carousel-indicators">
<!-- li는 이미지 개수만큼 추가하고 data-target은 carousel id를 가르킨다. -->
<!-- data-slide-to는 순서대로 0부터 올라가고 0은 active를 설정한다. -->
<!-- 딱히 이 부분은 옵션별로 설정하게 없다. -->
<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
<li data-target="#carousel-example-generic" data-slide-to="1"></li>
<li data-target="#carousel-example-generic" data-slide-to="2"></li>
</ol>
<!-- 실제 이미지 아이템 -->
<!-- class는 carousel-inner로 설정하고 role은 listbox에서 설정한다. -->
<div class="carousel-inner" role="listbox">
<!-- 이미지의 개수만큼 item을 만든다. 중요한 포인트는 carousel-indicators의 li 태그 개수와 item의 개수는 일치해야 한다. -->
<div class="item active">
<!-- 아미지 설정- -->
<img src="/resources/img/aboutusimg1_1.jpg" style="width:100%">
<!-- 캡션 설정 (생략 가능) -->
<!-- 글자 색은 검은색 -->
<div class="carousel-caption" style="color:black;">
</div>
</div>
<div class="item">
<img src="/resources/img/aboutusimg1_2.jpg" style="width:100%">
<div class="carousel-caption" style="color:black;">
</div>
</div>
<div class="item">
<img src="/resources/img/aboutusimg1_3.jpg" style="width:100%">
<div class="carousel-caption" style="color:black;">
</div>
</div>
</div>
<!-- 왼쪽 화살표 버튼 -->
<!-- href는 carousel의 id를 가르킨다. -->
<a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
<!-- 왼쪽 화살표 -->
<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
</a>
<!-- 오른쪽 화살표 버튼 -->
<!-- href는 carousel의 id를 가르킨다. -->
<a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
<!-- 오른쪽 화살표 -->
<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
</a>
</div>
</div>


    <!--   <img id="aboutusimg" vspace=100 src="/resources/img/aboutusimg1.jpg" width="340px" height="350px"> -->
      <br>

         <h4 id="aboutus_content">카 셰어링 서비스</h4>
        
         <hr style="width: 170px;">
         <p id="contenttext">스마트폰과 운전면허증만 있다면 365일 24시간 </p>
         <p id="contenttext">PICK ME CAR가 있는 전국 어느 곳에서나 필요한 시간만큼 </p>
         <p id="contenttext">즉시 차량 대여가 가능한 카셰어링 서비스를 사용해 보세요! </p>

         <br><br>
         
         <h4 id="aboutus_content">주차장 찾기 서비스 </h4>
         <hr style="width: 190px;">
         <p id="contenttext">차는 있지만 주차할 공간은 있으신가요?</p>
         <p id="contenttext">혹시 지금 주차할 곳을 찾고 계신가요?</p>
         <p id="contenttext">더 이상 남은 주차장 자리를  찾아 헤메이는 일상은 안녕! </p>
         <p id="contenttext">PICK ME CAR의 가까운 주차장 찾기 서비스를 이용해보세요.</p>
         <p id="contenttext"> 원하는 위치의 주차장의 잔여 주차공간을 검색 하고 나아가 원하는 시간에 주차공간을 예약하세요.</p>

         <br><br>
   </div>
   <br>
      <br>
      <br>
   
<!-- carousel를 구성할 영역 설정 -->
<div id="about_main1" style="width: 500px;">
<!-- carousel를 사용하기 위해서는 class에 carousel와 slide 설정한다. -->
<!-- carousel는 특이하게 id를 설정해야 한다.-->
<div id="carousel-example-generic1" class="carousel slide "
    style="max-width: 900px; margin: 0 auto" >
<!-- carousel의 지시자 -->
<!-- 지시자라고는 하는데 ol태그의 class에 carousel-indicators를 넣는다. -->
<ol class="carousel-indicators">
<!-- li는 이미지 개수만큼 추가하고 data-target은 carousel id를 가르킨다. -->
<!-- data-slide-to는 순서대로 0부터 올라가고 0은 active를 설정한다. -->
<!-- 딱히 이 부분은 옵션별로 설정하게 없다. -->
<li data-target="#carousel-example-generic1" data-slide-to="0" class="active"></li>
<li data-target="#carousel-example-generic1" data-slide-to="1"></li>
<li data-target="#carousel-example-generic1" data-slide-to="2"></li>
</ol>
<!-- 실제 이미지 아이템 -->
<!-- class는 carousel-inner로 설정하고 role은 listbox에서 설정한다. -->
<div class="carousel-inner" role="listbox">
<!-- 이미지의 개수만큼 item을 만든다. 중요한 포인트는 carousel-indicators의 li 태그 개수와 item의 개수는 일치해야 한다. -->
<div class="item active">
<!-- 아미지 설정- -->
<img src="/resources/img/aboutusimg2_1.png" style="width:100%">
<!-- 캡션 설정 (생략 가능) -->
<!-- 글자 색은 검은색 -->
<div class="carousel-caption" style="color:black;">
</div>
</div>
<div class="item">
<img src="/resources/img/aboutusimg2_2.png" style="width:100%">
<div class="carousel-caption" style="color:black;">
</div>
</div>
<div class="item">
<img src="/resources/img/aboutusimg2.png" style="width:100%">
<div class="carousel-caption" style="color:black;">
</div>
</div>
</div>
<!-- 왼쪽 화살표 버튼 -->
<!-- href는 carousel의 id를 가르킨다. -->
<a class="left carousel-control" href="#carousel-example-generic1" role="button" data-slide="prev">
<!-- 왼쪽 화살표 -->
<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
</a>
<!-- 오른쪽 화살표 버튼 -->
<!-- href는 carousel의 id를 가르킨다. -->
<a class="right carousel-control" href="#carousel-example-generic1" role="button" data-slide="next">
<!-- 오른쪽 화살표 -->
<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
</a>
</div>
</div>


   
    <!--   <img id="aboutusimg" vspace=100 src="/resources/img/aboutusimg2.png" width="420px" height="340px"> -->
      <br>

         <h4 id="aboutus_content">사용용도에 따라 다양한 차종 보유</h4>
         <hr style="width: 280px;">
         <p id="contenttext">경차/승용/SUV/스포츠카/승합차 등</p>
         <p id="contenttext">사용용도에 맞춰 원하는 차량을 선택해보세요!</p>
         <p id="contenttext">당신을 위한 다양한 차량이 준비되어있어요.</p>
         

           <br><br>
           
          <h4 id="aboutus_content">자유로운 이용시간</h4>
         <hr style="width: 170px;">
         <p id="contenttext">쇼핑, 데이트, 여행, 외근 등 차가 필요할 때,</p>
         <p id="contenttext">길어도 짧아도 상관없이, 필요한 만큼만 차를 대여하세요</p>
         <p id="contenttext">10분 단위로 자유롭게 차를 이용할 수 있답니다.</p>
         <br><br><br>

      
         <p id="contenttext">차가 있으신 분도,</p>
   
         <p id="contenttext">차가 없으신 분도,</p>
      
         <p id="contenttext">모두가 이용할 수 있는 PICK ME CAR만의 </p>
         <p id="contenttext">차별화된 서비스를 경험해보세요</p>
   
         <br>
         <p id="contenttext">당신이 더욱 편해질 수 있도록</p>

         <h1 id="content">PICK ME CAR가 미리 준비해놓을게요</h1>
         <br>
      
  		 <h1 id="content"><a href="/login/customLogin">ABOUT 지도로 예약하기</a></h1>
      </div>


        </div>
        </div>
        </div>
        
        
       

<br><br>
<script>
$(function(){
// 이미지 슬라이드 컨트롤를 사용하기 위해서는 carousel를 실행해야한다.
$('#carousel-example-generic').carousel({
// 슬리아딩 자동 순환 지연 시간
// false면 자동 순환하지 않는다.
interval: 1000,
// hover를 설정하면 마우스를 가져대면 자동 순환이 멈춘다.
pause: "hover",
// 순환 설정, true면 1 -> 2가면 다시 1로 돌아가서 반복
wrap: true,
// 키보드 이벤트 설정 여부(?)
keyboard : true
});

});

$(function(){
// 이미지 슬라이드 컨트롤를 사용하기 위해서는 carousel를 실행해야한다.
$('#carousel-example-generic1').carousel({
// 슬리아딩 자동 순환 지연 시간
// false면 자동 순환하지 않는다.
interval: 1000,
// hover를 설정하면 마우스를 가져대면 자동 순환이 멈춘다.
pause: "hover",
// 순환 설정, true면 1 -> 2가면 다시 1로 돌아가서 반복
wrap: true,
// 키보드 이벤트 설정 여부(?)
keyboard : true,

});

});


</script>


     <%@include file="include/footer.jsp" %>
     </html>
  </body>