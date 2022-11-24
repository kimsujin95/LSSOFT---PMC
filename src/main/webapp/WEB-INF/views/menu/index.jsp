<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>

<%@include file="../include/header.jsp" %>


<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<style>
	body,html {width:100%;height:100%;margin:0px;padding:0px;overflow:hidden;font-family:sans-serif;}
	.jb-box { width: 1920px; height: 900px; overflow: hidden;margin: 0px auto; position: relative; }
      video { width: 1920px; height:900px;}
      .jb-text { position: absolute; top: 100%; width: 100%; }
      
	
	
	#fullpage {position:relative;top:0px;z-index:9;width:100%;height:100%;}
	.fullsection{width:100%;height:100%;position:relative;}
	.full1{background:black;}
	.full2{background: black;}
	.full3{background: black;}
	.full4{background: black;}
	.full5{background: #fff;}
	#fullpage span{display:block;position:absolute;top:50%;left:50%;transform:translate(-50%,-50%);color:#fff;font-size:4em;font-weight:bold;}
	.full2 span{color:#000;}

	ul, li{margin:0;padding:0;list-style:none}
	.quick {position:fixed;right:20px;top:50%;transform:translateY(-50%); z-index:100000;}
	.quick li {width:10px;height:10px;margin-bottom:10px; border-radius:15px;border:2px solid #fff;cursor:pointer;}
	.quick li.on {background:#red;}
	.quick li.hover {background:#red;}
	
	#ghost{	display: none;}

	

#harfBack1{
poaition:absolute;
top:50%;
left:50%;
background: linear-gradient( 180deg, transparent,#736AFF 85%);
}
#harfBack2{
poaition:absolute;
top:50%;
left:50%;
background: linear-gradient( 180deg, transparent,#fbb117 85%);
}
#harfBack3{
poaition:absolute;
top:50%;
left:50%;
background: linear-gradient( 180deg, transparent,#7f38ec 75%);
}
#harfBack4{
poaition:absolute;
top:50%;
left:50%;
background: linear-gradient( 180deg, transparent,#3498db 85%);
}
#harfBack5{
poaition:absolute;
top:50%;
left:50%;
background: linear-gradient( 180deg, transparent,#4aa02c 85%);
}
#centerCo{
poaition:absolute;
top:50%;
left:50%;
text-align:center;
}
#post-title_index1{
font-size:50px;
text-shadow: 6px 6px 6px blue;

color:white;
text-align:center;
text-transform: uppercase;
font-family: "Arial Black", sans-serif;
font-weight: bold;
}

#post-title_index2{
font-size:50px;
text-shadow: 6px 6px 5px #EAC117;

color:white;
text-align:center;
text-transform: uppercase;
font-family: "Arial Black", sans-serif;
font-weight: bold;
}

#post-title_index3{
font-size:50px;
text-shadow: 6px 6px 5px #FF00FF;

color:white;
text-align:center;
text-transform: uppercase;
font-family: "Arial Black", sans-serif;
font-weight: bold;
}
#post-title_index4{
font-size:50px;
text-shadow: 6px 6px 5px #98FF98;

color:white;
text-align:center;
text-transform: uppercase;
font-family: "Arial Black", sans-serif;
font-weight: bold;
}

#post-meta_index{
color:white;
text-align:center;
}
</style>


  

  <!-- Main Content -->
  <body>
	<div id="fullpage">
		<div class='quick'><ul></ul></div>
		<div class="fullsection full1" pageNum="1"><div class="jb-box">
      <video id="videobcg" muted autoplay loop>
        <source src="/resources/img/index.mp4" type="video/mp4">
      </video>
    </div>
<!-- Page Header -->
  
  
	
	
	</div>
		<div class="fullsection full2" pageNum="2" >
        <div class="post-preview" style="background-image: url('/resources/img/index/full1.jpg')">
        <div id="harfBack1">
      <br>
      <br>
      <br>
      <br>
       <div id="centerCo">
          <a href="../introduce">
            <h2 class="post-title" id="post-title_index1">
              픽미카 소개
            </h2>
            <img width="500" height="500" vspace=50 alt="빈공간" src="/resources/img/index/info.gif">
            
            <h3 class="post-subtitle">
              픽미카, 이렇게 만들어졌어요.
            </h3>
          </a>
          <p class="post-meta" id="post-meta_index"> 원하는 서비스를 찾아보세요!
            
            </p>
            <br>
     		<br>
           	<br>
      		<br>
            </div>
        </div>
        </div>
        <hr>
        
		</div>
		<div class="fullsection full3" pageNum="3">
		<div class="post-preview" style="background-image: url('/resources/img/index/full2.jpg')">
		<div id="harfBack2">
		<br>
      <br>
      <br>
      <br>
      <br>
       <div id="centerCo">
          <a href="../listReservation">
            <h2 class="post-title" id="post-title_index2">
             관광명소 확인 페이지
            </h2>
             <img width="700" height="550" vspace=40 alt="빈공간" src="/resources/img/index/attraction.gif">
          </a>
          <p class="post-meta" id="post-meta_index">근처에 관광명소로 여행을 떠나보내는건 어떠세요?
            
            </p>
            <br>
     		<br>
           	<br>
      		
      		
            </div>
            </div>
        </div>
        <hr>
        
		</div>
		<div class="fullsection full4" pageNum="4">
      <div class="post-preview" style="background-image: url('/resources/img/index/full4.jpg')">
      <div id="harfBack3">
      <br>
      <br>
      <br>
      <br>
      <br>
     <div id="centerCo">
          <a href="../mapReservation">
            <h2 class="post-title" id="post-title_index3">
              지도로 예약하는 페이지
            </h2>
            <img width="800" height="500"  vspace=40 alt="빈공간" src="/resources/img/index/map.gif">
            <h3 class="post-subtitle">
              지도를 통해 보다 직관적으로 위치를 확인할 수 있어요!
            </h3>
          </a>
          
          <p class="post-meta" id="post-meta_index"> 지도를 통해 픽미카를 예약해보세요
            
            </p>
            <br>
     		<br>
           	
            </div>
            </div>
        </div>
        <hr>
        
     </div>
<div class="fullsection full5" pageNum="5">
		<div class="post-preview" style="background-image: url('/resources/img/index/full5.jpg')">
			<div id="harfBack5">
		<br>
      <br>
      <br>
      <br>
      <br>
       <div id="centerCo">
          <a href="../board/list">
            <h2 class="post-title" id="post-title_index4">
               공지사항
            </h2>
            <img width="700" height="680"alt="빈공간" src="/resources/img/index/notice.png">
            <h4 class="post-subtitle">
              고객님들의 생생한 후기와, 픽미카의 변경 사항과 공지사항을 한번에 확인해보실 수 있습니다.
            </h4>
          </a>
          <br>
        </div>
            </div>
        </div>
        <hr>
       </div>
       <!-- Pager -->
        <div class="clearfix">
          <a class="btn btn-primary float-right" href="#">맨 위로 가기 &#9650;</a>
        </div>
  
	</div>

  

  <hr>

  <%@include file="../include/footer.jsp" %>
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script type="text/javascript" src="/resources/js/fullPage.js"></script>
 
  <script>
$(document).ready(function(){
	fullset();
	quickClick();
});
function fullset(){
	var pageindex = $("#fullpage > .fullsection").size(); //fullpage 안에 섹션이(.fullsection) 몇개인지 확인하기
	for(var i=1;i<=pageindex;i++){
		$("#fullpage > .quick > ul").append("<li></li>");
	}
	$("#fullpage .quick ul :first-child").addClass("on"); //일단 화면이 로드 되었을때는 퀵버튼에 1번째에 불이 들어오게
	//마우스 휠 이벤트
	$(window).bind("mousewheel", function(event){
		var page = $(".quick ul li.on");
		//alert(page.index()+1);  // 현재 on 되어있는 페이지 번호
		if($("body").find("#fullpage:animated").length >= 1) return false;
		//마우스 휠을 위로
		if(event.originalEvent.wheelDelta >= 0) {
			var before=page.index();
			if(page.index() >= 0) page.prev().addClass("on").siblings(".on").removeClass("on");//퀵버튼옮기기
			var pagelength=0;
			for(var i=1; i<(before); i++)
			{
				pagelength += $(".full"+i).height();
			}
			if(page.index() > 0){ //첫번째 페이지가 아닐때 (index는 0부터 시작임)
				page=page.index()-1;
				$("#fullpage").animate({"top": -pagelength + "px"},1000, "swing");
			}else{
				alert("첫번째페이지 입니다.");
			}	
		}else{ // 마우스 휠을 아래로	
			var nextPage=parseInt(page.index()+1); //다음페이지번호
			var lastPageNum=parseInt($(".quick ul li").size()); //마지막 페이지번호
			//현재페이지번호 <= (마지막 페이지 번호 - 1)
			//이럴때 퀵버튼옮기기
			if(page.index() <= $(".quick ul li").size()-1){ 
				page.next().addClass("on").siblings(".on").removeClass("on");
			}
			
			if(nextPage < lastPageNum){ //마지막 페이지가 아닐때만 animate !
				var pagelength=0;
				for(var i = 1; i<(nextPage+1); i++){ 
					//총 페이지 길이 구하기
					//ex) 현재 1번페이지에서 2번페이지로 내려갈때는 1번페이지 길이 + 2번페이지 길이가 더해짐
					pagelength += $(".full"+i).height();
				}
				$("#fullpage").animate({"top": -pagelength + "px"},1000, "swing");
			}
			else{ // 현재 마지막 페이지 일때는
				alert("마지막 페이지 입니다!");
			};		
			
		}
	});
	$(window).resize(function(){ 
		//페이지가 100%이기때문에 브라우저가 resize 될때마다 스크롤 위치가 그대로 남아있는것을 방지하기 위해
		var resizeindex = $(".quick ul li.on").index()+1;
		
		var pagelength=0;
		for(var i = 1; i<resizeindex; i++){ 
			//총 페이지 길이 구하기
			//ex) 현재 1번페이지에서 2번페이지로 내려갈때는 1번페이지 길이 + 2번페이지 길이가 더해짐
			pagelength += $(".full"+i).height();
		}

		$("#fullpage").animate({"top": -pagelength + "px"},0);
	});
}
// 사이드 퀵버튼 클릭 이동
function quickClick(){
	$(".quick li").click(function(){
		var gnbindex = $(this).index()+1;
		var length=0;
		for(var i=1; i<(gnbindex); i++)
		{
			length+=$(".full"+i).height();
		}
		if($("body").find("#fullpage:animated").length >= 1) return false;
		$(this).addClass("on").siblings("li").removeClass("on");
		
		$("#fullpage").animate({"top": -length + "px"},800, "swing");
		return false;
	});
}

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
