<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
            height : 20px;
            width : 150px;
            border-color: rgb(188, 188, 188);

        }

        button {
            
            
            width: 80px;
            height: 30px;
            text-align: center;
            font-size :14px;


        }


        .btnSearch {

            margin-left: 5px;
            margin-right: -2px;
            width: 50px;
            height: 26px;
            text-align: center;
            font-size :14px;

        }

        .tdRight {
            text-align : right;
        }

        .alignLeft {
		    text-align : left;
        }


        .alignRight {
            text-align : right;
        }

        .bold {       
            font-size : 25px;
            font-weight : 900;
        }

        a {
            text-decoration : none;
            color : white;
            font-size : 20px;
            font-weight : 500;
            margin: 3px 3px 3px 3px; 
        }
        .titleTable {       
            color : white;
            font-size : 20px;
            font-weight : 500;
            margin: 3px 3px 3px 3px;            
            
        
        }
        
        .alignCenter {
            text-align : center;
        }

        .btnStyle {            
            border-radius: 10px;
            font-size:14px;
            color: white;
            font-weight : 900;
            /* background-color: rgba(0, 0, 255, 0.7);
            border-color:  rgba(0, 0, 255, 1);             */
        }

        .btnStyle:hover {
            color: black;
            background-color: white;
            border-color:  gray; 
        }

        .userImg {
            border-radius: 10px;
            border: 7px solid white;
            

        }




        .bgColorGray {
            background-color: rgb(228, 228, 228);
        }


        .bgColorHeader {
            background-color: rgb(41, 128, 185);
        }
        




    </style>
    <script></script>
</head>

<body>

<div id="container">
        <div id="header" class="bgColorHeader">
            
            <table class="titleTable" width=100% border=0 cellspacing=0>
                <tr><td rowspan=2 class="alignRight" width=15% valign="bottom"><img class="userImg" width=50 src="./images/userImg.png"></td>
                    <td  class="alignLeft"> 2008123456114</td></tr>
                <tr><td class="alignLeft"> 컴퓨터학과 주강사</td></tr>
            </table> 
            <table class="titleTable" width=100% border=0 cellspacing=0>
                <tr><td><a href="cAddForm.html">[강의등록]</a></td>
                    <td><a href="tMyPage.html">나의 강의실</a></td>
                    <td><a href="tInfo.html">내정보</a></td></tr>                
            </table> 
        </div>
	    
        <div id="contentsAll">
    
            <form>

      
                <table width=100% border=0>
                    <tr><td width=50% class="alignRight">교과목명</td>
                        <td width=45% class="alignLeft"><input type="text" id="search"></td></tr>
                    <tr><td class="alignRight">교수명</td>
                        <td class="alignLeft"><input type="text" id="search"></td></tr>                
                    <tr><td class="alignRight">과목내용</td>
                        <td class="alignLeft"><input type="text" id="search"></td></tr>
                    <tr><td class="alignRight">대상학년</td>
                        <td class="alignLeft"><input type="text" id="search"></td></tr>
                    <tr><td class="alignRight">이수구분</td>
                        <td class="alignLeft"><input type="text" id="search"></td></tr>
                    <tr><td class="alignRight">학점</td>
                        <td class="alignLeft"><input type="text" id="search"></td></tr>
                    <tr><td class="alignRight">수업시간</td>
                        <td class="alignLeft"><input type="text" id="search"></td></tr>
                    <tr><td class="alignRight">정원</td>
                        <td class="alignLeft"><input type="text" id="search"></td></tr>
                    <tr><td class="alignRight">교재</td>
                        <td class="alignLeft"><input type="text" id="search"></td></tr>
                    <tr><td class="alignRight">강의실</td>
                        <td class="alignLeft"><input type="text" id="search"></td></tr>
                    <tr><td colspan="2">
                        <button class="" onClick="closeInsert()">취소</button>
                        <button type="submit" id="insert" class="" onClick="doInsert(this.form)">등록</button>
                        </td></tr>
                </table>
            </form>
        

        </div>        
        
    </div>

  

</body>

<script>
    function doInsert(form) {     




        
        form.submit();
        

    }
    

  



</script>

</html>

