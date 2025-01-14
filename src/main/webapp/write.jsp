<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>DnA sample</title>
<link rel="stylesheet" href="./css/bootstrap.min.css">
<link rel="stylesheet" href="./css/custom.css">
</head>
<body>
	
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" href="index.jsp">DnA sample index</a>
		<button class = "navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		
		<div class="offcanvas offcanvas-end" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active">
					<a class="nav-link" href="index.jsp">Home </a>
				</li>
				<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
						Diary
					</a>
					<ul class="dropdown-menu">
						<li><a class="dropdown-item" href="write.jsp">오늘의 일기 쓰기</a></li>
						<li><a class="dropdown-item" href="#">Another action</a></li>
					</ul>
				</li>
			</ul>
			
		</div>
	</nav>
	
	
	<h1>일기 써라!!!!!!!!</h1>
	<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#reportModal">일기 쓰기</button>
	<div class="modal fade" id="reportModal" tabindex="-1" role="dialog" aria-labelledby="modal" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="modal">오늘의 일기</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<form action="./writeAction.jsp" method="post">
						<div class="form-group">
							<label>제목</label>
							<input type="text" name="diaryTitle" class="form-control" maxlength="64">
						</div>
						<br>
						<div class="form-group">
							<label>오늘의 기분은?</label>
							<input type="text" name="diaryMood" class="form-control" maxlength="10">
						</div>
						<br>
						<div class="form-group">
							<textarea name="diaryContent" class="form-control" maxlength="100" placeholder="무슨일이 일어났나요?" style="height:180px;"></textarea>
						</div>
						<br>
						<div class="form-group">
							<p>어떤 선생님께 제출할까요?</p>
							<input type="radio" name="diaryTeacher" id="teacher1" value="상냥한 국어 선생님" checked>
							<label for="teacher1">상냥한 국어 선생님</label>
							<input type="radio" name="diaryTeacher" id="teacher2" value="냉철한 수학 선생님">
							<label for="teacher2">냉철한 수학 선생님</label>
							<input type="radio" name="diaryTeacher" id="teacher3" value="이상한 영어 선생님">
							<label for="teacher3">이상한 영어 선생님</label>
        
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
							<button type="submit" class="btn btn-primary">제출하기</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	
	<script src="./js/jquery.min.js"></script>
	<script src="https://unpkg.com/@popperjs/core@2/dist/umd/popper.js"></script>
	<script src="./js/bootstrap.min.js"></script>
</body>
</html>