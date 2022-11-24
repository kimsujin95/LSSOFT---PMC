

<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
table#tab_ba{
   margin: auto;
   border-collapse: collapse;
   border-spacing: 1.8px;
   line-height: 2.5;
   text-align: center;
}

table#tab_ba th{
   padding: 15px;
   margin: auto;
   width: 130px;
   text-align: center;
   border-top : 2px solid rgb(130, 130, 130);
    border-bottom: 1.9px solid rgb(110, 110, 110);
   font-size: 110%; font-family: 'Noto Sans KR', sans-serif; font-weight: 900;
   color: rgb(85, 85, 85);
   background-color: rgb(253, 253, 253);
}


table#tab_ba td{
   padding: 10px;
   margin: auto;
   text-align: center;
    border-bottom: 1.5px solid #ccc;
   font-size: 100%; font-family: 'Noto Sans KR', sans-serif; font-weight: 600;   
   color: rgb(100, 100, 100);
   
}
   
#container {width: 1100px; margin:10px auto; text-align: center;}
.section {width: 1200px; margin:0px auto; }


   </style>
   </head>
   
   
   <body>
   <%@include file="../include/header.jsp" %>
  <!-- Page Header -->
  <header class="masthead" style="background-image: url('/resources/img/about-bg.jpg')">
    <div class="overlay"></div>
    <div class="container">
      <div class="row">
        <div class="col-lg-8 col-md-10 mx-auto">
          <div class="page-heading">
            <h1>Map Reserve</h1>
            <span class="subheading">표를 통해 예약해보세요</span>
          </div>
        </div>
      </div>
    </div>
  </header>
   <table id="tab_ba" class="board-view">
      <thead>
      <tr>
      <th>차량사진</th>
      <th>차 번호판</th>
      <th>차량 모델</th>
      <th>차 분류</th>
      <th>가격</th>
      <th>시간당 추가요금</th>
      </tr>
      </thead>
      <tbody>
      <c:forEach items="${list }" var="carinfo">
         <tr>
            <td><img src="/resources/image/${carinfo.carmodel}.png" style="width: 170px; height: 90px;"/></td>
            <td><a href='/car/carreservation?carid=<c:out value="${carinfo.carid}"/>'><c:out value="${carinfo.carno }"></c:out></a></td>
            <td><c:out value="${carinfo.carmodel }"></c:out></td>
            <td><c:out value="${carinfo.carcategory }"></c:out></td>
            <td><c:out value="${carinfo.price }"></c:out>원</td>
            <td><c:out value="${carinfo.dprice }"></c:out>원</td>
         </tr>
      </c:forEach>
      </tbody>
   </table>
</body>
</html>
<%@include file="../include/footer.jsp" %>