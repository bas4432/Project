<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8"> 
<meta name="viewport" content="width=device-width, initial-scale=1"> 
<meta http-equiv="x-ua-compatible" content="ie=edge"> 
<title>AdminLTE 3 | Starter</title> <!-- Font Awesome Icons --> 
<link rel="stylesheet" href="${path}/plugins/fontawesome-free/css/all.min.css"> <!-- Theme style --> 
<link rel="stylesheet" href="${path}/dist/css/adminlte.min.css"> <!-- Google Font: Source Sans Pro --> 
<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">


<meta charset="EUC-KR">

<title>Insert title here</title>
<script>
var result = "${msg}"; 

if (result == "regSuccess") { 
	alert("게시글 등록이 완료되었습니다."); 
	} 
else if (result == "modSuccess") { 
	alert("게시글 수정이 완료되었습니다."); 
} 
else if (result == "delSuccess") { 
		alert("게시글 삭제가 완료되었습니다."); 
}



</script>
<script>
$(".listBtn").on("click", function() {
	self.location = "${path}/board/list"
});

</script>

</head>
<body>

	<div class="col-lg-12">
		<form role="form" id="writeForm" method="post" action="${path}/board/write">
			<div class="card">
				<div class="card-header with-border">
					<h3 class="card-title">게시글 작성</h3>
				</div>
				<div class="card-body">
					<div class="form-group">
						<label for="title">제목</label> <input class="form-control"
							id="title" name="title" placeholder="제목을 입력해주세요">
					</div>
					<div class="form-group">
						<label for="content">내용</label>
						<textarea class="form-control" id="content" name="content"
							rows="30" placeholder="내용을 입력해주세요" style="resize: none;"></textarea>
					</div>
					<div class="form-group">
						<label for="writer">작성자</label> <input class="form-control"
							id="writer" name="writer">
					</div>
				</div>
				<div class="card-footer">
					<button type="button" class="btn btn-primary">
						<i class="fa fa-list"></i> 목록
					</button>
					<div class="float-right">
						<button type="reset" class="btn btn-warning">
							<i class="fa fa-reply"></i> 초기화
						</button>
						<button type="submit" class="btn btn-success">
							<i class="fa fa-save"></i> 저장
						</button>
					</div>
				</div>
			</div>
		</form>
	</div>

	
</body>
</html>