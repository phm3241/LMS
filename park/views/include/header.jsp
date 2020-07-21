<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%--@ include file="/WEB-INF/views/include/sessionCheck.jsp" --%>
	
	
	<c:set var="login" value="${login.idx}"/>
	
	<!-- 로그인번호가 학생이면, -->
	<c:if test="${fn:contains(login,'s')}">
		<div id="header">
		
			<div id="mainInfo">
				<div id="myMainInfo">
					<img src="/img/logo.jpg" />
				</div>
				<div class="myPageIcon">
					<img src="/img/myPageIcon.jpg" />
					<h2>${student.sIdx}  ${student.name}</h2>
					<h2>${student.major}  ${student.grade}</h2>
				</div>
				<div class="menuIcon">
					<img src="/img/menuIcon.jpg"/>
				</div>
			</div>
			
			<ul id="nav">
				<li><a href="<c:url value="/student/sClassAdd.do"/>"></a>수강신청</li>
				<li><a href="<c:url value="/student/sMyClass.do"/>">나의 강의실</a></li>
				<li><a href="<c:url value="/student/sInfo.do"/>">내정보</a></li>
			</ul>
			
		</div>
	</c:if>
	
	
	
	
	
	
	<!-- 로그인번호가 강사이면, -->
	<c:if test="${fn:contains(login,'t')}">
		<div id="header">
		
			<div id="myMainInfo">
				<div class="logo">
					<img src="/img/logo.jpg"/>
				</div>
				<div class="myPageIcon">
					<img src="/img/myPageIcon.jpg"/>
					<h2>${teacher.tIdx}  ${teacher.name}</h2>
					<h2>${teacher.major}  ${teacher.job}</h2>
				</div>
				<div class="menuIcon">
					<img src="/img/menuIcon.jpg"/>
				</div>
			</div>
			
			<ul id="nav">
				<li><a href="<c:url value="/teacher/tClassAdd.do"/>"></a>수강신청</li>
				<li><a href="<c:url value="/teacher/tMyClass.do"/>">나의 강의실</a></li>
				<li><a href="<c:url value="/teacher/tInfo.do"/>">내정보</a></li>
			</ul>
			
		</div>
	</c:if>




	<!-- 로그인번호가 관리자이면, -->
	<c:if test="${fn:contains(login,'a')}">
		<div id="header">
		
			<div id="myMainInfo">
				<div class="logo">
					<img src="/img/logo.jpg"/>
				</div>
				<div class="myPageIcon">
					<img src="/img/myPageIcon.jpg"/>
					<h2></h2>
					<h2>관리자</h2>
				</div>
				<div class="menuIcon">
					<img src="/img/menuIcon.jpg"/>
				</div>
			</div>
			
			<ul id="nav">
				<li><a href="<c:url value="/adim/cList.do"/>"></a>강의관리</li>
				<li><a href="<c:url value="/adim/tList.do"/>">강사관리</a></li>
				<li><a href="<c:url value="/adim/sList.do"/>">학생관리</a></li>
			</ul>
			
		</div>
	</c:if>










