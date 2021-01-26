<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="mainHeader">
	<h3>Spring Framework</h3>
	<div class="LoginBox">
		
		<c:if test="${sessionMid == null}">
			<a class="btn btn-info btn-sm" href="<%=application.getContextPath()%>/ch14/join">회원가입</a>
			<a class="btn btn-info btn-sm" href="<%=application.getContextPath()%>/ch14/login">로그인</a>
		</c:if>
		
		<c:if test="${sessionMid != null}">
			<img class="rounded"  src="<%=application.getContextPath()%>/ch14/mphoto" width="40px"/>
			<a class="btn btn-danger btn-sm" href="<%=application.getContextPath()%>/ch14/logout">로그아웃</a>
		</c:if>
	</div>
</div>
