<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>

<%@include file="../include/header.jsp" %>
<style>
*{
  margin:0; padding:0;
  font-size:15px; 
  line-height:1.3;
}
ul{list-style:none;}

.tabmenu{ 
  max-width:1500px; 
  margin: 0 auto; 
  position:relative; 
}
.tabmenu ul li{
  display:  inline-block;
  width:25%; 
  float:left;  
  text-align:center; 
  background :#f9f9f9;
}
.tabmenu ul li a{
  display:block;
  line-height:40px;
  height:50px;
  text-decoration:none; 
  color: #000;
}
.tabCon{
  display:none; 
  text-align:left; 
  padding: 20px;
  position:absolute; 
  left:0; top:40px; 
  box-sizing: border-box; 
  border : 5px solid #f9f9f9;
}
.btnCon:target  {
  background : #ccc;
}
.btnCon:target .tabCon{
  display: block;
}

</style>
<body>
  <!-- Page Header -->
  <header class="masthead" style="background-image: url('/resources/img/signUp.jpg')">
    <div class="overlay"></div>
    <div class="container">
      <div class="row">
        <div class="col-lg-8 col-md-10 mx-auto">
          <div class="page-heading">
            <h1>Clause</h1>
            <span class="subheading">이용약관</span>
          </div>
        </div>
      </div>
    </div>
  </header>

  <!-- Main Content -->
  <div class="container">
  
     <!-- Tabs navs -->
<ul class="nav nav-tabs mb-4" id="ex1" role="tablist">
  <li class="nav-item" role="presentation">
    <a
      class="nav-link active"
      id="ex1-tab-1"
      data-toggle="tab"
      href="#ex1-tabs-1"
      role="tab"
      aria-controls="ex1-tabs-1"
      aria-selected="true"
      >회원 이용 약관</a
    >
  </li>
  <li class="nav-item" role="presentation">
    <a
      class="nav-link"
      id="ex1-tab-2"
      data-toggle="tab"
      href="#ex1-tabs-2"
      role="tab"
      aria-controls="ex1-tabs-2"
      aria-selected="false"
      >개인정보 처리 방침</a
    >
  </li>
  <li class="nav-item" role="presentation">
    <a
      class="nav-link"
      id="ex1-tab-3"
      data-toggle="tab"
      href="#ex1-tabs-3"
      role="tab"
      aria-controls="ex1-tabs-3"
      aria-selected="false"
      >자동차 대여약관</a
    >
  </li>
  <li class="nav-item" role="presentation">
    <a
      class="nav-link"
      id="ex1-tab-4"
      data-toggle="tab"
      href="#ex1-tabs-4"
      role="tab"
      aria-controls="ex1-tabs-4"
      aria-selected="false"
      >위치기반 서비스 이용약관</a
    >
  </li>
</ul>
<!-- Tabs navs -->

<!-- Tabs content -->
<div class="tab-content" id="ex1-content">
  <div
    class="tab-pane fade show active"
    id="ex1-tabs-1"
    role="tabpanel"
    aria-labelledby="ex1-tab-1"
  >
    <%@include file="../clause/memberUse.jsp" %>
  </div>
  <div class="tab-pane fade" id="ex1-tabs-2" role="tabpanel" aria-labelledby="ex1-tab-2">
   <%@include file="../clause/information.jsp" %>
  </div>
  <div class="tab-pane fade" id="ex1-tabs-3" role="tabpanel" aria-labelledby="ex1-tab-3">
   <%@include file="../clause/carUse.jsp" %>
  </div>
  <div class="tab-pane fade" id="ex1-tabs-4" role="tabpanel" aria-labelledby="ex1-tab-4">
   <%@include file="../clause/location.jsp" %>
  </div>
</div>
<!-- Tabs content -->
    
  </div>

  <hr>

     <%@include file="../include/footer.jsp" %>
     </body>