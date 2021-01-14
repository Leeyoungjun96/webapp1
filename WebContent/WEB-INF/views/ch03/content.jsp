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
			
				<div class="selector">
					<h5>Get 방식 데이터 전달</h5>
					<div>
						<a class="btn btn-info btn=sm" href="method1?param=문자열&param2=5&param3=3.14&param4=true&param5=2021-01-14">데이터 전달</a>
					</div>
				</div>
				
				<div class="selector">
					<h5>Post 방식 데이터 전달</h5>
					<div>
						<form method="post" action="method1">
							param1: <input type="text" name="param1" value="문자열" /><br/>
							param2: <input type="number" name="param2" value="5" /><br/>
							param3: <input type="number" name="param3" value="3.14" /><br/>
							param4: <input type="checkbox" name="param4" checked/><br/>
							param5: <input type="date" name="param5" value="2021-01-14" /><br/>
							<button class="btn btn-info btn-sm">데이터 전달</button>
						</form>
					</div>
				</div>
				
				<div class="selector">
					<h5>요청 파라미터와 매개변수 값이 다를 경우</h5>
					<div>
						<form method="post" action="method2">
							param1: <input type="text" name="param1" value="문자열" /><br/>
							param2: <input type="number" name="param2" value="5" /><br/>
							param3: <input type="number" name="param3" value="3.14" /><br/>
							param4: <input type="checkbox" name="param4" checked/><br/>
							param5: <input type="date" name="param5" value="2021-01-14" /><br/>
							<button class="btn btn-info btn-sm">데이터 전달</button>
						</form>
					</div>
				</div>
				
				<div class="selector">
					<h5>Default값</h5>
					<div>
						<form method="post" action="method3">
							param1: <input type="text" name="param1" value="IU" /><br/>
							param2: <input type="number" name="param2" value="5" /><br/>
							<button class="btn btn-info btn-sm">데이터 전달</button>
						</form>
					</div>
				</div>
				
				<div class="selector">
					<h5>Dto</h5>
					<div>
						<form method="post" action="method4">
							param1: <input type="text" name="param1" value="문자열" /><br/>
							param2: <input type="number" name="param2" value="5" /><br/>
							param3: <input type="number" name="param3" value="3.14" /><br/>
							param4: <input type="checkbox" name="param4" checked/><br/>
							param5: <input type="date" name="param5" value="2021-01-14" /><br/>
							<button class="btn btn-info btn-sm">Dto데이터 전달</button>
						</form>
					</div>
				</div>
			</div>
			
		</div>
	</body>
	
</html>