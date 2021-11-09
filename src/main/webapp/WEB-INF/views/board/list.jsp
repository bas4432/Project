<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<c:set var="path" value="${pageContext.request.contextPath}"/>


<!DOCTYPE html>
<html>
<head>

<meta name="viewport" content="width=device-width, initial-scale=1"> 
<meta http-equiv="x-ua-compatible" content="ie=edge"> 
<title>AdminLTE 3 | Starter</title> <!-- Font Awesome Icons --> 
<link rel="stylesheet" href="${path}/plugins/fontawesome-free/css/all.min.css"> <!-- Theme style --> 
<link rel="stylesheet" href="${path}/dist/css/adminlte.min.css"> <!-- Google Font: Source Sans Pro --> 
<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">


<meta charset="EUC-KR">
<title>Insert title here</title>





</head>
<body>

	<div class="col-lg-12">
		<div class="card">
			<div class="card-header">
				<h3 class="card-title">게시글 목록</h3>
			</div>
			<div class="card-body">
				<table class="table table-bordered">
					<tbody>
						<tr>
							<th style="width: 30px">#</th>
							<th>제목</th>
							<th style="width: 100px">작성자</th>
							<th style="width: 150px">작성시간</th>
							<th style="width: 60px">조회</th>
						</tr>
						<c:forEach items="${boards}" var="board">
							<tr>
								<td>${board.board_no}</td>
								<td><a href="${path}/board/read?board_no=${board.board_no}">${board.title}</a></td>
								<td>${board.writer}</td>
								<td><fmt:formatDate value="${board.regDate}" pattern="yyyy-MM-dd a HH:mm" /></td>
								<td><span class="badge bg-red">${board.viewCnt}</span></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<div class="card-footer">
				<div class="float-right">
					<button type="button" class="btn btn-success btn-flat"
						id="writeBtn">
						<i class="fa fa-pencil"></i> 글쓰기
					</button>
				</div>
			</div>
		</div>
	</div>


</body>
</html>