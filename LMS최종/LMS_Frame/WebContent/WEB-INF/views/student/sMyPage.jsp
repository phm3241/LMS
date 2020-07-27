<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>LMS</title>
<link href="./css/lms.css" rel="stylesheet">
<style>
th {
	text-align: center;
	/* font-weight : 900; */
}

td {
	text-align: center;
}

input {
	border: 2px solid;
	height: 20px;
	width: 150px;
	border-color: rgb(188, 188, 188);
}

button {
	width: 80px;
	height: 30px;
	text-align: center;
	font-size: 14px;
}

.btnTmyPage {
	width: 150px;
	height: 30px;
	text-align: center;
	font-size: 14px;
}

.btnSearch {
	margin-left: 5px;
	margin-right: -2px;
	width: 50px;
	height: 26px;
	text-align: center;
	font-size: 14px;
}

.tdRight {
	text-align: right;
}

.alignLeft {
	text-align: left;
}

.alignRight {
	text-align: right;
}

.bold {
	font-size: 25px;
	font-weight: 900;
}

a {
	text-decoration: none;
	color: white;
	font-size: 20px;
	font-weight: 500;
	margin: 3px 3px 3px 3px;
}

.titleTable {
	color: white;
	font-size: 20px;
	font-weight: 500;
	margin: 3px 3px 3px 3px;
}

.btnStyle {
	border-radius: 10px;
	font-size: 14px;
	color: white;
	font-weight: 900;
	/* background-color: rgba(0, 0, 255, 0.7);
            border-color:  rgba(0, 0, 255, 1);             */
}

.btnStyle:hover {
	color: black;
	background-color: white;
	border-color: gray;
}

.userImg {
	border-radius: 10px;
	border: 7px solid white;
}

#idClass td {
	font-size: 14px;
	border-bottom: 1px solid rgb(228, 228, 228);
}

#idSchedule {
	border-color: rgb(228, 228, 228);
}

#idSchedule td {
	font-size: 14px;
	border-bottom: 1px solid rgb(228, 228, 228);
}

#infoArea {
	top: 100px;
	left: 50%;
	margin-left: -150px;
	background-color: white;
	width: 300px;
	position: absolute;
	/* z-index: 1; */
	border: 2px solid rgb(26, 188, 156);
	display: none;
	text-align: center;
	font-size: 12pt;
}

#infoAreaInner {
	margin: 10px 10px 10px 10px;
	background-color: white;
	text-align: center;
	font-size: 10pt;
}

#delArea {
	top: 100px;
	left: 50%;
	margin-left: -150px;
	background-color: white;
	width: 300px;
	position: absolute;
	/* z-index: 1; */
	border: 2px solid rgb(26, 188, 156);
	display: none;
	text-align: center;
	font-size: 12pt;
}

#delAreaInner {
	margin: 10px 10px 10px 10px;
	background-color: white;
	text-align: center;
	font-size: 10pt;
}

#saveImgArea {
	top: 100px;
	left: 50%;
	margin-left: -150px;
	background-color: white;
	width: 300px;
	position: absolute;
	/* z-index: 1; */
	border: 2px solid rgb(26, 188, 156);
	display: none;
	text-align: center;
	font-size: 12pt;
}

#saveImgAreaInner {
	margin: 10px 10px 10px 10px;
	background-color: white;
	text-align: center;
	font-size: 10pt;
}

#shareKaArea {
	top: 100px;
	left: 50%;
	margin-left: -150px;
	background-color: white;
	width: 300px;
	position: absolute;
	/* z-index: 1; */
	border: 2px solid rgb(26, 188, 156);
	display: none;
	text-align: center;
	font-size: 12pt;
}

#shareKaAreaInner {
	margin: 10px 10px 10px 10px;
	background-color: white;
	text-align: center;
	font-size: 10pt;
}

.bgColorGray {
	background-color: rgb(228, 228, 228);
}

.bgColorHeader {
	background-color: rgb(26, 188, 156);
}
</style>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
</head>

<body>

	<div id="container">
	<%@ include file="/WEB-INF/views/include/header.jsp"%>
	
<!-- 		<div id="header" class="bgColorHeader">
			
 			<table class="titleTable" width=100% border=0 cellspacing=0>
				<tr>
					<td rowspan=2 class="alignRight" width=15% valign="bottom"><img
						class="userImg" width=50 src="./images/userImg.png"></td>
					<td class="alignLeft">2008123456114</td>
				</tr>
				<tr>
					<td class="alignLeft">컴퓨터공학과 2학년</td>
				</tr>
			</table>
			<table class="titleTable" width=100% border=0 cellspacing=0>
				<tr>
					<td><a href="sClassAddForm.html">수강신청</a></td>
					<td><a href="sMyPage.html">[나의 강의실]</a></td>
					<td><a href="sInfo.html">내정보</a></td>
				</tr>
			</table>
		</div>  -->

		<div id="contentsAll">


			<table width=100% border=0>
				<tr>
					<td class="alignLeft bold">수강신청 목록</td>
					<td class="tdRight">수강과목 : 4/5
						<button id="clearList" " class="btnTmyPage"
							onClick="doclearList()">목록 초기화</button>
					</td>
				</tr>
			</table>

			<div id="myCourseList">
			
			</div>
			
			<br>
			<br>
			<br>

			<table width=100% border=0>
				<tr>
					<td class="alignLeft bold">일정표</td>
					<td class="tdRight">
						<button id="saveImg" class="btnTmyPage" onClick="viewSaveImg()">이미지저장</button>
						<button id="shareKa" class="btnTmyPage" onClick="viewShareKa()">카카오톡공유</button>
					</td>
				</tr>
			</table>
			<div id="timeTable">
			</div>
			<!-- <table id="idSchedule" width=100% border=1 cellspacing="0">


				<tr class="bgColorGray">
					<th width="100"></th>
					<th>월</th>
					<th>화</th>
					<th>수</th>
					<th>목</th>
					<th>금</th>
				</tr>
				<tr class="">
					<td>0교시<br>08:00
					</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				<tr class="">
					<td>1교시<br>08:00
					</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				<tr class="">
					<td>2교시<br>08:00
					</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				<tr class="">
					<td>3교시<br>08:00
					</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				<tr class="">
					<td>4교시<br>08:00
					</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				<tr class="">
					<td>5교시<br>08:00
					</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				<tr class="">
					<td>6교시<br>08:00
					</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				<tr class="">
					<td>7교시<br>08:00
					</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				<tr class="">
					<td>8교시<br>08:00
					</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
			</table> -->




		</div>



	</div>

	<div id="infoArea">
		<div id="infoAreaInner">

			<form>

				강의정보
				<table width=100% border=0>
					<tr>
						<td>교과목명</td>
						<td></td>
					</tr>
					<tr>
						<td>교수명</td>
						<td></td>
					</tr>
					<tr>
						<td>과목내용</td>
						<td></td>
					</tr>
					<tr>
						<td>대상학년</td>
						<td></td>
					</tr>
					<tr>
						<td>이수구분</td>
						<td></td>
					</tr>
					<tr>
						<td>학점</td>
						<td></td>
					</tr>
					<tr>
						<td>수업시간</td>
						<td></td>
					</tr>
					<tr>
						<td>정원</td>
						<td></td>
					</tr>
					<tr>
						<td>교재</td>
						<td></td>
					</tr>
					<tr>
						<td>강의실</td>
						<td></td>
					</tr>
					<tr>
						<td colspan="2">
							<button class="" onClick="closeInfo()">닫기</button>
						</td>
					</tr>
				</table>
			</form>
		</div>
	</div>


	<div id="delArea">
		<div id="delAreaInner">

			<form>

				강사삭제
				<table width=100% border=0>
					<tr>
						<td>교과목명</td>
						<td></td>
					</tr>
					<tr>
						<td>교수명</td>
						<td></td>
					</tr>
					<tr>
						<td>과목내용</td>
						<td></td>
					</tr>
					<tr>
						<td>대상학년</td>
						<td></td>
					</tr>
					<tr>
						<td>이수구분</td>
						<td></td>
					</tr>
					<tr>
						<td>학점</td>
						<td></td>
					</tr>
					<tr>
						<td>수업시간</td>
						<td></td>
					</tr>
					<tr>
						<td>정원</td>
						<td></td>
					</tr>
					<tr>
						<td>교재</td>
						<td></td>
					</tr>
					<tr>
						<td>강의실</td>
						<td></td>
					</tr>
					<tr>
						<td colspan="2">
							<button class="" onClick="closeInsert()">취소</button>
							<button type="submit" id="insert" class=""
								onClick="doInsert(this.form)">삭제</button>
						</td>
					</tr>
				</table>
			</form>
		</div>
	</div>

	<div id="saveImgArea">
		<div id="saveImgAreaInner">



			<button class="btnTmyPage" onClick="closeSaveImg()">취소</button>
			<button class="btnTmyPage" onClick="doSaveImg()">이미지저장</button>

		</div>
	</div>



	<div id="shareKaArea">
		<div id="shareKaAreaInner">


			<button class="btnTmyPage" onClick="closeShareKa()">취소</button>
			<%@ include file="/NewFile.html"%>

		</div>
	</div>

</body>

<script>

	window.onload = function(){
		
		//0726 윤원
		getMyCourseListTable();
		
	}


	//객체 생성
	function Course(cIdx,name,teacher,content,startTime,totalPer,applyPer,tIdx) {
	       
	    this.cIdx = cIdx;
	    this.name = name;
	    this.teacher = teacher;
	    this.content = content;
	    this.startTime = startTime; // 1~20
	    this.totalPer = totalPer;
	    this.applyPer = applyPer;
	    this.tIdx = tIdx;
	    
	}
	
	var CourseList = [];
	var SelectedCourseList = [];
	var countOfCourseArea = document.getElementById('countOfCourse');
	var courseListArea = document.getElementById('courseList');
	var SelectedCourseListArea = document.getElementById('myCourseList');
	var timeTableArea = document.getElementById('timeTable');

	
	
	
	
	//0726 윤원
	function getMyCourseListTable(){
		makeMyCourseListDATA();
		makeSelectedCourseTimeTableHTML();
		
	}
	//0726 윤원 - 내 강의리스트 가져옴
	function makeMyCourseListDATA(){
		
		var sIdx=${info.sIdx};
		
		$.ajax({
			
				url: 'sAddFormMyCourseList.do',
				data: {
					sIdx:sIdx
				},
				method: 'get',
				success:
					function(data){
					$.each(data, function(key,value){
						var cIdx = value.cIdx;
	     				var cName = value.name;
	     				var cTeacher = value.teacher;
	     				var content = value.content;
	     				var cDay = value.day;
	     				var cStartTime = value.startTime;
	     				var cTotalPer = value.totalPer;
	     				var cApplyPer = value.applyPer;
	     				var tIdx = value.tIdx;
	     				
	    				SelectedCourseList.push(new Course(cIdx, cName, cTeacher, content, cStartTime, cTotalPer, cApplyPer, tIdx));
						
					});
					
					makeMyCourseListHTML();
					
				}
			
		});
		
	}
	
	//0726 윤원 - 내 강의리스트 HTML
	function makeMyCourseListHTML(){
		
		 var makeHtml ='';
	        makeHtml += '<table id="idClass" width=100% border="0" cellspacing="0">';
	        makeHtml += '<tr class="bgColorGray"><th>강의<br>번호</th><th>강의명</th><th>교수명</th>';
	        makeHtml += '<th>수업<br>시간</th><th>정원</th>';
	        makeHtml += '<th>강의<br>정보</th><th>신청</th></tr>';
	        for (var i = 0; i < SelectedCourseList.length; i++) {
	            makeHtml += '<tr><td>'+SelectedCourseList[i].cIdx+'</td>';
	            makeHtml += '<td>'+SelectedCourseList[i].name+'</td>';
	            makeHtml += '<td>'+SelectedCourseList[i].teacher+'</td>';
	            makeHtml += '<td>'+SelectedCourseList[i].startTime+'</td>';
	            makeHtml += '<td>'+SelectedCourseList[i].applyPer+' / '+SelectedCourseList[i].totalPer+'</td>';
	            makeHtml += '<td><button id="viewInfo" class="" onClick="viewInfo('+i+')">강의정보</button></td>';
	            makeHtml += '<td><button id="viewDel" class="" onClick="viewDel('+i+')">삭제</button></td>';
	            makeHtml += '</tr>';           
	        }
	        makeHtml += '</table>';
	        SelectedCourseListArea.innerHTML = makeHtml;
	        document.getElementById("idClass").style.border.bottom="1px solid rgb(228, 228, 228)";
	        
	        
	}
	
	
	 //내 강의 시간표 (일정표)
    function makeSelectedCourseTimeTableHTML(){
		 
        var arrTimeTable = [];
        var makeHtml ='';
        for (var i = 0; i <= 21; i++) {
            arrTimeTable[i] = '';
        }
        for (var i = 0; i <= SelectedCourseList.length - 1; i++) {
	            arrTimeTable[SelectedCourseList[i].startTime] = SelectedCourseList[i].name;
        
        }
        makeHtml += '<table id="idSchedule" width=100% border=1 cellspacing="0">';
        makeHtml += '<tr class="bgColorGray"><th width="100"></th><th width="100">월</th><th width="100">화</th><th width="100">수</th><th width="100">목</th><th width="100">금</th></tr>';        
        
        /* makeHtml += '<tr>';
        makeHtml += '<td>1교시<br>09:00</td><td>'+arrTimeTable[0]+'</td><td>'+arrTimeTable[4]+'</td><td>'+arrTimeTable[8]+'</td><td>'+arrTimeTable[12]+'</td><td>'+arrTimeTable[16]+'</td>';
        makeHtml += '</tr><tr>';
        makeHtml += '<td>2교시<br>11:00</td><td>'+arrTimeTable[1]+'</td><td>'+arrTimeTable[5]+'</td><td>'+arrTimeTable[9]+'</td><td>'+arrTimeTable[13]+'</td><td>'+arrTimeTable[17]+'</td>';
        makeHtml += '</tr><tr>';
        makeHtml += '<td>3교시<br>13:00</td><td>'+arrTimeTable[2]+'</td><td>'+arrTimeTable[6]+'</td><td>'+arrTimeTable[10]+'</td><td>'+arrTimeTable[14]+'</td><td>'+arrTimeTable[18]+'</td>';
        makeHtml += '</tr><tr>';
        makeHtml += '<td>4교시<br>15:00</td><td>'+arrTimeTable[3]+'</td><td>'+arrTimeTable[7]+'</td><td>'+arrTimeTable[11]+'</td><td>'+arrTimeTable[15]+'</td><td>'+arrTimeTable[19]+'</td>';
        makeHtml += '</table>'; */
         makeHtml += '<tr>';
        makeHtml += '<td>1교시<br>09:00</td><td>'+arrTimeTable[1]+'</td><td>'+arrTimeTable[5]+'</td><td>'+arrTimeTable[9]+'</td><td>'+arrTimeTable[13]+'</td><td>'+arrTimeTable[17]+'</td>';
        makeHtml += '</tr><tr>';
        makeHtml += '<td>2교시<br>11:00</td><td>'+arrTimeTable[2]+'</td><td>'+arrTimeTable[6]+'</td><td>'+arrTimeTable[10]+'</td><td>'+arrTimeTable[14]+'</td><td>'+arrTimeTable[18]+'</td>';
        makeHtml += '</tr><tr>';
        makeHtml += '<td>3교시<br>13:00</td><td>'+arrTimeTable[3]+'</td><td>'+arrTimeTable[7]+'</td><td>'+arrTimeTable[11]+'</td><td>'+arrTimeTable[15]+'</td><td>'+arrTimeTable[19]+'</td>';
        makeHtml += '</tr><tr>';
        makeHtml += '<td>4교시<br>15:00</td><td>'+arrTimeTable[4]+'</td><td>'+arrTimeTable[8]+'</td><td>'+arrTimeTable[12]+'</td><td>'+arrTimeTable[16]+'</td><td>'+arrTimeTable[20]+'</td>';
        makeHtml += '</table>';
        
        timeTableArea.innerHTML = makeHtml;
         
    }
    
	

	function doclearList() {
		alert('목록초기화 실행!!');
	}

	function closeInfo() {
		document.getElementById('infoArea').style.display = 'none';

	}

	function viewInfo() {
		document.getElementById('infoArea').style.display = 'block';

	}

	function closeDel() {
		document.getElementById('delArea').style.display = 'none';

	}

	function viewDel(i) {
		
		 document.getElementById('delArea').style.display = 'block';
	        
	        var delAreaInner = document.getElementById('delAreaInner');                                                    
	        var makeHtml = '';
	        makeHtml += '<h1>[ 강의정보 ]</h1>';
	        makeHtml += '<br>강의번호 : '+SelectedCourseList[i].cIdx;
	        makeHtml += '<br>강의명 : '+SelectedCourseList[i].name;
	        makeHtml += '<br>교수 : '+SelectedCourseList[i].teacher;
	        makeHtml += '<br>상세소개 : '+SelectedCourseList[i].content;
	        makeHtml += '<br>수업시간 : '+SelectedCourseList[i].startTime;
	        makeHtml += '<br>정원 : '+SelectedCourseList[i].applyPer+' / '+SelectedCourseList[i].totalPer;
	        makeHtml += '<br><br><button onClick="closeDel()">취소</button>';
	        makeHtml += '<button id="del" class="" onClick="doDel('+i+')">삭제</button>';
	        delAreaInner.innerHTML = makeHtml;

	}

	function doDel(i) {
		
		console.log(SelectedCourseList[i].cIdx);
		
		var cIdx= SelectedCourseList[i].cIdx;
    	var sIdx=${info.sIdx};
    	//저장하는 ajax - 완료됐으면 Y
    	$.ajax({
    		url : 'sAddFormCourseDelCheck.do',
    		data : {
    				sIdx:sIdx,
    				cIdx:cIdx
    				},
    		method: 'get',
    		success : 
    			function(data){
    				if(data=="Y"){
    					alert("정상적으로 삭제가 되었습니다.");
    				}else{
    					alert("삭제 실패!");
    				}
				//SelectedCourseList.push(CourseList[i]);
		       // makeSelectedCourseListTable();
    			}
    				
    		});
    	
        document.getElementById('delArea').style.display = 'none';
        SelectedCourseList.splice(i,1);
        makeMyCourseListHTML();
        makeSelectedCourseTimeTableHTML();//ok
        // form.submit();

	}

	function closeSaveImg() {
		document.getElementById('saveImgArea').style.display = 'none';

	}

	function viewSaveImg() {
		document.getElementById('saveImgArea').style.display = 'block';

	}

	function closeShareKa() {
		document.getElementById('shareKaArea').style.display = 'none';

	}

	function viewShareKa() {
		document.getElementById('shareKaArea').style.display = 'block';

	}

	function doShareKa() {

	}
</script>

</html>

