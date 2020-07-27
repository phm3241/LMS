package lms.service;

import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dbcp.ConnectionProvider;
import lms.dao.StudentDao;
import lms.dao.TeacherDao;
import lms.model.Student;
import lms.model.Teacher;

public class InfoEditServiceImpl implements Service {

	// 자신이 사용할 Dao/Model/Service resurve 파일 번호를 항상 공유해주세용!
	Student student;
	Teacher teacher;
	StudentDao sDao;
	TeacherDao tDao;
	
	@Override
	public String getViewPage(HttpServletRequest request, HttpServletResponse response) {
		
		// session에서 로그인 타입과 객체 불러오기
		HttpSession session = request.getSession(false);
		String type = (String) session.getAttribute("loginType");
			// student 객체에서 sIdx 가져오기
		
		// form에서 입력한 전화번호와 이메일 가져오기
		String tel = request.getParameter("tel");
		String email = request.getParameter("email");
		String pw = request.getParameter("pw1");
		String pw2= request.getParameter("pw2");
		
		System.out.println("수정할 전화번호 : " + tel+ " / 수정할 이메일 주소 : " + email);
		System.out.println("비밀번호 : " + pw +" / 확인 비밀번호 : " + pw2);
		
		// 변수 초기화
		
		String path = null;
		Connection conn = null;
		int result = 0;
		int sIdx = 0;
		int tIdx = 0;
		
		try {
			conn = ConnectionProvider.getConnection();
			sDao = StudentDao.getInstance();
			tDao = TeacherDao.getInstance();
			
			if(type.equals("sLogin")) {
				student = (Student) session.getAttribute("info");
				sIdx = student.getsIdx();
				result = sDao.editStudent(conn, sIdx, tel, email);
				
				request.setAttribute("result", result);
				
				path = "/WEB-INF/views/student/sInfo.jsp";
			} else if(type.equals("tLogin")) {
				teacher = (Teacher) session.getAttribute("info");
				tIdx = teacher.gettIdx();
				tDao.editTeacher(conn, tIdx, tel, email);
				path = "/WEB-INF/views/teacher/tInfo.jsp";
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			if(conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		
		
		return path;
	}

}
