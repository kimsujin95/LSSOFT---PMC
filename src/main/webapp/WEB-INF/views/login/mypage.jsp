 <%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page session="false"%>

<%@include file="../include/header.jsp"%>
  <!-- Page Header -->
  <header class="masthead" style="background-image: url('/resources/img/about-bg.jpg')">
    <div class="overlay"></div>
    <div class="container">
      <div class="row">
        <div class="col-lg-8 col-md-10 mx-auto">
          <div class="page-heading">
            <h1>My Page</h1>
            <span class="subheading">마이 페이지 입니다</span>
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
    
    .mypagecaption {
           font-size: 130%; 
           font-family: 'Noto Sans KR', sans-serif; 
           font-weight: 900;
           text-align: left;
           caption-side: top; 
         }
        
        .Content_mypage{
            border-radius : 20px 20px 20px 20px;
            width : auto;
            height : auto;
            line-height: 300px;
            margin: 0 auto;
            padding : 0 auto;
            display : inline-block;
            text-align : center;
            background-color:rgb(248, 248, 248);
            box-shadow: 10px 10px rgba(179, 178, 178, 0.671);
        }
        
         table#mypage{
         margin-left: auto; 
         margin-right: auto;
         border-collapse: collapse;
         border-spacing: 1.8px;
         line-height: 2.5;
         text-align: center;
         width : 900px;
         }
         
         table#mypage th{
         padding: 15px;
         margin: auto;
         width: 200px;
         text-align: center;
         border-top : 2px solid rgb(gray);
         border-bottom: 2px solid rgb(110, 110, 110);
         font-size: 160%; 
         font-family: 'Noto Sans KR', sans-serif; 
         font-weight: 900;
         color: rgb(85, 85, 85);
         background-color: rgb(253, 253, 253);
         }
         
      
         table#mypage td{
         padding: 10px;
         margin: auto;
         text-align: center;
         font-size: 120%; 
         font-family: 'Noto Sans KR', sans-serif; 
         font-weight: 600;
         border-bottom: 1.8px solid #ccc;
         color: rgb(100, 100, 100);
         width : auto;
         heigth : auto;
         }
         
   
       .button_container {
         height: 60px;
         width: 300px;
         margin: 0 auto;
         text-align : center;    
         } 
     
        .ripple{ 
         height: 100%;
         width: 100%;
         display: block;
         outline: none;
         padding: 20px;   
         background: linear-gradient(135deg, #fbcbff 0%,#d3adff 100%);
         box-sizing: border-box;
         text-align: center;
         line-height: 14px;
         font-family: 'Noto Sans KR', sans-serif; 
         font-weight: 500;
         letter-spacing: 1px;
         text-decoration: none;
         border-radius : 20px 20px 20px 20px;
         border : 0px;
         }
      
      
         </style>
         
         
         </head>

   <body>
   
   <h2>MYPAGE</p>
   <hr align="left" style="border: solid 1px #ccc; width: 250px;">
   
   <div class="Content_mypage">
   <c:forEach items="${userinfo }" var="userinfo">
   <table id = "mypage">
      <caption class="mypagecaption"></caption>
      <tr>
      <td>아이디</td>
      <td>비밀번호</td>
      <td>이름</td>
      <td>전화번호</td>
      <td>성별</td>
      <td>생일</td>
      <td>이메일</td>
      </tr>
      
         <tr>
            <td><c:out value="${userinfo.userid }"/></td>
            <td><c:out value="${userinfo.userpw }"/></td>
            <td><c:out value="${userinfo.username }"></c:out></td>
            <td><c:out value="${userinfo.phoneno }"></c:out></td>
            <td><c:out value="${userinfo.email}"></c:out></td>
            <td><c:out value="${userinfo.birthday }"></c:out></td>
            <td><c:out value="${userinfo.gender }"></c:out></td>
         </tr>
   </table>

   </div>
   
   <br>
   <br>
   <br>
   
   <div class="button_container">
   <button class="ripple"><a href="/login/modifyinfo?userid=${userinfo.userid }">
   <span style="font-weight: bold; color: #white;">회원정보 수정</span></a></button>
   </div>
   
   </c:forEach>

</body>
</html>