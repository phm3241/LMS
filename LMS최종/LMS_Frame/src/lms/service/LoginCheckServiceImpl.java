package lms.service;

import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dbcp.ConnectionProvider;
import lms.dao.AdminDao;
import lms.dao.StudentDao;
import lms.dao.TeacherDao;
	
public class LoginCheckServiceImpl implements Service {

	// 자신이 사용할 Dao/Model/Service resurve 파일 번호를 항상 공유해주세용!
	StudentDao sDao;
	TeacherDao tDao;
	AdminDao aDao;
	
	@Override
	public String getViewPage(HttpServletRequest request, HttpServletResponse response) {
		int resultCnt = 0;
		Connection conn = null;
		
		String type = request.getParameter("loginType");
		System.out.println("loginType :"+ type);
		int id = Integer.parseInt(request.getParameter("id").trim());
		String pw = request.getParameter("pw").trim();
		
		System.out.println("--loginCheckService 처리확인용--");
		System.out.println("id :"+ id);
		System.out.println("pw :"+ pw);
		
		
		try {
			conn = ConnectionProvider.getConnection();
			if(type.equals("sLogi n")) {
				sDao = StudentDao.getInstance();
				resultCnt = sDao.checkLoginStudent(conn, id, pw);
				System.out.println("학생 로그인체크 결과: "+resultCnt);
					
				if(resultCnt==1) {
					// 로그인 결과가 맞을 떄 ㅡ> 세션 객체 
					}
				
			} else if(type.equals("tLogin")) {
				tDao = TeacherDao.getInstance();
				resultCnt = tDao.checkLoginTeacher(conn, id, pw);
				System.out.println("교수 로그인체크 결과: "+resultCnt);
			} else {
				aDao = AdminDao.getInstance();
				resultCnt = aDao.checkLoginAdmin(conn, id, pw);
				System.out.println("관리자 로그인체크 결과: "+resultCnt);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		} finally {
			if(conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		
		request.setAttribute("result", resultCnt);
		return "/WEB-INF/views/loginCheck.jsp";
	}

}
