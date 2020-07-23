<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



	<div id="header" class="bgColorHeader">
		<table class="titleTable" width=100% border=0 cellspacing=0>
			<tr>
				<td rowspan=2 class="alignRight" width=15% valign="bottom"><img
					class="userImg" width=50 src="./images/userImg.png"></td>
				<td class="alignLeft">${login.id}</td>
			</tr>
			<tr>
				<td class="alignLeft">관리자</td>
			</tr>
		</table>
		<table class="titleTable" width=100% border=0 cellspacing=0>
			<tr>
				<!-- 로그인번호가 관리자이면, -->
				<c:if test="${loginType == aLogin}">
					<td><a href="cList.do">[강의]</a></td>
					<td><a href="tList.do">강사</a></td>
					<td><a href="sList.do">학생</a></td>
				</c:if>
			</tr>
		</table>
	</div>






<!-- 로그인번호가 교수이면, -->
<c:if test="${loginType == tLogin}">
	<div id="header" class="bgColorHeader">
	
		<table class="titleTable" width=100% border=0 cellspacing=0>
			<tr>
				<td rowspan=2 class="alignRight" width=15% valign="bottom"><img
					class="userImg" width=50 src="./images/userImg.png"></td>
				<td class="alignLeft">${login.id}</td>
			</tr>
			<tr>
				<td class="alignLeft">${login.major} ${login.job}</td>
			</tr>
		</table>
		<table class="titleTable" width=100% border=0 cellspacing=0>
			<tr>
				<td><a href="cAddForm.html">강의등록</a></td>
				<td><a href="tMyPage.html">나의 강의실</a></td>
				<td><a href="tInfo.html">[내정보]</a></td>
			</tr>
		</table>
	</div>
</c:if>













<!-- 로그인번호가 학생이면, -->
<c:if test="${loginType == sLogin}">

	<div id="mainInfo">
		<div class="logo">
			<img src="<%=request.getContextPath()%>/img/logo.png" class="icon" />
		</div>
		<div class="myPage">
			<img src="<%=request.getContextPath()%>/img/myPageIcon.png"
				class="icon" />
			<h2>김연아</h2>
			<h2>컴퓨터학과 1학년</h2>
			<%-- <h2>${student.sIdx}${student.name}</h2>
						<h2>${student.major}${student.grade}</h2> --%>
		</div>
		<div class="menuIcon">
			<img src="<%=request.getContextPath()%>/img/menuIcon.png"
				class="icon" />
		</div>
	</div>

	<ul id="nav">
		<li><a href="<c:url value="/student/sClassAdd.do"/>">수강신청</a></li>
		<li><a href="<c:url value="/student/sMyClass.do"/>">나의 강의실</a></li>
		<li><a href="<c:url value="/student/sInfo.do"/>">내정보</a></li>
	</ul>

</c:if>





<!-- 로그인번호가 강사이면, -->
<c:if test="${loginType == tLogin}">
	<div id="header">

		<div id="myMainInfo">
			<div class="logo">
				<img src="/img/logo.jpg" />
			</div>
			<div class="myPageIcon">
				<img src="/img/myPageIcon.jpg" />
				<h2>${teacher.tIdx}${teacher.name}</h2>
				<h2>${teacher.major}${teacher.job}</h2>
			</div>
			<div class="menuIcon">
				<img src="/img/menuIcon.jpg" />
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
<c:if test="${loginType == aLogin}">
	<div id="header">

		<div id="myMainInfo">
			<div class="logo">
				<img src="/img/logo.jpg" />
			</div>
			<div class="myPageIcon">
				<img src="/img/myPageIcon.jpg" />
				<h2></h2>
				<h2>관리자</h2>
			</div>
			<div class="menuIcon">
				<img src="/img/menuIcon.jpg" />
			</div>
		</div>

		<ul id="nav">
			<li><a href="<c:url value="/adim/cList.do"/>"></a>강의관리</li>
			<li><a href="<c:url value="/adim/tList.do"/>">강사관리</a></li>
			<li><a href="<c:url value="/adim/sList.do"/>">학생관리</a></li>
		</ul>

	</div>
</c:if>
</div>
<!-- header end -->





<div id="leftMenu">
	<h3>개설강좌 목록</h3>
	<table class="classList">
		<caption>
			<span>목록</span>
		</caption>
		<thead>
			<tr>
				<th>강의번호</th>
				<th>강의명</th>
				<th>교수명</th>
				<th>학년</th>
				<th>이수구분</th>
				<th>수업시간</th>
				<th>정원</th>
				<th>강의정보</th>
				<th>신청</th>
			</tr>
		</thead>
		<c:if test="${List.size() == 0 }">
			<tfoot>
				<tr>
					<td colspan="9">현재 개설과목이 없습니다.</td>
				</tr>
			</tfoot>

		</c:if>
		<tbody>
			<c:forEach var="result" items="${List}" varStatus="status">
				<tr>
					<td><c:out value="${class.cIdx}" /></td>
					<td><c:out value="${class.name}" /></td>
					<td><c:out value="${class.teacher}" /></td>
					<td><c:out value="${class.grade}" /></td>
					<td><c:out value="${class.category}" /></td>
					<td><c:out
							value="${class.day} ${class.startTime} ${class.endTime}" /></td>
					<td><c:out value="${class.applyPer}/${class.totalPer}" /></td>
					<td><c:out value="강의정보 파일" /></td>
					<td><c:out value="" /> <!-- <button type="button" class="classDelete">+</button> -->
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>




</div>
<!-- leftMenu end-->




<div id="contents">
	<h3>일정표</h3>
	<table class="classTable">
		<thead>
			<tr>
				<th>.</th>
				<th>월</th>
				<th>화</th>
				<th>수</th>
				<th>목</th>
				<th>금</th>
		</thead>

		<c:if test="${classList.size() == 0 }">
			<tfoot>
				<tr>
					<td colspan="9">현재 개설과목이 없습니다.</td>
				</tr>
			</tfoot>

		</c:if>
		<tbody>
			<c:forEach var="result" items="${classList}" varStatus="status">
				<tr>
					<td><c:out value="${classList.cIdx}" /></td>
					<td><c:out value="${classList.name}" /></td>
					<td><c:out value="${classList.teacher}" /></td>
					<td><c:out value="${classList.grade}" /></td>
					<td><c:out value="${classList.category}" /></td>
					<td><c:out
							value="${classList.day} ${classList.startTime} ${classList.endTime}" /></td>
					<td><c:out value="${classList.applyPer}/${classList.totalPer}" /></td>
					<td><c:out value="강의정보 파일" /></td>
					<td><c:out
							value="
									<button type="button" class="classDelete">+</button>" />
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

</div>
<!-- contents end -->










<div id="footer">
	<h1>footer</h1>
</div>
</div>




</body>

</html>
