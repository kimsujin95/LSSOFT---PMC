
<%@page import="org.springframework.web.bind.annotation.RequestParam"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Pick Me Car : 예약하기</title>
<script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<style>
@charset "EUC-KR";
      

      *{
       text-align: center;      
        }
        .Header{
            line-height: 55px;
            height : 55px;
            padding: 10px;
            margin: auto;
        }
        
        .Nav{
           
           height : 100px;
          text-align: center;
        }

        .menu_bar{
         height : 100px;
        }
        
        .Content{
            height : auto;
            width : auto;
            line-height: 300px;
      }
      
      .tabcaption {
           font-size: 130%; 
           font-family: 'Noto Sans KR', sans-serif; 
           font-weight: 900;
           text-align: left;
           caption-side: top; 
         }
        
        .Content_reservation_tab{
            border-radius : 20px 20px 20px 20px;
            width : auto;
            height : auto;
            line-height: 300px;
            margin : 10px;
            padding : 20px;
            display : inline-block;
            text-align : center;
            background-color:rgba(245, 245, 245, 0.521);
            box-shadow: 10px 10px rgba(233, 210, 255, 0.671);
        }
        
        .timecaption {
           font-size: 110%; 
           font-family: 'Noto Sans KR', sans-serif; 
           font-weight: 900;
           text-align: right;
           caption-side: top; 
         }
         
         #green{
         font-size: 110%; 
           font-family: 'Noto Sans KR', sans-serif; 
           font-weight: 900;
           text-align: right;
           color: #00ebac;
           }

        #red{
         font-size: 110%; 
           font-family: 'Noto Sans KR', sans-serif; 
           font-weight: 900;
           text-align: right;
           color: #ff5959;
           }
        
         .Content_reservation_time{
            border : 2px solid green;
            height : auto;
            width : auto;
            line-height: 300px;
            margin : 5px;
            padding :20px;
        }  
        
        .Footer {      
            height : 55px;
            line-height : 55px;
        }
   
      table#reservation_tab{
      margin: auto;
      border-collapse: collapse;
      border-spacing: 1.8px;
      line-height: 2.5;
      text-align: center;
      }
   
      table#reservation_tab th{
      padding: 15px;
      margin: auto;
      width: 150px;
      text-align: center;
      border-bottom: 2.5px solid rgb(85, 85, 85, 0.767);
       font-size: 140%; 
       font-family: 'Noto Sans KR', sans-serif; 
       font-weight: 900;
      color: rgb(85, 85, 85);
       background-color: rgb(253, 253, 253);
       border-radius : 5px 5px 5px 5px;
      }
   
   
      table#reservation_tab td{
      padding: 10px;
      margin: auto;
      text-align: center;
       font-size: 145%; 
       font-family: 'Noto Sans KR', sans-serif; 
       font-weight: 700;   
       color: rgb(100, 100, 100);
       background-color: rgb(253, 253, 253);
      }
       
       table#reservation_time{
      border-collapse: collapse;
      border-spacing: 1.8px;
      line-height: 2.5;
      text-align: center;
      }
      
      table#reservation_time th{
      width: 130px;
      text-align: center;
      border-top : 2px solid white;
      border-bottom: 3px solid white;
      font-size: 110%; font-family: 'Noto Sans KR', sans-serif; font-weight: 900;
      color: rgb(85, 85, 85);
      background-color: rgba(242, 218, 255, 0.856);
      }
   
   
      table#reservation_time td{
      padding: 5px;
      margin: auto;
      text-align: center;
       border-bottom: 1.5px solid white;
      color: rgb(100, 100, 100);}
      
      td.table{
      font-size: 105%; 
      font-family: 'Noto Sans KR', sans-serif; 
      font-weight: 700;   
      }
      
   </style>
</head>

<body>
          <div class = "Header"></div>
      <div class = "Nav">  <p style="margin-left:50px"><a href="/menu/index"><img src="/resources/img/login/m_logo.png" id="logo"></a></p> </div>
        <div class="menu_bar"> <br>   </div>
          <div class = "Content">
             <div class = "Content_reservation_tab">


            <table id="reservation_tab">
            <caption class="tabcaption">선택내역</caption>
                  <tr>
                  <th>차량 사진</th>
                  <th>차번호판</th>
                  <th>차량 모델</th>
                  <th>차 분류</th>
                  <th>가격</th>
                  <th>시간당 추가요금</th>
                  <th>현재위치</th>
                  </tr>
                  <c:forEach items="${carinfo }" var="carinfo">
                     <input type="hidden" id="selectcarid" value="<c:out value="${carinfo.carid }"/>">
                     <tr>
                        <td><img src="/resources/image/${carinfo.carmodel}.png"/></td>
                        <td><div id="carno" ><c:out value="${carinfo.carno }"/></div></td>
                        <td><div id="carmodel" ><c:out value="${carinfo.carmodel }"/></div></td>
                        <td><div id="carcategory" ><c:out value="${carinfo.carcategory }"/></div></td>
                        <td><div id="price" ><c:out value="${carinfo.price }"/></div></td>
                        <td><div id="dprice" ><c:out value="${carinfo.dprice }"/></div></td>
                        <td><div id="nowlocation" ><c:out value="${carinfo.nowlocation }"/></div></td>
                     </tr>
                  </c:forEach>
               </table>
               </div>
               
             
               
               <table id="reservation_time">
               <caption class="timecaption"> <a id="green">예약가능</a>   <a id="red">예약완료</a></caption>
                  <tr>
                  <th style="border-right: 3px solid white; ">일자</th>
                  <th>예약 현황</th>
                  </tr>
                  <c:forEach items="${reservation }" var="reservation">
                     <tr>            
                        <td style="border-right: 3px solid white;">
                        <button class="rd" onclick="adddate('<c:out value='${reservation.rdate }'/>' )" value='<c:out value='${reservation.rdate }'/>'><c:out value="${reservation.rdate }"/></button>
                        </td>
                        <td><table>
                           <tr>   
                              <td class="table"><button class="rt" onclick="add(1)" value="<c:out value='${reservation.t1 }'/>">AM 01:00</button></td>
                              <td class="table"><button class="rt" onclick="add(2)" value="<c:out value='${reservation.t2 }'/>">AM 02:00</button></td>
                              <td class="table"><button class="rt" onclick="add(3)" value="<c:out value='${reservation.t3 }'/>">AM 03:00</button></td>
                              <td class="table"><button class="rt" onclick="add(4)" value="<c:out value='${reservation.t4 }'/>">AM 04:00</button></td>
                              <td class="table"><button class="rt" onclick="add(5)" value="<c:out value='${reservation.t5 }'/>">AM 05:00</button></td>
                              <td class="table"><button class="rt" onclick="add(6)" value="<c:out value='${reservation.t6 }'/>">AM 06:00</button></td>
                              <td class="table"><button class="rt" onclick="add(7)" value="<c:out value='${reservation.t7 }'/>">AM 07:00</button></td>
                              <td class="table"><button class="rt" onclick="add(8)" value="<c:out value='${reservation.t8 }'/>">AM 08:00</button></td>
                              <td class="table"><button class="rt" onclick="add(9)" value="<c:out value='${reservation.t9 }'/>">AM 09:00</button></td>
                              <td class="table"><button class="rt" onclick="add(10)" value="<c:out value='${reservation.t10 }'/>">AM 10:00</button></td>
                              <td class="table"><button class="rt" onclick="add(11)" value="<c:out value='${reservation.t11 }'/>">AM 11:00</button></td>
                              <td class="table"><button class="rt" onclick="add(12)" value="<c:out value='${reservation.t12}'/>">AM 12:00</button></td>
                              <td class="table"><button class="rt" onclick="add(13)" value="<c:out value='${reservation.t13 }'/>">PM 01:00</button></td>
                              <td class="table"><button class="rt" onclick="add(14)" value="<c:out value='${reservation.t14 }'/>">PM 02:00</button></td>
                              <td class="table"><button class="rt" onclick="add(15)" value="<c:out value='${reservation.t15 }'/>">PM 03:00</button></td>
                              <td class="table"><button class="rt" onclick="add(16)" value="<c:out value='${reservation.t16 }'/>">PM 04:00</button></td>
                              <td class="table"><button class="rt" onclick="add(17)" value="<c:out value='${reservation.t17 }'/>">PM 05:00</button></td>
                              <td class="table"><button class="rt" onclick="add(18)" value="<c:out value='${reservation.t18 }'/>">PM 06:00</button></td>
                              <td class="table"><button class="rt" onclick="add(19)" value="<c:out value='${reservation.t19 }'/>">PM 07:00</button></td>
                              <td class="table"><button class="rt" onclick="add(20)" value="<c:out value='${reservation.t20 }'/>">PM 08:00</button></td>
                              <td class="table"><button class="rt" onclick="add(21)" value="<c:out value='${reservation.t21 }'/>">PM 09:00</button></td>
                              <td class="table"><button class="rt" onclick="add(22)" value="<c:out value='${reservation.t22 }'/>">PM 10:00</button></td>
                              <td class="table"><button class="rt" onclick="add(23)" value="<c:out value='${reservation.t23 }'/>">PM 11:00</button></td>
                              <td class="table"><button class="rt" onclick="add(24)" value="<c:out value='${reservation.t24 }'/>">PM 12:00</button>         
                           </tr>
                        </table></td>
                     </tr>
                  </c:forEach>   
               </table>

               
               <!--                 //////////////////             예약정보          /////////////////////                                  -->
               <form action="/car/reservationlist" id="reservationz   " method="post">
                  <input type="hidden" id="userid" name="userid" value="<sec:authentication property="principal.username"/>">
                  <a> 차량 정보 : </a>
                  <input type="text" id="carid" name="carid" value="${carid }">
                  <a> 주차장 위치 : </a>
                  <c:forEach items="${carinfo }" var="carinfo">
                     <input type="text" id="nowlocation" name="nowlocation" value="${carinfo.nowlocation}">
                  </c:forEach>
                   <select id="nextlocation" name="nextlocation">
                     <option value="1">1</option>
                     <option value="2">2</option>
                     <option value="3">3</option>
                     <option value="4">4</option>
                     <option value="5">5</option>
                  </select>   
                  <input type="text" id="rdate" name="rdate" value="00"  >
                  <input type="text" id="rtime" name="rtime" value="" readonly >
                  
            
                  <select id="usetime" name="usetime">
                     <option value='0'>이용 시간</option>
                  </select>         
                  <input type="text" id="charge" name="charge" value="">
            
                  
                  
               
                  <input type="hidden" id="t1" name="t1" value="">
                  <input type="hidden" id="t2" name="t2" value="">
                  <input type="hidden" id="t3" name="t3" value="">
                  <input type="hidden" id="t4" name="t4" value="">
                  <input type="hidden" id="t5" name="t5" value="">
                  <input type="hidden" id="t6" name="t6" value="">
                  <input type="hidden" id="t7" name="t7" value="">
                  <input type="hidden" id="t8" name="t8" value="">
                  <input type="hidden" id="t9" name="t9" value="">
                  <input type="hidden" id="t10" name="t10" value="">
                  <input type="hidden" id="t11" name="t11" value="">
                  <input type="hidden" id="t12" name="t12" value="">
                  <input type="hidden" id="t13" name="t13" value="">
                  <input type="hidden" id="t14" name="t14" value="">
                  <input type="hidden" id="t15" name="t15" value="">
                  <input type="hidden" id="t16" name="t16" value="">
                  <input type="hidden" id="t17" name="t17" value="">
                  <input type="hidden" id="t18" name="t18" value="">
                  <input type="hidden" id="t19" name="t19" value="">
                  <input type="hidden" id="t20" name="t20" value="">
                  <input type="hidden" id="t21" name="t21" value="">
                  <input type="hidden" id="t22" name="t22" value="">
                  <input type="hidden" id="t23" name="t23" value="">
                  <input type="hidden" id="t24" name="t24" value="">
            
                  
                  <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                  <input type="submit">
                  
               </form>
               
               </div>
          <script type="text/javascript">
            
                $(window).load(function(){
                   carid.value= selectcarid.value;
                   var selecttime =0;
                  for (var i = 0; i < 1000; i++) {
                     var rt = document.getElementsByClassName("rt")[i].value;
                        if (rt == "x") {
                           $(".rt").eq(i).css({
                              "background-color" : "#00ebac"
                           });
                           $(".rt").eq(i).attr('disabled', false);
                           
                           
                           
                        } else {
                           $(".rt").eq(i).css({      
                              "background-color" : "#rgb(235, 235, 235)"
                           });
                           $(".rt").eq(i).attr('disabled', true);
                        }
                     }      
               });   
                
               
               
               var selectdate;
               function adddate(a){
                  rdate.value=a;
                  rtime.value=null;
                  charge.value=null;
                  $("#usetime").html("<option value='0'>이용할시간</option>");
                  for(var j=0;j<10;j++){
                     var rd=document.getElementsByClassName("rd")[j].value;
                     if(a ==rd ){
                        selectdate = j;      
                        var k=selectdate*24;
                        var j=(selectdate+1)*24;
                        for(var i=0;i<1000;i++){
                           $(".rt").eq(i).css({
                              "background-color" : "#ccc",
                              "color" : "#333333"
                           });
                           $(".rt").eq(i).attr('disabled', true);
                        }            
                        for(var i=k;i<j;i++){
                           var rt = document.getElementsByClassName("rt")[i].value;
                           if (rt == "x") {
                              $(".rt").eq(i).css({
                                 "background-color" : "#00ebac",
                                 "color" : "#333333"
                              });
                              $(".rt").eq(i).attr('disabled', false);
                           } else {
                              $(".rt").eq(i).css({      
                                 "background-color" : "#ff5959",
                                 "color" : "#ffa8b0"                                 
                              });
                              $(".rt").eq(i).attr('disabled', true);
                           }
                        }      
                     
                     }   
                  }      
               }          
               
               var lasttime;
               var renttime=0;
               function add(b){   
                  renttime=0;
                  charge.value=null;
                  if(rdate.value==00){
                     alert("날짜를 먼저 선택해주세요.");
                  }
                  else{
                     rtime.value=b;
                     var k=selectdate*24;
                     var j=(selectdate+1)*24;
                     //alert(selectdate);
                     for(var i=(k+b-1);i<j;i++){   
                        var rt = document.getElementsByClassName("rt")[i].value;
                        if (rt == "x") {
                           lasttime=i;
                           renttime++;            
                        } else {
                           break;
                        }
                     }
                     //alert(renttime);
                     $("#usetime").html("<option value='0'>이용할시간</option>");
                     for(var i=1;i<=renttime;i++){
                        $("#usetime").append("<option value='"+i+"'>"+i+"</option>");
                     }         
                  }         
               }   
               
            
            
               $("#usetime").change(function(){
                  var charge= $(this).val()*document.getElementById('dprice').innerHTML+ Number(document.getElementById('price').innerHTML) ;
                  $("#charge").val(charge);
                  
                  var k=selectdate*24;
                  var j=(selectdate+1)*24;
                  var h=1;
                  var selectusetime=Number($(this).val());
                  var rtime=Number($("#rtime").val());
                  
                  for(var i=k;i<k+24;i++){
                     var rt = document.getElementsByClassName("rt")[i].value;
                     $("#t"+h).val(rt);
                     h++;
                  }      
                  for(var r=rtime;r<rtime+selectusetime;r++){
                     $("#t"+r).val("o");      
                  } 
               });
               
                  
                  
               
               </script>
               </div>
       <div class = "Footer">

    </div>
    
         </body>
            
      </html>
            
            
            
            