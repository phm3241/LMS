package lms.service;

import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dbcp.ConnectionProvider;
import lms.dao.AdminDao;
import lms.dao.CourseDao;
import lms.dao.StudentDao;
import lms.dao.TeacherDao;
import lms.model.Course;
import lms.model.Student;

public class MyPageServiceImpl implements Service {

	// 자신이 사용할 Dao/Model/Service resurve 파일 번호를 항상 공유해주세용!
	StudentDao sDao;
	TeacherDao tDao;
	CourseDao cDao;
	
	Student student;
	Course course;
	
	String path="";
	
	@Override
	public String getViewPage(HttpServletRequest request, HttpServletResponse response) {
		
		student=new Student();
		course=new Course();
		
		//result = 강의idx
		int result = 0;
		Connection conn = null;
		
		String type = request.getParameter("loginType");
		//int sIdx = Integer.parseInt(request.getParameter("sIdx"));
		//int id = Integer.parseInt(request.getParameter("id"));
		//String pw = request.getParameter("pw");
		
		
		
		try {
			conn = ConnectionProvider.getConnection();
			if(type.equals("sLogin")) {
				sDao = StudentDao.getInstance();
				cDao = CourseDao.getInstance();
				
				result=cDao.selectMyCourse(conn, course, student);
				
				
				
				
				
				
				
				
				path="/WEB-INF/views/student/sMypage.jsp";
				//resultCnt = sDao.checkLoginStudent(conn, id, pw);
			} else if(type.equals("tLogin")) {
				//tDao = TeacherDao.getInstance();
				//resultCnt = tDao.checkLoginTeacher(conn, id, pw);
				path="/WEB-INF/views/teacher/tMypage.jsp";
				
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
		
		request.setAttribute("result", result);

		
		return path;
	}

}
