<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="<%=request.getContextPath()%>/css/default.css">
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script>
		//var form = document.getElementById("delForm");
		
		function check(){
			
			if(confirm('삭제하시겠습니까?')){
				return true;
			};
			
			return false;
		};
		
		
	</script>
</head>
<body>
	<%@ include file="/WEB-INF/views/include/header.jsp"%>
	<h1 class="subtitle">회원 리스트</h1>
		<hr>

	<h3>메시지를 삭제하고자 하시면, 비밀번호를 입력해주세요.</h3>
	<form id="delForm" action="deleteMember.do" onsubmit="return check()" method="post">
		비밀번호 <input type="password" name="upw">
		<!-- 서버에만 보이도록 hidden -->
		<input type="hidden" name="uid" value="${param.uid}">
		<input type="submit" value="삭제하기">
	
	</form>

	<%@ include file="/WEB-INF/views/include/footer.jsp"%>

</body>
</html>