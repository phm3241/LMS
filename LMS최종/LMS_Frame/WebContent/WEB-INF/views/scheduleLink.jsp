<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>나의 일정표</title>
<link href="./css/lms.css" rel="stylesheet">

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>

</head>

<body>

</body>

<script>
	$(document).ready(function(){
		$.getJSON('sMyPage.jsp', function(data){
			for(var i=0; i<data.length; i++){
				$('body').append('<h1>'+data[i].value.time+'</h1><br>');
				$('body').append('<h1>'+data[i].value.Mon+'</h1><br>');
				$('body').append('<h1>'+data[i].value.Tue+'</h1><br>');
				$('body').append('<h1>'+data[i].value.Wed+'</h1><br>');
				$('body').append('<h1>'+data[i].value.Thur+'</h1><br>');
				$('body').append('<h1>'+data[i].value.Fri+'</h1><br>');
			}
			})
		});
</script>

</html>

