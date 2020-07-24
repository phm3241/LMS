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

public class InfoServiceImpl implements Service {
	
	StudentDao sdao;
	TeacherDao tdao;

	// 자신이 사용할 Dao/Model/Service resurve 파일 번호를 항상 공유해주세용!
	
	@Override
	public String getViewPage(HttpServletRequest request, HttpServletResponse response) {
		
		Student student = null;
		Teacher teacher = null;
		
		Connection conn = null;
		
		// session에서 로그인 타입과 객체 불러오기
		HttpSession session = request.getSession(false);
		String type = (String) session.getAttribute("loginType");
		
		// 변수 초기화
		String path = null;
		

		if(type.equals("sLogin")) {	
			
			try {
				conn = ConnectionProvider.getConnection();
				sdao = StudentDao.getInstance();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
			path = "/WEB-INF/views/student/sInfo.jsp";
			
			
		} else {
			path = "/WEB-INF/views/teacher/tInfo.jsp";
		}
		
		return path;
	}

}
