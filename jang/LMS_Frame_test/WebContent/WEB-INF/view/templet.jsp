<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<script src="http://code.jquery.com/jquery-1.12.4.js"></script>
</head>
<body>

		<h1 class="subtitle"></h1>
		
		<c:if test="${result eq Y}">
			<div>
				데이터 입력 완료
			</div><!doctype html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <title>jQuery</title>
    <style>
      #a {
        width: '100%';
        height: 100px;
        border: 3px solid;
        
          
      }
    </style>
    <script src="http://code.jquery.com/jquery-1.12.4.js"></script>
    <script>
      $( document ).ready( function() {
        $( '#open' ).click( function() {
          $( '#a' ).animate( {
            width: '100%',
            height: '200px'
          } );
        } );
           $( '#close' ).click( function() {
          $( '#a' ).animate( {
            width: '100%',
            height: '100px'
          } );
        } );
      } );
    </script>
  </head>
  <body>
    <p><button id='open'>세부정보</button><button id='close'>닫기</button></p>
    <div id="a"></div>
  </body>
</html>
			${templet}	 
		</c:if>
		
		<c:if test="${not(result eq Y)}">
			데이터 입력 실패
			<!-- core 태그를 이용해서 contextPath 경로 읽어오기 -->
		</c:if>
		

</body>
</html>