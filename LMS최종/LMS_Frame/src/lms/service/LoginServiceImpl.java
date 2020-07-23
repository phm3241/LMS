package lms.service;

import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dbcp.ConnectionProvider;
import lms.dao.AdminDao;
import lms.dao.StudentDao;
import lms.dao.TeacherDao;
import lms.model.Admin;
import lms.model.Student;
import lms.model.Teacher;
import lms.util.CookieBox;

public class LoginServiceImpl implements Service {

	// 자신이 사용할 Dao/Model/Service resurve 파일 번호를 항상 공유해주세용!
	CookieBox cookieBox;
	StudentDao sDao;
	TeacherDao tDao;
	AdminDao aDao;
	Student student;
	Admin admin;
	Teacher teacher;
	@Override
	public String getViewPage(HttpServletRequest request, HttpServletResponse response) {
		String type = cookieBox.getValue("type");
		int id = Integer.parseInt(request.getParameter("id"));
		String pw = request.getParameter("pw");
		String path = null;
		Connection conn = null;
		
		try {
			conn = ConnectionProvider.getConnection();
			
			if(type.equals("sLogin")) {
				sDao = StudentDao.getInstance();
				student = sDao.selectBysIdPw(conn, id, pw);
				
				request.setAttribute("login", student);
				path = "/WEB-INF/views/student/sMypage.jsp";
			} else if(type.equals("tLogin")) {
				tDao = TeacherDao.getInstance();
				teacher = tDao.selectBytIdPw(conn, id, pw);
				
				request.setAttribute("login", teacher);
				path = "/WEB-INF/views/teacher/tMypage.jsp";
			} else {
				aDao = AdminDao.getInstance();
				admin = aDao.selectByIdPw(conn, id, pw);
				
				request.setAttribute("login", admin);
				path = "/WEB-INF/views/admin/cList.jsp";
			}
		} catch (SQLException e) {
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
		
		
		return path;
	}

}
