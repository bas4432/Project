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
	alert("�Խñ� ����� �Ϸ�Ǿ����ϴ�."); 
	} 
else if (result == "modSuccess") { 
	alert("�Խñ� ������ �Ϸ�Ǿ����ϴ�."); 
} 
else if (result == "delSuccess") { 
		alert("�Խñ� ������ �Ϸ�Ǿ����ϴ�."); 
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
					<h3 class="card-title">�Խñ� �ۼ�</h3>
				</div>
				<div class="card-body">
					<div class="form-group">
						<label for="title">����</label> <input class="form-control"
							id="title" name="title" placeholder="������ �Է����ּ���">
					</div>
					<div class="form-group">
						<label for="content">����</label>
						<textarea class="form-control" id="content" name="content"
							rows="30" placeholder="������ �Է����ּ���" style="resize: none;"></textarea>
					</div>
					<div class="form-group">
						<label for="writer">�ۼ���</label> <input class="form-control"
							id="writer" name="writer">
					</div>
				</div>
				<div class="card-footer">
					<button type="button" class="btn btn-primary">
						<i class="fa fa-list"></i> ���
					</button>
					<div class="float-right">
						<button type="reset" class="btn btn-warning">
							<i class="fa fa-reply"></i> �ʱ�ȭ
						</button>
						<button type="submit" class="btn btn-success">
							<i class="fa fa-save"></i> ����
						</button>
					</div>
				</div>
			</div>
		</form>
	</div>

	
</body>
</html>