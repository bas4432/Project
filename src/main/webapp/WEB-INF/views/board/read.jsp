<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>

	$(document).ready(function() {
		
		var formObj = $("form[role='form']");
		console.log(formObj);
		$(".modBtn").on("click", function() {
			formObj.attr("action", "${path}/board/modify");
			formObj.attr("method", "get");
			formObj.submit();
		});
		$(".delBtn").on("click", function() {
			formObj.attr("action", "${path}/board/remove");
			formObj.submit();
		});
		$(".listBtn").on("click", function() {
			self.location = "${path}/board/list"
		});
	});
</script>
</head>
<body>
	<div class="col-lg-12">
		<div class="card">
			<div class="card-header">
				<h3 class="card-title">글제목 : ${board.title}</h3>
			</div>
			<div class="card-body" style="height: 700px">
				${board.content}</div>
			<div class="card-footer">
				<div class="user-block">
					<img class="img-circle img-bordered-sm"
						src="${path}/dist/img/user1-128x128.jpg" alt="user image"> <span
						class="username"> <a href="#">${board.writer}</a>
					</span> <span class="description"><fmt:formatDate
							pattern="yyyy-MM-dd" value="${board.regDate}" /></span>
				</div>
			</div>
			<div class="card-footer">
				<form role="form" method="post">
					<input type="hidden" name="board_no"
						value="${board.board_no}">
				</form>
				<button type="submit" class="btn btn-primary listBtn">
					<i class="fa fa-list"></i> 목록
				</button>
				<div class="float-right">
					<button type="submit" class="btn btn-warning modBtn">
						<i class="fa fa-edit"></i> 수정
					</button>
					<button type="submit" class="btn btn-danger delBtn">
						<i class="fa fa-trash"></i> 삭제
					</button>
				</div>
			</div>
		</div>
	</div>


</body>
</html>