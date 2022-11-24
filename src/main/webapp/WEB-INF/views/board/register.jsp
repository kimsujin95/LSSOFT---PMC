<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<%@include file="../include/header.jsp"%>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> 
</head>


  <!-- Page Header -->
  
  <header class="masthead" style="background-image: url('/resources/img/post-bg.jpg')">
    <div class="overlay"></div>
    <div class="container">
      <div class="row">
        <div class="col-lg-8 col-md-10 mx-auto">
          <div class="page-heading">
            <h1>Notice</h1>
            <span class="subheading">새 글쓰기입니다.</span>
          </div>
        </div>
      </div>
    </div>
    
  </header>

<body>
  
  
  
<div class="row">
   <div class="col-md-6 mx-auto">
      <h1 class="page-header"></h1>
   </div>
   <!-- /.col-lg-12 -->
</div>
<!-- /.row -->
<div class="row">
   <div class="col-md-8 mx-auto">
      <div class="panel panel-default">
         
         <!-- /.panel-heading -->
         <div class="panel-body">
			
			<div id="registerBoard">
            <form role="form" action="/board/register" method="post">
               <div class="form-group">
                  <label>Title</label><input class="form-control" name='title'>
               </div>
               <div class="form-group">
                  <label>Text area</label>
                  <textarea class="form-control" rows="3" name='content'></textarea>
               </div>
               <div class="form-group">
                  <label>Writer</label><input class="form-control" name='writer' value='<sec:authentication property="principal.username"/>' readonly="readonly">
                  
               </div>
               </div>
               
               <div class="pull-right">
               <button type="submit" class="btn btn-primary">등록하기</button>
               <button type="reset" class="btn btn-info">다시쓰기</button>
				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
				</div>
            </form>


         </div>
         <!-- end panel-body -->
      </div>
      <!-- end panel -->
   </div>
</div>
<!-- /.row -->

<!-- 파일 등록하는 부분 -->
<div class="row">
   <div class="col-md-8 mx-auto">
      <div class="panel panel-default">
         <div id="registerBoard">
            
            <!--  /.panel-heading -->
            <div class="panel-body">
               <div class="form-group uploadDiv">
                  <input type="file" name='uploadFile' multiple>
               </div>
               
               <div class='uploadResult'>
                  <ul>
                  
                  </ul>
               </div>
            </div>
            <!--  end panel-body -->
      </div>
      </div>
      <!-- end panel-body -->
   </div>
   <!-- end panel -->
</div>
<!-- /.row -->

<script>
$(document).ready(function(e){
   
   var formObj = $("form[role='form']");
   
   $("button[type='submit']").on("click", function(e){
      e.preventDefault();
      console.log("submit clicked");
      
      var str ="";
      
      $(".uploadResult ul li").each(function(i, obj){
    	
    	  var jobj = $(obj);
    	  
    	  console.dir(jobj);
    	  
    	  str += "<input type='hidden' name='attachList["+i+"].fileName' value='"+jobj.data("filename")+"'>";
    	  str += "<input type='hidden' name='attachList["+i+"].uuid' value='"+jobj.data("uuid")+"'>";
    	  str += "<input type='hidden' name='attachList["+i+"].uploadPath' value='"+jobj.data("path")+"'>";
    	  str += "<input type='hidden' name='attachList["+i+"].fileType' value='"+jobj.data("type")+"'>";
      });
      formObj.append(str).submit();
   });
   
   var regex = new RegExp("(.*?)\.(exe|sh|zip|alz)$");
   var maxSize = 5242880; //5MB
   
   function checkExtension(fileName, fileSize){
      
      if(fileSize >= maxSize){
         alert("파일 사이즈 초과");
         return false;
         
      }
      if(regex.test(fileName)){
         alert("해당 종류의 파일은 업로드할 수 없습니다.");
         return false;
      }
      return true;
   }
   
   $("input[type='file']").change(function(e){
      
      var formData = new FormData();
      
      var inputFile = $("input[name='uploadFile']");
      
      var files = inputFile[0].files;
      
      
      //add filedate to formdata
      for(var i = 0; i < files.length; i++){
         
         if(!checkExtension(files[i].name, files[i].size)){
            return false;
         }
         formData.append("uploadFile", files[i]);
      }
      
      function showUploadResult(uploadResultArr){
         
         if(!uploadResultArr || uploadResultArr.length ==0){
            return;
         }
         
         var uploadUL = $(".uploadResult ul");
         
         var str = "";
         
         $(uploadResultArr).each(function(i, obj){
            
        	//image type
             if(obj.image){
                
                var fileCallPath = encodeURIComponent(obj.uploadPath + "/s_" + obj.uuid+"_"+ obj.fileName);
                
                 
                str += "<li data-path='"+obj.uploadPath+"'";
                str += " data-uuid='"+obj.uuid+"' data-filename='"+obj.fileName+"' data-type='"+obj.image+"'"
                str +" ><div>";
                str += "<span> " + obj.fileName + "</span>";
                str += "<button type='button' data-file=\'"+fileCallPath+"\'data-type='image' class='btn btn-warning btn-circle'><i class='fa fa-times'></i></button><br>";
                str += "<img src='/display?fileName="+fileCallPath+"'>";
                str += "</div>";
                str + "</li>";
             //str += "<li><img src='/resources/img/attach.png'>" + obj.fileName + "</li>";
             }else{
             //str += "<li>" + obj.fileName + "</li>";
             
                var fileCallPath = encodeURIComponent(obj.uploadPath + "/" + obj.uuid+"_"+ obj.fileName);
                
                var fileLink = fileCallPath.replace(new RegExp(/\\/g),"/");
                
                str += "<li "
                str += "data-path='"+obj.uploadPath+"' data-uuid='"+obj.uuid+"' data-filename='"+obj.fileName+"' data-type='"+obj.image+"' ><div>";
                str += "<span> " + obj.fileName + "</span>";
                str += "<button type='button' data-file=\'"+fileCallPath+"\' data-type='file' class='btn btn-warning btn-circle'><i class='fa fa-times'></i></button><br>";
                str += "<img src='/resources/img/attach.png'></a>";
                str += "</div>";
                str + "</li>";
            
            }
            
         });
         uploadUL.append(str);
      }
		
      $.ajax({
         url: '/uploadAjaxAction',
         processData: false,
         contentType: false,data: 
         formData,type: 'POST',
         dataType: 'json',
         success: function(result){
            console.log(result);
            //alert("Uploaded");
            
            showUploadResult(result); //업로드 결과 처리 함수
         }
      
      }); //$.ajax
      
   });
   $(".uploadResult").on("click","button",function(e){
		
		console.log("delete file");
		
		var targetFile = $(this).data("file");
		var type=$(this).data("type");
		
		var targetLi = $(this).closest("li");
		
		$.ajax({
			url:'/deleteFile',
			data: {fileName: targetFile, type:type},
			dataType:'text',
			type: 'POST',
			success: function(result){
				alert(result);
				targetLi.remove();
			}
		});	//$.ajax
	});

});
   
</script>

<%@include file="../include/footer.jsp"%>