<%@ page  contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	<head>

	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="<%=application.getContextPath()%>/resources/css/main.css">		
	</head>

<body>
	<div class="wrap">
		<%-- 공통 헤더 --%>
		<jsp:include page="/WEB-INF/views/include/header.jsp" />

		<%-- 공통 내용 --%>
		<div class="mainCenter">
			<jsp:include page="/WEB-INF/views/include/menu.jsp" />
			<div class="content">
				<div class="sector">
					<div class="alert alert-primary" role="alert">
						회원가입
					</div>
					
					<form enctype="multipart/form-data" name="joinform" action="join" method="post" style="width:300px">
					
						<div class="form-group">
							<label for="mid">ID</label> 
							<input type="text" class="form-control"id="mid" name="mid">
							<small class="form-text text-muted"> 필수 입력 사항</small>
						</div>
						
						<div class="form-group">
							<label for="mname">이름</label> 
							<input type="text" class="form-control"id="mname" name="mname">
							<small class="form-text text-muted"> 필수 입력 사항</small>
						</div>
						
						<div class="form-group">
							<label for="mpassword">비밀번호</label> 
							<input type="password" class="form-control"id="mpassword" name="mpassword">
							<small class="form-text text-muted"> 필수 입력 사항</small>
						</div>
						
						<div class="form-group">
							<label for="mphoto">프로필사진</label> 
							<input type="file" id="mphoto" name="mphoto">
							<small class="form-text text-muted"> 옵션 입력 사항</small>
						</div>
					
					<button class="btn btn-primary">저장</button>
					<a type="submit" class="btn btn-primary" href="boardlist2">취소</a>
					
					</form>
				</div>
			</div>
		</div>
	</div>
</body>

</html>