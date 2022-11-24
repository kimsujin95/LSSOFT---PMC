<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>

<%@include file="include/header.jsp" %>
<style>
#useH1{
text-align:center;
padding: 20px;
}

 
</style>
  <!-- Page Header -->
  <header class="masthead" style="background-image: url('/resources/img/use.jpg')">
    <div class="overlay"></div>
    <div class="container">
      <div class="row">
        <div class="col-lg-8 col-md-10 mx-auto">
          <div class="page-heading">
            <h1>Manual</h1>
            <span class="subheading">픽미카, 이렇게 이용해보세요</span>
          </div>
        </div>
      </div>
    </div>
  </header>

  <!-- Main Content -->
  <div class="container">
    <div class="row">
      <div class="col-lg-8 col-md-10 mx-auto" text-align:center>
      <h1 id="content">픽미카 이용 방법</h1>
      <hr>
      <div class="imgContainer">
      <img alt="빈공간" src="/resources/img/use1.jpg" height="300" width="300">
      <img alt="빈공간" src="/resources/img/use2.jpg" height="300" width="300">
      </div>
      <br>
      <hr>
      <div id="usecontent">
        <p >혹시 지금 주차할 곳을 찾고 계신가요?</p>
        <p>그런 분들을 위해 <b>PICK ME CAR</b>의 서비스</p>
        <p>가까운 잔여 주차장 찾기 서비스를 이용해보세요.</p><br>
        <p>더 이상 주차장을 찾아 헤메이는 일상은 안녕!</p>
        <p>원하는 시간, 위치를 검색하고 예약까지 가능하답니다.</p>
        <p>당신이 더욱 편해질 수 있도록</p>
        <p><b>PICK ME CAR</b>가 미리 준비해놓을게요</p>
        </div>
      </div>
    </div>
  </div>

 

     <%@include file="include/footer.jsp" %>