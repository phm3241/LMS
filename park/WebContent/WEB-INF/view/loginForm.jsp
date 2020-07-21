<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/default.css">
</head>

<body>

	<div id="loginWrap">
		<h1 class="subtitle">로그인</h1>

		<form id="loginForm" action="login.do" method="post">

			<table class="loginTable">
				<tr>
					<td colspan="2">
						<input type="radio" name="loginType" value="sLogin" checked="checked"> 학생
						<input type="radio" name="loginType" value="tLogin"> 교수
						<input type="radio" name="loginType" value="aLogin"> 관리자
					</td>
				</tr>
				<tr>
					<td>ID</td>
					<td><input type="text" name="id" placeholder="학번 또는 교번을 입력해주세요" required></td>
				</tr>
				<tr>
					<td>PW</td>
					<td><input type="password" name="pw" required>
					<span id="loginCheck"></span></td>
					
				</tr>
				<tr>
					<td><input type="checkbox" name="remember" value="r"></td>
					<td>아이디 기억하기</td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="로그인"></td>
				</tr>
			</table>

		</form>


	</div>


</body>

</html>

<script>
	
	$(document).ready(function() {

		// 로그인시, 
		$('#loginForm').submit(function() {
			
			// 아이디와 비번 입력요청
			if($('#id')==null || $('#pw')==null){
				$('#loginCheck').text("아이디와 비밀번호를 입력해주세요.");
				return false;
			}
			
			
			// 비동기 통신으로 아이디-비번 체크
			$.ajax({
				url : 'loginCheck.do', //상대경로
				data : {
					check : $(this).val()
				}, 	
				success : function(data) {
					
					if (data == 'N') {
						$('#loginCheck').text("아이디와 비밀번호가 일치하지 않습니다. 확인 후 다시 입력해주세요");
						$('#loginCheck').addClass('checkN');
						// $('#loginCheck').prop('checked', false);
						$('#pw').focus();
						return false;

					} else {
						// $('#loginCheck').prop('checked', true);
						return true;
					}
				}
			}); //ajax end
			
			
			
			
			
		}); //loginForm.submit() end

		
		
		
			
	}); //ready end

	
</script>





