<%@ page  contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
					<h5>EL(Expressions Language)를 이용해서 스칼라 값 읽기</h5>
					<div>
						<div>이름: ${name}<!--EL--></div>
						<div>나이: ${age}</div>
						<div>직업: ${job}</div>
					</div>
				 </div>
				 
				 <div class="sector">
				 	<h5>EL로 객체의 데이터 읽기</h5>	
				 	<div>
						<div>번호: ${board1.bno}</div> <!-- getter매소드 -->
						<div>제목: ${board1.title}</div>
						<div>내용: ${board1.content}</div>
						<div>작성자: ${board1.writer}</div>
						<div>작성일: ${board1.date}</div>
					</div>
				 </div>
				 
				 <div class="sector">
				 	<h5>컬렉션 이용하기</h5>	
				 	<div>
				 		<table style="width: auto" class="table table-sm table-bordered">
				 			<tr style="background-color:orange; color:black;">
				 				<th>번호</th>
				 				<th>제목</th>
				 				<th>내용</th>
				 				<th>글쓴이</th>
				 				<th>날짜</th>
				 			<tr/>
					 		<%--for(Board board: boardlist) --%>
							<c:forEach var="board" items="${boardlist}"><!-- prefix에서 c로 지정하여 c, forEach는 for문과 같음 -->
								<tr>
					 				<td>번호: ${board.bno}</td>
					 				<td>제목: ${board.title}</td>
									<td>내용: ${board.content}</td>
					 				<td>글쓴이: ${board.writer}</td>
					 				<td><fmt:formatDate value="${board.date}" pattern="yyyy-MM-dd"/>
					 			<tr/>
							</c:forEach>	
				 		</table>
					</div>
				 </div>
				 
				</div>
			</div>
		</div>
	</body>
	
</html>