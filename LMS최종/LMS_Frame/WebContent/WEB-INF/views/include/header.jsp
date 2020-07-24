<%@page import="lms.model.Admin"%>
<%@page import="lms.model.Teacher"%>
<%@page import="lms.model.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div id="header" class="bgColorHeader">
	<table class="titleTable" width=100% border=0 cellspacing=0>
		<tr>
			<td rowspan=2 class="alignRight" width=15% valign="bottom"><img
				class="userImg" width=50 src="./images/userImg.png"></td>
			<!-- 로그인번호가 관리자이면, -->
			<%-- <c:out value="${sessionScope.loginType }"/> --%>
			<%-- <c:if test="${sessionScope.loginType == aLogin} ">
				<td class="alignLeft">${sessionScope.admin.id}</td>
			</c:if>
			<!-- 로그인번호가 학생. 교수이면, -->
			<c:if test="${type == tLogin} ">
				<td class="alignLeft">${teacher.tIdx} ${teacher.name}</td>
			</c:if>
			<!-- 로그인번호가 학생. 교수이면, -->
			<c:if test="${sessionScope.loginType == 'sLogin'} "> --%>
				<td class="alignLeft"><c:out value= "${sessionScope.loginType }"/> ${sessionScope.info.sIdx} ${sessionScope.info.name} ${sessionScope.loginType }</td>
			<%-- </c:if> --%>
		</tr>
		<tr>
			<!-- 로그인번호가 관리자이면, -->
			<c:if test="${type == aLogin} ">
				<td class="alignLeft">관리자</td>
			</c:if>
			<!-- 로그인번호가 교수이면, -->
			<c:if test="${type == tLogin} ">
				<td class="alignLeft">${teacher.major}${teacher.job}</td>
			</c:if>
			<!-- 로그인번호가 학생이면, -->
			<c:if test="${sessionScope.loginType == sLogin} ">
				<td class="alignLeft">${sessionScope.info.major}${sessionScope.info.grade}</td>
			</c:if>
		</tr>
	</table>


	<table class="titleTable" width=100% border=0 cellspacing=0>
		<tr>
			<!-- 로그인번호가 관리자이면, -->
			<c:if test="${loginType == aLogin}">
				<td><a href="cList.do" class="cListTab">강의</a></td>
				<td><a href="tList.do" class="tListTab">강사</a></td>
				<td><a href="sList.do" class="sListTab">학생</a></td>
			</c:if>
			<!-- 로그인번호가 교수이면, -->
			<c:if test="${loginType == tLogin}">
				<td><a href="cAddForm.do" class="cAddFormTab">강의등록</a></td>
				<td><a href="myPage.do" class="myPageTab">나의 강의실</a></td>
				<td><a href="info.do" class="infoTab">내정보</a></td>
			</c:if>
			<!-- 로그인번호가 학생이면, -->
			<c:if test="${loginType == sLogin}">
				<td><a href="sClassAddForm.do" class="cAddFormTab">수강신청</a></td>
				<td><a href="myPage.do" class="myPageTab">나의 강의실</a></td>
				<td><a href="info.do" class="infoTab">내정보</a></td>
			</c:if>
		</tr>
	</table>
</div>  <!-- header end -->
