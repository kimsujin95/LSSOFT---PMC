


 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css" type="text/css" />  
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>  
<script src="http://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script> 
 
 
 <style>
    table#reservationlist_tab{
   margin: auto;
   border-collapse: collapse;
   border-spacing: 1.8px;
   line-height: 2.0;
   text-align: center;
   }

   table#reservationlist_tab th{
   padding: 15px;
   margin: auto;
   width: auto;
   text-align: center;
   border-top : 2px solid rgb(130, 130, 130);
    border-bottom: 1.9px solid rgb(110, 110, 110);
   font-size: 110%; font-family: 'Noto Sans KR', sans-serif; font-weight: 700;
   color: rgb(85, 85, 85);
   background-color: rgb(253, 253, 253);
   }


   table#reservationlist_tab td{
   padding: 10px;
   margin: auto;
   text-align: center;
    border-bottom: 1.5px solid #ccc;
   font-size: 100%; font-family: 'Noto Sans KR', sans-serif; font-weight: 500;   
   color: rgb(100, 100, 100);
   }
   
 </style>
 
</head>


   <body>
      <table id="reservationlist_tab">
      <tr>
      <th>예약번호</th>
      <th>차량번호</th>
      <th>예약일자</th>
      <th>예약시간</th>
      <th>이용시간</th>
      <th>현재위치</th>
      <th>반납할 위치</th>
      <th>이용요금</th>
      <th>시간변경 및 예약</th>
      </tr>
      <c:forEach items="${reservationlist }" var="reservationlist">
         <tr>
            <td><c:out value="${reservationlist.reservationno }"/></td>
            <td><c:out value="${reservationlist.carid }"></c:out></td>
            <td><c:out value="${reservationlist.rdate }"></c:out></td>
            <td><c:out value="${reservationlist.rtime }"></c:out></td>
            <td><c:out value="${reservationlist.usetime }"></c:out></td>
            <td><c:out value="${reservationlist.nowlocation }"></c:out></td>            
            <td><c:out value="${reservationlist.nextlocation }"></c:out></td>            
            <td><c:out value="${reservationlist.charge }"></c:out></td>
         	<td><form action="/car/reservationmodify">
               <input type="hidden" name="reservationno" value="<c:out value='${reservationlist.reservationno }'/>">
               <input type="hidden" id="carid" name="carid" value="<c:out value='${reservationlist.carid }'/>">
               <input type="hidden" id="rdate" name="rdate" value="<c:out value='${reservationlist.rdate }'/>">
               <input type="hidden" id="rtime" name="rtime" value="<c:out value='${reservationlist.rtime }'/>">
               <input type="hidden" id="usetime" name="usetime" value="<c:out value='${reservationlist.usetime }'/>">
               
         
               <button type="submit">시간변경 및 예약취소</button>
            </form></td>
         </tr>
      </c:forEach>
   </table>
   


</body>
</html>