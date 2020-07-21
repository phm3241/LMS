<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>INDEX</title>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>

<link rel="stylesheet" href="<%=request.getContextPath()%>/css/default.css">

<style>
	.check_ok {
		color : blue;
	}
	.check_not {
		color : red;
	}
	/* #idchk{
		display: none;
	} */

</style>
</head>
<body>

	<%@ include file="/WEB-INF/views/include/header.jsp"%>

	<div>
		<h1 class="subtitle">회원 정보 수정</h1>
		<hr>
		
		<!-- 원본 회원정보 가져오기 성공  -->
		<c:if test="${resultCode == 1}">
		<h1>회원정보 수정사항을 입력해 주세요.</h1>
		
		<div>
			<form id="editForm" action="editMember.do" method="post" enctype="multipart/form-data">
				<table>
					<tr>
						<td>아이디(email)</td>
						<td>
							${memberInfo.uid} 아이디는 수정하실 수 없습니다.
							<!-- 서버에만 보이도록 hidden -->
							<input type="hidden" name="uid" value="${param.uid}">
						</td>
					</tr>
					<tr>
						<td>비밀번호</td>
						<td><input type="password" name="upw" required value="${memberInfo.upw}"></td>
					</tr>
					<tr>
						<td>이름</td>
						<td><input type="text" name="uname" required value="${memberInfo.uname}"></td>
					</tr>
					<tr>
						<td>사진</td>
						<td><input type="file" name="uphoto" ></td>
					</tr>
					<tr>
						<td></td>
						<td>
							<input type="submit" name="회원정보수정" >
							<input type="reset">
						</td>
					</tr>
				</table>
			</form>
		
		
		</div>
		

		
		<!-- 원본 회원정보 가져오기 실패  -->
		</c:if>
		<c:if test="${resultCode == -1}">
			<h1>기존 회원정보 불러오기 실패. 확인 후 다시 진행해주세요.</h1>
			
			
			
		<!-- 아이디-비밀번호 불일치  -->
		</c:if>
		<c:if test="${resultCode == -2}">
			<h1>비밀번호가 일치하지 않습니다. 확인 후 다시 진행해주세요.</h1>
		</c:if>
	
		
		
	<a href="memberList.do">리스트보기</a>
	<%@ include file="/WEB-INF/views/include/footer.jsp"%>
</body>
</html>


