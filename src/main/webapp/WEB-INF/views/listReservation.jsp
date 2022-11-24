<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page session="false"%>

<%@include file="include/header.jsp" %>
  <!-- Page Header -->
  <header class="masthead" style="background-image: url('/resources/img/about-bg.jpg')">
    <div class="overlay"></div>
    <div class="container">
      <div class="row">
        <div class="col-lg-8 col-md-10 mx-auto">
          <div class="page-heading">
            <h1>list Reserve</h1>
            <span class="subheading">표를 통해 예약해보세요</span>
          </div>
        </div>
      </div>
    </div>
  </header>

  <!-- Main Content -->
  <div class="container">
    <div class="row">
      <div class="col-lg-8 col-md-10 mx-auto">

<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.5.1.js"
   integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
   crossorigin="anonymous"></script>
<style>
    .wrap {position: absolute;left: 0;bottom: 40px;width: 288px;height: 132px;margin-left: -144px;text-align: left;overflow: hidden;font-size: 12px;font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;line-height: 1.5;}
    .wrap * {padding: 0;margin: 0;}
    .wrap .info {width: 286px;height: 120px;border-radius: 5px;border-bottom: 2px solid #ccc;border-right: 1px solid #ccc;overflow: hidden;background: #fff;}
    .wrap .info:nth-child(1) {border: 0;box-shadow: 0px 1px 2px #888;}
    .info .title {padding: 5px 0 0 10px;height: 30px;background: #eee;border-bottom: 1px solid #ddd;font-size: 18px;font-weight: bold;}
    .info .close {position: absolute;top: 10px;right: 10px;color: #888;width: 17px;height: 17px;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/overlay_close.png');}
    .info .close:hover {cursor: pointer;}
    .info .body {position: relative;overflow: hidden;}
    .info .desc {position: relative;margin: 13px 0 0 90px;height: 75px;}
    .desc .ellipsis {overflow: hidden;text-overflow: ellipsis;white-space: nowrap;}
    .desc .jibun {font-size: 11px;color: #888;margin-top: -2px;}
    .info .img {position: absolute;top: 6px;left: 5px;width: 73px;height: 71px;border: 1px solid #ddd;color: #888;overflow: hidden;}
    .info:after {content: '';position: absolute;margin-left: -12px;left: 50%;bottom: 0;width: 22px;height: 12px;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')}
    .info .link {color: #5085BB;}
</style>
</head>
<body>
<div>
<h1>주소를 확인해 보세요</h1>
<p>가시는 곳의 주소를 확인하여 예약버튼을 눌러보세요</p>
</div>
<hr>
<form role="form" action="/car/carlist?nowlocation=2" method="POST">   
   <table class="table table-striped table-bordered table-hover">
      <thead>
         <tr>
            <th>주차장 코드</th>
            <th>주차장 이름</th>
            <th>주소</th>
            <th>예약가능</th>
            <th>예약</th>
         </tr>
      </thead>

               
      <c:forEach items="${listReservation }" var="park">
         <tr>
         
            <td><c:out value="${park.pcode }"/></td>
            <td><c:out value="${park.pname }"/></td>
            <td><c:out value="${park.paddress1 }"/></td>
            <td>&nbsp;</td>
            <td><button type="submit" class="btn btn-primary">예약</button></td>
         
         </tr>      
      </c:forEach>
      
   </table>
   </form>


</body>
</html>
      </div>
    </div>
  </div>

  <hr>

   <%@include file="include/footer.jsp" %>