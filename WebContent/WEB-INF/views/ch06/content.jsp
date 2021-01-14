<%@ page  contentType="text/html; charset=UTF-8"%>
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
			 <jsp:include page="/WEB-INF/views/include/header.jsp"/>
			
			<%-- 공통 내용 --%>
			<div class="mainCenter" >
				<jsp:include page="/WEB-INF/views/include/menu.jsp"/>
				
				<div class="sector">		
				<h5>Forward 테스트</h5>
					<a class="btn btn-info btn-sm" 
						href="forward">서버 내부에서 이동 </a>
				</div>
				
				<div class="sector">		
				<h5>Redirect 테스트</h5>
					<a class="btn btn-info btn-sm" 
						href="redirect">브라우저 재요청</a>
					
					<a class="btn btn-info btn-sm" 
						href="login">로그인 하기</a>
					
					<a class="btn btn-info btn-sm" 
						href="boardWrite">게시물 저장</a>
				</div>
				
			</div>
			
		</div>
	</body>
	
</html>