<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!doctype html>
<html lang="ko">
<head>
<title></title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
</head>
<body>
<jsp:include page="nav.jsp">
	<jsp:param name="menu" value="로그인"/>
</jsp:include>

<div class="container">
	<div class="row mb-3">
    	<div class="col-12">
        	<h1 class="border bg-light fs-4 p-2">로그인</h1>
      	</div>
   	</div>
   	<div class="row mb-3">
   		<div class="col-12">
   			<p>아이디, 비밀번호를 입력하고 로그인하세요</p>
   			<form class="border bg-light p-3" method="post" action="login.jsp">
   				<div class="form-group mb-2 w-75">
   					<div class="form-check form-check-inline">
  						<input class="form-check-input" type="radio" name="type"  value="STUDENT" checked="checked">
  						<label class="form-check-label" for="inlineRadio1">학생</label>
					</div>
					<div class="form-check form-check-inline">
  						<input class="form-check-input" type="radio" name="type" value="PROFESSOR">
  						<label class="form-check-label" for="inlineRadio2">교수</label>
					</div>
   				</div>
   				<div class="form-group mb-2 w-75">
   					<label class="form-label">아이디</label>
   					<input type="text" class="form-control" name="id" />
   				</div>
   				<div class="form-group mb-2 w-75">
   					<label class="form-label">비밀번호</label>
   					<input type="text" class="form-control" name="password" />
   				</div>
   				<div class="text-end w-75">
   					<button type="submit" class="btn btn-primary">로그인</button>
   				</div>
   			</form>
   		</div>
   	</div>
</div>
</body>
</html>