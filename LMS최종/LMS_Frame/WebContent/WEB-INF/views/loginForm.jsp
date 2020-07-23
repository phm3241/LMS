<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>LMS</title>
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<style>


	#innerContainner {
		border: 20px solid lightblue;

		position : absolute;
		top: 50%;
		left: 50%;
		width: 300px;
		height : 450px;
		margin-left: -150px;
		margin-top : -280px;

		/* padding: 10px; */
		
		/* top: 100%; */
		/* left: 50%; */
		/* width : 300px; */
		
		/* margin-left: 15%; */
		/* margin-top : 170px; */


		/* width: 360px;
  
  
		text-align: center;
		position: relative; */
		/* transform:translateY(15%); */


	}
	

	.alignCenter {
		text-align : center;
	}


	.input {

		border: 1px solid;
		height : 25px;
		width : 190px;
		border-color: rgb(188, 188, 188);

		outline-style : none;
		margin-top: 2.6px;
		margin-left : -3px;

	}




	.btnLogin {

		margin-left: 5px;
		margin-right: -2px;
		width: 200px;
		height: 40px;
		text-align: center;
		font-size :14px;
		color : white;
		background-color: rgb(26, 188, 156);
		/* border-color:  rgb(26, 188, 156); */
		border-color: white;
		border-radius: 5px;

	}

	.btnLogin:hover {
            color: black;
            background-color: white;
            border-color:  rgb(26, 188, 156);
	}
	

	.slider {

		outline-style : none;
		-webkit-appearance: none;
		cursor: pointer; 
		
		background: rgb(4, 212, 4); 
		border-radius: 10px;
		height: 15px;
		width : 40px;	
		margin-top: 5px;	
	}

	.slider::-webkit-slider-thumb {
    /* border: 1px solid rgb(1, 122, 1);  */
    height: 12px;
    width: 20px;
    background: #ffffff;
	cursor: pointer;
	border-radius: 10px;
    -webkit-appearance: none;
    /* margin-top: -5px; chrome의 경우 margin-top값을 부여해야합니다. */
	}

	.alignLeft {
		text-align : left;
	}


	.alignRight {
		text-align : right;
	}


	.loginImg{

		margin-top: 6px;



	}

	.fontInnerTable {
		font-size: 14px;
	}



</style>
<link rel="stylesheet" href="./css/lms.css">
</head>

<body>

	<div id="container11">
        <div id="header11">
			<br>
        </div>

        <div id="contentsAll11" class="alignCenter">

			<div id ="innerContainner">
				

				<form id="loginForm" action="login.do" method="post">
					<table width=100% border=0 class="loginTable" cellspacing="0">
						<tr><td class="alignLeft" colspan="2"><img width=70 src="./images/logo.png"></td></tr>
						<tr><td colspan="2"><h1 class="subtitle">로그인</h1></td></tr>
						<tr>
							<td colspan="2" class="fontInnerTable">
								<input type="radio" name="loginType" value="sLogin" checked="checked"> 학생
								<input type="radio" name="loginType" value="tLogin"> 교수
								<input type="radio" name="loginType" value="aLogin"> 관리자
							</td>
						</tr>
						<tr>
							<td class="alignRight" width=25%><img class="loginImg" height="35px" src="./images/loginId.png"></td>
							<td class="alignLeft"><input type="text" class="input" name="id" placeholder="학번 또는 교번을 입력해주세요" required></td>
						</tr>
						<tr>
							<td class="alignRight"><img class="loginImg" height="35px" src="./images/loginId.png"></td>
							<td class="alignLeft"><input type="password" name="pw" class="input" required></td>
							
						</tr>
						<tr>
							<td colspan="2"><input class="slider" name="rememberId" id="rememberId" type="range" min="0" max="1" value="0">아이디 기억하기
							<br><br></td>

						</tr>
						<tr>
							<td colspan="2"><input class="btnLogin" type="submit" value="로그인"></td>
						</tr>
					</table>

				</form>
			</div>
        </div>

	</div>
</body>

</html>

<!-- <script>
	
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
					
					if (data == 0) {
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

	
</script> -->





