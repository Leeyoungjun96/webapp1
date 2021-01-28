<%@ page contentType="text/html; charset=UTF-8"%>
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
      <link rel="stylesheet" href="<%=application.getContextPath() %>/resources/css/main.css">
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
                  <div class="alert alert-primary" role="alert">
		               로그인
               </div>
               
               <form name="loginform" onsubmit="login()" method="post" style="width:200px">
                    <div class="form-group">
                         <label for="mid" >아이디</label>
                         <input type="text" class="form-control" id="mid" name="mid">
                         <small id="errorMid" class="form-text text-danger">필수 입력 사항입니다.</small>
                    </div>
                    
                    <div class="form-group">
                         <label for="mpassword" >비밀번호</label>
                         <input type="password" class="form-control" id="mpassword" name="mpassword">
                         <small id="errorMpassword" class="form-text text-danger">필수 입력 사항입니다.</small>
                    </div>
                    
                    <button type="submit" class="btn btn-primary">로그인</button>
                    <a type="submit" class="btn btn-primary" href="boardlist2">취소</a>
               </form>
               <script>
               		function login(){
               			//<form>태그의 기본 이동 기능을 취소
               			event.preventDefault();
               			// 에러 초기화
               			$("#errorMid").html("");
               			$("#errorMpassword").html("");
               			// 입력값 받기
               			var validation = true;
               			
               			const mid = $("#mid").val(); // 입력된 값은.val()하면 얻을 수 있음
               			if(mid === ""){
               				$("#errorMid").html("필수 입력 사항입니다.");
               				validation = false;
               			}
               			
               			const mpassword = $("#mpassword").val();
               			if(mpassword === ""){
               				$("#errorMpassword").html("필수 입력 사항입니다.");
               				validation = false;
               			}
               			
               			if(!validation){
               				return;
               			}
               			
               			// ajax 통신
               			$.ajax({
               				url: "login",
               				method: "post",
               				data: {mid, mpassword},
               				success: function(data) {
               					//{"result":"success|wrongMid|wrongMpassword"}
               					if(data.result == "success"){
               						alert("로그인 성공");
               						location.href="boardlist2";
               					} else if(data.result == "wrongMid"){
               						$("#errorMid").html("아이디가 존재하지 않습니다");
               					} else {
               						$("#errorMpassword").html("비밀번호가 존재하지 않습니다");
               					}
               				}
               			});
               		}
               </script>
              </div> <!-- sector  -->
         </div> <!-- content -->
      </div>
   </div>
   </body>
</html>