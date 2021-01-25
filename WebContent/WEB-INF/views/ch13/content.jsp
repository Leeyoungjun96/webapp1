<%@ page  contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
					<div class="sector">
						<h5>의존성 주입</h5>
						<div>
							<a class="btn btn-success" href="service1">ch13service</a>
							<a class="btn btn-success" href="service2">ch13service2</a>
						</div>
					</div>
					
					<div class="sector">
						<h5>xml을 이용한 sector 주입</h5>
						<div>
							<a class="btn btn-success" href="service3">ch13service3</a>
							<a class="btn btn-success" href="service4">ch13service4</a>
							<a class="btn btn-success" href="service5">ch13service5</a>
						</div>
					</div>
					<div class="sector">
						<h5>DAO-> Service -> Controller</h5>
						<div>
							<a class="btn btn-success" href="service5">ch13service5</a>
						</div>
					</div>
					<div class="sector">
						<h5>인터페이스 타입 주입</h5>
						<div>
							<a class="btn btn-success" href="service6">ch13service6</a>
						</div>
					</div>
					<div class="sector">
						<h5>외부 프로퍼티 파일</h5>
						<div>
							<a class="btn btn-success" href="fileupload">fileupload</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</body>
	
</html>
