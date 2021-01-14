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
				<div class="content">
					<h5>Model 객체를 이용한 데이터 전달</h5>
					<div class="sector">
						<a class="btn btn-info btn-sm" href="method1">데이터 전달</a>
					</div>
				</div>
				
				<div class="content">
					<h5>Model 객체를 이용한 데이터 전달</h5>
					<div class="sector">
						<a class="btn btn-info btn-sm" href="method2">데이터 전달</a>
					</div>
				</div>
				
				<div class="content">
					<h5> 컬렉션을 이용한 데이터 전달</h5>
					<div class="sector">
						<a class="btn btn-info btn-sm" href="method3">데이터 전달</a>
					</div>
				</div>
			</div>
		</div>
	</body>
	
</html>