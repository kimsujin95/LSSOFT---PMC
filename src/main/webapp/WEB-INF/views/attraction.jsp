<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>

<%@include file="include/header.jsp" %>

  <!-- Page Header -->
  <header class="masthead" style="background-image: url('/resources/img/attraction.jpg')">
    <div class="overlay"></div>
    <div class="container">
      <div class="row">
        <div class="col-lg-8 col-md-10 mx-auto">
          <div class="page-heading">
            <h1>Attraction</h1>
            <span class="subheading">픽미카가 서울 명소를 추천해드려요</span>
          </div>
        </div>
      </div>
    </div>
  </header>

   <!-- Main Content -->
  <div class="container">
    <div class="row">
      <div class="col-lg-8 col-md-10 mx-auto">


    
    <title>마커 테스트</title>
    <style>
    .overlay_info {height: 130px; width:200px; border-radius: 6px; margin-bottom: 12px; float:left;position: relative; border: 1px solid #ccc; border-bottom: 2px solid #ddd;background-color:#fff;}
    .overlay_info:nth-of-type(n) {border:0; }
    .overlay_info a {display: block; background: #d95050; background: #e9b4ff url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/arrow_white.png) no-repeat right 30px center; text-decoration: none; color: #fff; padding:12px 36px 12px 14px; font-size: 14px;}
    .overlay_info .desc {padding:14px;position: relative; min-width: 190px; height: 56px}
    .overlay_info img {vertical-align: top; height:65px; width:65px; position: absoulte;}
    .overlay_info .address {font-size: 12px; color: #333; position: absolute; left: 90px; right: 14px; top: 24px; white-space: normal}
    /* .overlay_info:after {content:'';position: absolute; margin-left: -11px; left: 50%; bottom: -12px; width: 22px; height: 12px; background:url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png) no-repeat 0 bottom;} */
</style>
    <script src="https://code.jquery.com/jquery-3.5.1.js"
   integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
   crossorigin="anonymous"></script>


<div>
<div id="centerDiv" class="col-lg-12 col-md-12 mx-auto">
<h1 id="content">성남시 관광명소 찾기</h1><br>
<p id="contenttext">버튼을 누르면 관광지에 대한 장소가 표시되며 <br> 
그곳에 대한 위치는 마커를 누를시 나타나게 됩니다.</p>
</div>
<hr>

<script>
   var parkingPositions = [];
   $(document).ready(function(){
      $.getJSON('/resources/attraction.json', function(data){
         $.each(data.stores, function(key, value){
            var point = {
                  title : value.pname,
                  lat : value.lat,
                  lnt : value.lnt,
                  address : value.paddress1
            };
            console.log("point : " + point.lat + " , " + point.lnt + " , " + point.address);
            parkingPositions.push(point);
         });
         
         
      });
   });
   
</script>
<div id="map" style="width:800px;height:800px;"></div>
<p><button class="btn btn-info" onclick="showMarkers()">마커 보이기</button></p>

<script type="text/javascript"
      src="//dapi.kakao.com/v2/maps/sdk.js?appkey=e4c634fffeb019a79cd667be9231f748"></script>

<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
    mapOption = { 
        center: new kakao.maps.LatLng(37.44905421, 127.1583536), // 지도의 중심좌표
        level: 5 // 지도의 확대 레벨
    };

var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
 

function showMarkers(){ //마커를 보이게하는 함수
   // 마커를 표시할 위치와 title 객체 배열입니다 
   var positions = [];
   for (var i = 0; i < 34; i++){
      //debugger;
      position = {
            title : parkingPositions[i].title,
            latlng : new kakao.maps.LatLng(parkingPositions[i].lat,
                  parkingPositions[i].lnt),
            content : '<div class="overlay_info">'+ 
            '   <a target="_blank" class="link"><strong>' +   parkingPositions[i].title + '</strong></a>' + 
            '   <div class="desc">' + 
            '      <img src="/resources/attraction/b_' + i + '.JPG" alt="">' +
            '      <span class="address">' + parkingPositions[i].address + '</span>' +
            '   </div>' +
            '</div>'
      };
      //console.log(parkingPositions[i].lat + ", " + parkingPositions[i].lnt);
      positions.push(position);
   }

   // 마커 이미지의 이미지 주소입니다
   var imageSrc = 'https://ifh.cc/g/RXS8hx.png'; 
       
   for (var i = 0; i < positions.length; i ++) {
       
       // 마커 이미지의 이미지 크기 입니다
       var imageSize = new kakao.maps.Size(24, 35); 
       
       // 마커 이미지를 생성합니다    
       var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize); 
       
       // 마커를 생성합니다
       var marker = new kakao.maps.Marker({
           map: map, // 마커를 표시할 지도
           position: positions[i].latlng, // 마커를 표시할 위치
           title : positions[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
           image : markerImage, // 마커 이미지 
           
       });
       //console.log("marker" + positions[i].latlng);
       var iwRemoveable = true; // removeable 속성을 true 로 설정하면 인포윈도우를 닫을 수 있는 x버튼 표시
       
       var infowindow = new kakao.maps.InfoWindow({
          content : positions[i].content,
          removable : iwRemoveable
       });
       
       kakao.maps.event.addListener(marker, 'click', clickListener(map, marker, infowindow));
       
   }
   
   function setMarkers(map){ //클릭시 위의 마커를 맵에 나타나게 하는 함수
      for(var i = 0; i < markers.length; i++){
         markers[i].setMap(map);
      }
   }
   function clickListener(map, marker, infowindow){
      return function(){
         infowindow.open(map, marker);
      };
   }
   
}
   
   

</script>


      </div>
    </div>
  </div>

</div>


     <%@include file="include/footer.jsp" %>