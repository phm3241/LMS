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

        #idClass td {
            font-size : 14px;
            border-bottom: 1px solid rgb(228, 228, 228);
        }


        #insertCourseArea{
                
            top:100px;
            left:50%;
            margin-left :-150px;
            
            background-color:white;
            width:300px;
            
            position:absolute;
            /* z-index: 1; */            
            
            border: 2px solid  rgb(26, 188, 156);
            display:none;
            text-align:center;
            font-size :12pt;
            
        }

        #insertCourseAreaInner{        
            margin : 10px 10px 10px 10px;
            background-color:white;       
            text-align:center;
            font-size :10pt;
            
        }


        #infoCourseArea{
                
                top:100px;
                left:50%;
                margin-left :-150px;
                
                background-color:white;
                width:300px;
                
                position:absolute;
                /* z-index: 1; */            
                
                border: 2px solid  rgb(26, 188, 156);
                display:none;
                text-align:center;
                font-size :12pt;
                
            }
    
            #infoCourseAreaInner{        
                margin : 10px 10px 10px 10px;
                background-color:white;       
                text-align:center;
                font-size :10pt;
                
            }



            #modifyCourseArea{
                
                top:100px;
                left:50%;
                margin-left :-150px;
                
                background-color:white;
                width:300px;
                
                position:absolute;
                /* z-index: 1; */            
                
                border: 2px solid  rgb(26, 188, 156);
                display:none;
                text-align:center;
                font-size :12pt;
                
            }
    
            #modifyCourseAreaInner{        
                margin : 10px 10px 10px 10px;
                background-color:white;       
                text-align:center;
                font-size :10pt;
                
            }


            #delCourseArea{
                
                top:100px;
                left:50%;
                margin-left :-150px;
                
                background-color:white;
                width:300px;
                
                position:absolute;
                /* z-index: 1; */            
                
                border: 2px solid  rgb(26, 188, 156);
                display:none;
                text-align:center;
                font-size :12pt;
                
            }
    
            #delCourseAreaInner{        
                margin : 10px 10px 10px 10px;
                background-color:white;       
                text-align:center;
                font-size :10pt;
                
            }



        .bgColorGray {
            background-color: rgb(228, 228, 228);
        }


        .bgColorHeader {
            background-color: rgb(26, 188, 156);
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
                <tr><td class="alignLeft"> ê´ë¦¬ì</td></tr>
            </table> 
            <table class="titleTable" width=100% border=0 cellspacing=0>
                <tr><td><a href="cList.html">[ê°ì]</a></td>
                    <td><a href="tList.html">ê°ì¬</a></td>
                    <td><a href="sList.html">íì</a></td></tr>                
            </table>
        </div>
	    
        <div id="contentsAll">

        
        <table width=100% border=0>
            <tr><td colspan="2" class="tdRight">
                êµê³¼ëª©ê²ì<button id="search" class="btnSearch">F</button><input type="text" id="search">
            </td></tr>
            <tr><td class="alignLeft bold">ê°ì ëª©ë¡</td>
                <td class="tdRight">
                    <button id="viewInsertCourse" class="" onClick="viewInsertCourse()">ë±ë¡</button></td></tr>
        </table>
        
        <table id="idClass" width=100% border=0 cellspacing="0">
            <tr class="bgColorGray"><th>ì½ë</th><th>êµê³¼ëª©ëª</th><th>êµìëª</th>
                <th>íë</th><th>ì´ì<br>êµ¬ë¶</th><th>ìì<br>ìê°</th>
                <th>ì ì</th><th>ê°ì<br>ì ë³´</th><th>ìì </th><th>ì­ì </th></tr>
            <tr class="">
                <td class="">A01</td><td>ì»´í¨í°ì­ì¬</td><td>ì ì ì°</td>
                <td>1</td><td>êµì</td><td>ì(3,4)</td><td>25</td>
                <td><button id="viewInfoCourse" class="" onClick="viewInfoCourse()">ê°ìì ë³´</button></td>
                <td><button id="viewModifyCourse" class="" onClick="viewModifyCourse()">ìì </button></td>
                <td><button id="viewDelCourse" class="" onClick="viewDelCourse()">ì­ì </button></td>
            <tr class="">
                <td>A01</td><td>ì»´í¨í°ì­ì¬</td><td>ì ì ì°</td>
                <td>1</td><td>êµì</td><td>ì(3,4)</td><td>25</td>
                <td><button id="viewInfoCourse" class="" onClick="viewInfoCourse()">ê°ìì ë³´</button></td>
                <td><button id="viewModifyCourse" class="" onClick="viewModifyCourse()">ìì </button></td>
                <td><button id="viewDelCourse" class="" onClick="viewDelCourse()">ì­ì </button></td>
            <tr class="">
                <td>A01</td><td>ì»´í¨í°ì­ì¬</td><td>ì ì ì°</td>
                <td>1</td><td>êµì</td><td>ì(3,4)</td><td>25</td>
                <td><button id="viewInfoCourse" class="" onClick="viewInfoCourse()">ê°ìì ë³´</button></td>
                <td><button id="viewModifyCourse" class="" onClick="viewModifyCourse()">ìì </button></td>
                <td><button id="viewDelCourse" class="" onClick="viewDelCourse()">ì­ì </button></td>
            <tr class="">
                <td>A01</td><td>ì»´í¨í°ì­ì¬</td><td>ì ì ì°</td>
                <td>1</td><td>êµì</td><td>ì(3,4)</td><td>25</td>
                <td><button id="viewInfoCourse" class="" onClick="viewInfoCourse()">ê°ìì ë³´</button></td>
                <td><button id="viewModifyCourse" class="" onClick="viewModifyCourse()">ìì </button></td>
                <td><button id="viewDelCourse" class="" onClick="viewDelCourse()">ì­ì </button></td>
        
                
                                
            

            
            



        </table>
        



        </div>        
             

        
    </div>

    <div id="insertCourseArea">
        <div id="insertCourseAreaInner">
        
        <form>

            ê°ìë±ë¡
            <table width=100% border=0>
                <tr><td>êµê³¼ëª©ëª</td>
                    <td><input type="text" id="search"></td></tr>
                <tr><td>êµìëª</td>
                    <td><input type="text" id="search"></td></tr>                
                <tr><td>ê³¼ëª©ë´ì©</td>
                    <td><input type="text" id="search"></td></tr>
                <tr><td>ëìíë</td>
                    <td><input type="text" id="search"></td></tr>
                <tr><td>ì´ìêµ¬ë¶</td>
                    <td><input type="text" id="search"></td></tr>
                <tr><td>íì </td>
                    <td><input type="text" id="search"></td></tr>
                <tr><td>ìììê°</td>
                    <td><input type="text" id="search"></td></tr>
                <tr><td>ì ì</td>
                    <td><input type="text" id="search"></td></tr>
                <tr><td>êµì¬</td>
                    <td><input type="text" id="search"></td></tr>
                <tr><td>ê°ìì¤</td>
                    <td><input type="text" id="search"></td></tr>
                <tr><td colspan="2">
                    <button class="" onClick="closeInsertCourse()">ì·¨ì</button>
                    <button type="submit" id="insertCourse" class="" onClick="doInsertCourse(this.form)">ë±ë¡</button>
                    </td></tr>
            </table>
        </form>
        </div>
    </div>

    <div id="infoCourseArea">
        <div id="infoCourseAreaInner">
        
        <form>

            ê°ìì ë³´
            <table width=100% border=0>
                <tr><td>êµê³¼ëª©ëª</td>
                    <td></td></tr>
                <tr><td>êµìëª</td>
                    <td></td></tr>
                <tr><td>ê³¼ëª©ë´ì©</td>
                    <td></td></tr>
                <tr><td>ëìíë</td>
                    <td></td></tr>
                <tr><td>ì´ìêµ¬ë¶</td>
                    <td></td></tr>
                <tr><td>íì </td>
                    <td></td></tr>
                <tr><td>ìììê°</td>
                    <td></td></tr>
                <tr><td>ì ì</td>
                    <td></td></tr>
                <tr><td>êµì¬</td>
                    <td></td></tr>
                <tr><td>ê°ìì¤</td>
                    <td></td></tr>
                <tr><td colspan="2">
                    <button class="" onClick="closeInfoCourse()">ë«ê¸°</button>                    
                </td></tr>
            </table>
        </form>
        </div>
    </div>

    <div id="modifyCourseArea">
        <div id="modifyCourseAreaInner">
        
        <form>

            ê°ììì 
            <table width=100% border=0>
                <tr><td>êµê³¼ëª©ëª</td>
                    <td><input type="text" id="search"></td></tr>
                <tr><td>êµìëª</td>
                    <td><input type="text" id="search"></td></tr>                
                <tr><td>ê³¼ëª©ë´ì©</td>
                    <td><input type="text" id="search"></td></tr>
                <tr><td>ëìíë</td>
                    <td><input type="text" id="search"></td></tr>
                <tr><td>ì´ìêµ¬ë¶</td>
                    <td><input type="text" id="search"></td></tr>
                <tr><td>íì </td>
                    <td><input type="text" id="search"></td></tr>
                <tr><td>ìììê°</td>
                    <td><input type="text" id="search"></td></tr>
                <tr><td>ì ì</td>
                    <td><input type="text" id="search"></td></tr>
                <tr><td>êµì¬</td>
                    <td><input type="text" id="search"></td></tr>
                <tr><td>ê°ìì¤</td>
                    <td><input type="text" id="search"></td></tr>
                <tr><td colspan="2">
                    <button class="" onClick="closeInsertCourse()">ì·¨ì</button>
                    <button type="submit" id="modifyCourse" class="" onClick="doModifyCourse(this.form)">ìì </button>
                    </td></tr>
            </table>
        </form>
        </div>
    </div>

    <div id="delCourseArea">
        <div id="delCourseAreaInner">
        
        <form>

            ê°ìì­ì 
            <table width=100% border=0>
                <tr><td>êµê³¼ëª©ëª</td>
                    <td></td></tr>
                <tr><td>êµìëª</td>
                    <td></td></tr>
                <tr><td>ê³¼ëª©ë´ì©</td>
                    <td></td></tr>
                <tr><td>ëìíë</td>
                    <td></td></tr>
                <tr><td>ì´ìêµ¬ë¶</td>
                    <td></td></tr>
                <tr><td>íì </td>
                    <td></td></tr>
                <tr><td>ìììê°</td>
                    <td></td></tr>
                <tr><td>ì ì</td>
                    <td></td></tr>
                <tr><td>êµì¬</td>
                    <td></td></tr>
                <tr><td>ê°ìì¤</td>
                    <td></td></tr>
                <tr><td colspan="2">
                    <button class="" onClick="closeInsertCourse()">ì·¨ì</button>
                    <button type="submit" id="insertCourse" class="" onClick="doInsertCourse(this.form)">ë±ë¡</button>
                    </td></tr>
            </table>
        </form>
        </div>
    </div>


</body>

<script>

    function closeInsertCourse() {
            document.getElementById('insertCourseArea').style.display = 'none';

    }
    
    function viewInsertCourse() {     
        document.getElementById('insertCourseArea').style.display = 'block';

    }

    function doInsertCourse(form) {     




        document.getElementById('insertCourseArea').style.display = 'none';
        form.submit();
        

    }

    function closeInfoCourse() {
            document.getElementById('infoCourseArea').style.display = 'none';

    }
    
    function viewInfoCourse() {     
        document.getElementById('infoCourseArea').style.display = 'block';

    }

    function closeModifyCourse() {
            document.getElementById('modifyCourseArea').style.display = 'none';

    }
    
    function viewModifyCourse() {     
        document.getElementById('modifyCourseArea').style.display = 'block';

    }

    function doModifyCourse(form) {     




        document.getElementById('modifyCourseArea').style.display = 'none';
        form.submit();
        

    }

    function closeDelCourse() {
            document.getElementById('delCourseArea').style.display = 'none';

    }
    
    function viewDelCourse() {     
        document.getElementById('delCourseArea').style.display = 'block';

    }

    function doDelCourse(form) {     




        document.getElementById('delCourseArea').style.display = 'none';
        form.submit();
        

    }


</script>

</html>

