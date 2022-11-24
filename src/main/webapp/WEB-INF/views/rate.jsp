<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>

<%@include file="include/header.jsp" %>
<!-- <link href="/resources/css/fee.css" rel="stylesheet"> -->

  <!-- Page Header -->
  <header class="masthead" style="background-image: url('/resources/img/rate.jpg')">
    <div class="overlay"></div>
    <div class="container">
      <div class="row">
        <div class="col-lg-8 col-md-10 mx-auto">
          <div class="page-heading">
            <h1>Rate guide</h1>
            <span class="subheading">나에게 꼭 맞는 요금을 확인해보세요</span>
          </div>
        </div>
      </div>
    </div>
  </header>


  <!-- Main Content -->

 <!-- Begin #container -->
  <div id="container">
  <div class="col-lg-12 col-md-12 mx-auto">
      <div class="section">
        <!-- 요금 구성 -->
        <div class="section-box first">
              <br>
                <h4 id="aboutus_content">요금 구성</h4>
                <br>
                <br>
                <div class="first">
                  <div id="allBoard" >
                    <h5>대여요금</h5>
                    <br>
                    <p>10분 단위로 설정한 대여시간 만큼 발생합니다.
                    <br>반납위치를 대여위치와 다르게 설정하는 ‘편도’ 서비스의 경우,
                    <br>반납위치에 따라 요금이 추가됩니다.</p>  
                </div>
                </div>
                <div class="first">
                <div id="allBoard">
                    <h5>주행요금</h5>
                    <br>
                    <p>대여 중 운행하신 거리에 따라 부과되는 요금입니다.
                    <br>픽미카를 반납하시면 자동으로 주행거리를 계산해 등록하신 카드로 결제됩니다.</p>
                  
                  </div>
                </div>

                <div class="first">
                <div id="allBoard">
                    <h5>보험료</h5>
                    <br>
                    <p>운전 중 발생하는 사고에 대비해 자동차 종합보험(대인, 대물, 자손)과
                    <br>차량손해 면책제도를 제공합니다.
                    <br>대여시간에 비례해 보험료가 책정됩니다.</p>
                    </div>
                </div>

            <div class="first">
            <div id="allBoard">
                    <h5>하이패스 통행료 / 주차비</h5>
                    <br>
                    <p>통행료가 발생하는 고속도로를 이용하시거나 유료주차장을 차량 내 비치된
                    <br>하이패스 카드로 이용하신 경우, 사용하신 금액이 청구됩니다.</p>
               </div>
            </div>
        
        </div>
        <!-- //요금 구성 -->
          <br> <br> <br>
<hr>

        <!-- 차종별 기본요금 -->
        <div class="section-box" >
          <div class="section-tit">
            <h4 id="aboutus_content">차종별 기본요금</h4><br>
           
          </div>

          <br>
          <table id="tab_ba" class="board-view2 bg" style="margin-left: auto; margin-right: auto; margin-bottom: auto; text-align: center; text">
        

            <thead>
              <tr>
                <th id="th1" scope="col" rowspan="2" class="first">차종</th>
                <th id="th1" scope="col" rowspan="2">모델</th>
                <th id="th1" scope="col" rowspan="2">대여요금<br>(1시간당)</th>
                <th id="th1" scope="col" colspan="3">할인대여요금</th>
                <th id="th1" scope="col" rowspan="2">주행요금<br>(1km 당)</th>
              </tr>
              <tr>
                <th id="th1" scope="col">주중</th>
                <th id="th1" scope="col">주중 심야</th>
                <th id="th1" scope="col">주말</th>
              </tr>
            </thead>
            <tbody>
            
              <tr>
                <td id="td1">경형</td>
                <td id="td1" class="text-left">넥스트 스파크</td>
                <td id="td1"> 7,200원</td>
                <td id="td1" rowspan="3">3,730원~</td>
                <td id="td1" rowspan="3">1,860원~</td>
                <td id="td1" rowspan="3">5,220원~</td>
                <td id="td1">150원</td>
              </tr>
            
              <tr>
                <td id="td1">경형</td>
                <td id="td1" class="text-left">올 뉴 모닝</td>
                <td id="td1">7,200원</td>
                <td id="td1">140원</td>
              </tr>
            
              <tr>
                <td id="td1">경형</td>
                <td id="td1" class="text-left">레이</td>
                <td id="td1">7,500원</td>
                <td id="td1">170원</td>
              </tr>
            

              <tr>
                <td id="td1">준중형</td>
                <td id="td1" class="text-left">아반떼AD</td>
                <td id="td1">9,500원</td>
                <td id="td1" rowspan="3">4,840원~</td>
                <td id="td1" rowspan="3">2,420원~</td>
                <td id="td1" rowspan="3">7,140원~</td>
                <td id="td1">160원</td>
              </tr>
            
              <tr>
                <td id="td1">준중형</td>
                <td id="td1" class="text-left">올 뉴 K3</td>
                <td id="td1">9,500원</td>
                <td id="td1">160원</td>
              </tr>
            
              <tr>
                <td id="td1">준중형</td>
                <td id="td1" class="text-left">벨로스터</td>
                <td id="td1">13,000원</td>
                <td id="td1">190원</td>
              </tr>
            
              <tr>
                <td id="td1">중형</td>
                <td id="td1" class="text-left">LF쏘나타(LPG)</td>
                <td id="td1">13,000원</td>
                <td id="td1" rowspan="4">5,5770원~</td>
                <td id="td1" rowspan="4">2,880원~</td>
                <td id="td1" rowspan="4">8,000원~</td>
                <td id="td1">140원</td>
              </tr>
            
              <tr>
                <td id="td1">중형</td>
                <td id="td1" class="text-left">올뉴K5(LPG)</td>
                <td id="td1">13,000원</td>
                <td id="td1">140원</td>
              </tr>
            
              <tr>
                <td id="td1">중형</td>
                <td id="td1" class="text-left">K5 3세대</td>
                <td id="td1">18,000원</td>
                <td id="td1">180원</td>
              </tr>

                          
              <tr>
                <td id="td1">중형</td>
                <td id="td1" class="text-left">더 뉴 말리부</td>
                <td id="td1">16,000원</td>
                <td id="td1">180원</td>
              </tr>
         
              <tr>
                <td id="td1">대형</td>
                <td id="td1" class="text-left">그랜저 IG(휘)</td>
                <td id="td1">24,000원</td>
                <td id="td1" rowspan="1">6,620원~</td>
                <td id="td1" rowspan="1">3,310원~</td>
                <td id="td1" rowspan="1">8,830원~</td>
                <td id="td1">200원</td>
              </tr>

              <tr>
                <td id="td1">SUV</td>
                <td id="td1" class="text-left">스포티지 QL</td>
                <td id="td1">17,200원</td>
                <td id="td1" rowspan="6">5,980원~</td>
                <td id="td1" rowspan="6">2,990원~</td>
                <td id="td1" rowspan="6">7,980원~</td>
                <td id="td1">150원</td>
              </tr>
            
              <tr>
                <td id="td1">SUV</td>
                <td id="td1" class="text-left">니로 하이브리드</td>
                <td id="td1">17,200원</td>
                <td id="td1">130원</td>
              </tr>
            
              <tr>
                <td id="td1">SUV</td>
                <td id="td1" class="text-left">티볼리 에어(디젤)</td>
                <td id="td1">17,200원</td>
                <td id="td1">130원</td>
              </tr>

              <tr>
                <td id="td1">SUV</td>
                <td id="td1" class="text-left">코나(하이브리드)</td>
                <td id="td1">18,000원</td>
                <td id="td1">140원</td>
              </tr>
            
              <tr>
                <td id="td1">SUV</td>
                <td id="td1" class="text-left">싼타페 TM</td>
                <td id="td1">21,000원</td>
                <td id="td1">220원</td>
              </tr>
            
              <tr>
                <td id="td1">SUV</td>
                <td id="td1" class="text-left">쏘렌토 더 마스터</td>
                <td id="td1">21,000원</td>
                <td id="td1">220원</td>
              </tr>
            
              <tr>
                <td id="td1">승합</td>
                <td id="td1" class="text-left">올뉴카니발</td>
                <td id="td1">21,000원</td>
                <td id="td1" rowspan="1">9,190원</td>
                <td id="td1" rowspan="1">4,590원</td>
                <td id="td1" rowspan="1">11,080원</td>
                <td id="td1">190원</td>
              </tr>
            
              <tr>
                <td id="td1">전기차</td>
                <td id="td1" class="text-left">쏘울</td>
                <td id="td1">18,000원</td>
                <td id="td1" rowspan="3">6,580원</td>
                <td id="td1" rowspan="3">3,290원</td>
                <td id="td1" rowspan="3">9,780원</td>
                <td id="td1">50원</td>
              </tr>
            
              <tr>
                <td id="td1">전기차</td>
                <td id="td1" class="text-left">아이오닉</td>
                <td id="td1">20,000원</td>
                <td id="td1">50원</td>
              </tr>
            
              <tr>
                <td id="td1">전기차</td>
                <td id="td1" class="text-left">코나</td>
                <td id="td1">22,000원</td>
                <td id="td1">50원</td>
              </tr>
            
            </tbody>
          </table>
           <br><br><br><br>
          <div class="u-summary" style="margin-left: auto; margin-right: auto; text-align: center;">
            
            <h4 id="aboutus_content">요금적용 기준 시간 안내</h4>
            <br><br>
            <ul style="text-align: left;">
              <li style="text-align: left;">&diams;주중: 대여시작 시간이 일요일 19:00 ~ 금요일 18:50 이내인 경우</li><br>
              <li style="text-align: left;">&diams;주말: 대여시작 시간이 금요일 19:00 ~ 일요일 18:50 이내인 경우 (공휴일은 주말 요금 적용)</li><br>
              <li style="text-align: left;">&diams;심야 : 주중 00:00 ~ 06:50 (주말/공휴일 제외)</li><br>
            </ul>
          </div>
  </div>
       </div>
 </div>
 

     <%@include file="include/footer.jsp" %>