<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>

<%@include file="include/header.jsp" %>

  <!-- Page Header -->
  <header class="masthead" style="background-image: url('/resources/img/usePost.jpg')">
    <div class="overlay"></div>
    <div class="container">
      <div class="row">
        <div class="col-lg-8 col-md-10 mx-auto">
          <div class="page-heading">
            <h1>Post-use review</h1>
            <span class="subheading">고객님들의 생생한 후기를 확인해보세요</span>
          </div>
        </div>
      </div>
    </div>
  </header>

  <!-- Main Content -->
 
<div class="row">
  <div class="col-md-10 col-md-10 mx-auto">
<h1 id="content">픽미카를 이용한 고객님들의 사진들</h1>
<br>
<br>
<br>

 <div class="row">
            <div class="col-md-12">

                <div id="mdb-lightbox-ui"></div>

                <div class="mdb-lightbox">

                
                    <c:forEach items="${imageList}" var="list">

					<figure class="col-md-4">
                        <a href="<c:out value="${list.uploadPath}" />"
                            data-size="1600x1067">
                         	<img src="<c:out value="${list.uploadPath}" />"
                                 id="figureimg"  class="img-fluid">
                        </a>
                    </figure>
			
					</c:forEach>

                </div>

            </div>
        </div>

</div>
</div>

  <hr>
  <br>
<script>
//MDB Lightbox Init
$(function () {
$("#mdb-lightbox-ui").load("mdb-addons/mdb-lightbox-ui.html");
});

const lightbox = document.getElementById('lightbox');
const lightboxInstance = mdb.Lightbox.getInstance(lightbox);
const lightboxToggler = document.getElementById('lightboxToggler');

lightboxToggler.addEventListener('click', () => {
  lightboxInstance.open(1);
});
</script>

     <%@include file="include/footer.jsp" %>