<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@include file="../include/header.jsp"%>

 
</head>

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  <!-- Page Header -->
  <header class="masthead" style="background-image: url('/resources/img/post-bg.jpg')">
    <div class="overlay"></div>
    <div class="container">
      <div class="row">
        <div class="col-lg-8 col-md-10 mx-auto">
          <div class="page-heading">
            <h1>Notice</h1>
            <span class="subheading">공지사항입니다.</span>
          </div>
        </div>
      </div>
    </div>
  </header>

<body>



<div class="row">
	<div class="col-md-11">
		<div class='row'>
					<div id="searchForm" class="col-lg-12">		
						<form id='searchForm' action="/board/list" method='get'>
							<div class ="col-sm-9">
							<!-- 라디오 -->
							
							</div>
							<select name='type'>
								<option value=""
									<c:out value="${pageMaker.cri.type == null? 'selected' :'' }"/>>전체&nabla;</option>
								<option value="T"
									<c:out value="${pageMaker.cri.type eq 'T'? 'selected' :'' }"/>>제목</option>
								<option value="C"
									<c:out value="${pageMaker.cri.type eq 'C'? 'selected' :'' }"/>>내용</option>
								<option value="W"
									<c:out value="${pageMaker.cri.type eq 'W'? 'selected' :'' }"/>>작성자</option>
								<option value="TC"
									<c:out value="${pageMaker.cri.type eq 'TC'? 'selected' :'' }"/>>제목
									or 내용</option>
								<option value="TW"
									<c:out value="${pageMaker.cri.type eq 'TW'? 'selected' :'' }"/>>제목
									or 작성자</option>
								<option value="TWC"
									<c:out value="${pageMaker.cri.type eq 'TWC'? 'selected' :'' }"/>>제목
									or 내용 or 작성자</option>
							</select> <input type='text' name='keyword'
								value='<c:out value="${pageMaker.cri.keyword}"/>' /> <input
								type='hidden' name='pageNum'
								value='<c:out value="${pageMaker.cri.pageNum}"/>' /> <input
								type='hidden' name='amount'
								value='<c:out value="${pageMaker.cri.amount}"/>' />
								
								<input type="radio" name="gender" value="남자" checked="checked" />남자
								<input type="radio" name="gender" value="여자" />여자
							<button class='btn-btn-default'>Search</button>
						</form>
					</div>
				</div>

	</div>
	<!-- /.col-lg-12 -->
</div>
<!-- /.row -->
<div class="row" id="table1">
	<div class="col-md-10 mx-auto">
		<div class="panel panel-default">
			<div class="panel-heading">
				
				<button id='regBtn' type="button" class="btn btn-primary">
					새글 작성하기</button>
			</div>
			<!-- /.panel-heading -->
			<div class="col-md-11 mx-auto">
			<div id="registerBoard">
				<table class="table table-striped table-bordered table-hover">
					<thead>
						<tr>
							<th>#번호</th>
							<th>성별</th>
							<th>제목</th>
							<th>작성자</th>
							<th>작성일</th>
							<th>수정일</th>
							<th>결과값</th>
						</tr>
					</thead>
					
					<c:forEach items="${list }" var="board">
						<tr>
							<td><c:out value="${board.bno}" /></td>
							<td><c:out value="${board.gender}" /></td>
							<td><a class='move' href='<c:out value="${board.bno }"/>'>
									<c:out value="${board.title}" />
									<b>[ <c:out value="${board.replyCnt }"/>]</b>
							</a></td>
							<td><c:out value="${board.writer}" /></td>
							<td><fmt:formatDate pattern="yyyy-MM-dd hh:mm:ss"
									value="${board.regdate }" /></td>
							<td><fmt:formatDate pattern="yyyy-MM-dd"
									value="${board.updateDate }" /></td>
							<td><c:set var="regdate" value="${board.regdate}" />
							<fmt:parseNumber value="${fn:substring(regdate,11,13)}${fn:substring(regdate,14,16)}" var="num3" />
							<fmt:formatNumber value="${fn:substring(regdate,17,19)}" var="num4" />
							<fmt:formatNumber value="${fn:substring(regdate,24,26)}" var="num1" />
							<fmt:formatNumber value="${fn:substring(regdate,8,10)}"	var="num2" />
							${num3}+${num4}=${num3+num4}
							${num1}+${num2}=${num1+num2}
							</td>
						</tr>
					</c:forEach>
				</table>
				</div>
				
				
				<%-- 	총 ${pageMaker.total }이 검색되었습니다. --%>
				

				<div class='pull-right'>
					<ul class="pagination">

					
						<c:if test="${pageMaker.prev }">
							<button id='regBtn' type="button" class="btn btn-outline-warning">
							<li class="paginate_button previous"><a
								href="${pageMaker.startPage-1 }">Previous</a></li></button>
						</c:if>

						<c:forEach var="num" begin="${pageMaker.startPage }"
							end="${pageMaker.endPage }">
							<button id='regBtn' type="button" class="btn btn-outline-warning">
							<li class="paginate_button ${pageMaker.cri.pageNum == num ? "active":"" }">
								<a href="${num }">${num}</a>
							</li></button>
						</c:forEach>

						<c:if test="${pageMaker.next }">
							<button id='regBtn' type="button" class="btn btn-outline-warning">
							<li class="paginate_button next"><a
								href="${pageMaker.endPage +1 }">Next</a></li></button>
						</c:if>
					</ul>
				</div>

				<form id='actionForm' action="/board/list" method='get'>
					<input type='hidden' name='pageNum'
						value='${pageMaker.cri.pageNum}'> <input type='hidden'
						name='amount' value='${pageMaker.cri.amount}'> <input
						type='hidden' name='type'
						value='<c:out value="${pageMaker.cri.type }"/>'> <input
						type='hidden' name='keyword'
						value='<c:out value="${pageMaker.cri.keyword }"/>'>
				</form>

				<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
					aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-hidden="true">&times;</button>
								<h4 class="modal-title" id="myModalLabel">Modal title</h4>
							</div>
							<div class="modal-body">처리가 완료되었습니다.</div>
							<div class="modal-footer">
								<button type="button" class="btn-primary"
									data-dismiss="modal">Close</button>
								<button type="button" class="btn-primary"
									data-dismiss="modal">Save Changes</button>
							</div>
						</div>
					</div>
				</div>

				<!-- /.panel-body -->
			</div>
			<!-- /.panel -->
		</div>
		<!-- /.col-lg-6 -->
	</div>
	<!-- /.row -->
</div>

</body>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> 
<script type="text/javascript">
	$(document)
			.ready(
					function() {
						var result = '<c:out value="${result}"/>';
						checkModal(result);

						history.replaceState({}, null, null);

						function checkModal(result) {

							if (result === '' || history.state) {
								return;
							}

							if (parseInt(result) > 0) {

								$(".modal-body").html(
										"게시글" + parseInt(result)
												+ " 번이 등록 되었습니다.");
							}
							$("#myModal").modal("show");
						}
						$("#regBtn").on("click", function() {
							self.location = "/board/register";
						});
						var actionForm = $("#actionForm");

						$(".paginate_button a").on(
								"click",
								function(e) {
									e.preventDefault();
									console.log('click');
									var temp = ${'input:radio[gender="gender"]:checked'}.val();

									actionForm.find("input[name='pageNum']")
											.val($(this).attr("href"));
									actionForm.submit();
								});
						$(".move")
								.on(
										"click",
										function(e) {

											e.preventDefault();
											actionForm
													.append("<input type='hidden' name='bno' value='"
															+ $(this).attr(
																	"href")
															+ "'>");
											actionForm.attr("action",
													"/board/get");
											actionForm.submit();
										});

						var searchForm = $("#searchForm");
						$("#searchForm button").on(
								"click",
								function(e) {

									if (!searchForm.find("option:selected")
											.val()) {
										alert("검색종류를 선택하세요");
										return false;
									}

									if (!searchForm.find(
											"input[name='keyword']").val()) {
										alert("키워드를 선택하세요");
										return false;
									}

									searchForm.find("input[name='pageNum']")
											.val("1");
									searchForm.find("input[name='gender']")
									.val("gender");
									
									e.preventDefault();

									searchForm.submit();
								});
					});
</script>
<%@include file="../include/footer.jsp"%>
