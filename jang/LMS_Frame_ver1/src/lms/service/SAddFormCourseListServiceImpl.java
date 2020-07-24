package lms.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dbcp.ConnectionProvider;
import lms.dao.CourseDao;
import lms.model.Course;
import lms.model.CourseListView;
import lms.model.MyCourse;
import lms.model.SMyCourseListView;
import lms.model.Student;

public class SAddFormCourseListServiceImpl implements Service {

	CourseDao dao;
	Course course;
	Student student;
	MyCourse myCourse;
	
	@Override
	public String getViewPage(HttpServletRequest request, HttpServletResponse response) {
		
		CourseListView cListView=null;
		Connection conn= null;
		int resultCnt = 0;
		String result = "N";
		List<Course> courseList = null;
		
		try {
			conn=ConnectionProvider.getConnection();
			dao=CourseDao.getInstance();
			
			courseList = dao.courseList(conn);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		request.setAttribute("courseList", courseList);
		
		
		return "/WEB-INF/views/student/sAddFormCourseList.jsp";
	}

}
