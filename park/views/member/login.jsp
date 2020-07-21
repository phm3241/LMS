<%@page import="member.model.LoginInfo"%>
<%@page import="member.model.CookieBox"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>로그인 처리</title>
	<link rel="stylesheet"
		href="<%=request.getContextPath()%>/css/default.css">
	<style>
	</style>
</head>
<body>

	<%@ include file="/WEB-INF/views/include/header.jsp"%>

	<div>
		<h1>로그인</h1>
		<hr>

		<!-- 로그인 결과 분기처리 -->
		<div>
			<c:if test="${login == true}">
				<h2>안녕하세요. ${uid} 님, </h2>
				<h3>로그인 되었습니다. </h3>
			</c:if>
		</div>
		<div>
			<c:if test="${login == false}">
				<h2>로그인이 되지 않았습니다. 확인 후 다시 시도해주세요. </h2>
			</c:if>
		</div>
	

	<%@ include file="/WEB-INF/views/include/footer.jsp"%>
</body>
</html>

<!-- <script>

	alert("아이디 또는 비밀번호를 확인해주세요.");
	history.go(-1);
	
</script>
 -->






