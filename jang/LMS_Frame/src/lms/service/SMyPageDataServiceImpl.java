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

public class SMyPageDataServiceImpl implements Service {

	CourseDao dao;
	Course course;
	Student student;
	
	
	@Override
	public String getViewPage(HttpServletRequest request, HttpServletResponse response) {

		
		CourseListView cListView=null;
		Connection conn= null;
		
		List<Course> courseList = null;
		List<MyCourse> myCourseList=null;
		
		try {
			conn=ConnectionProvider.getConnection();
			dao=CourseDao.getInstance();
			
			myCourseList=dao.selectMyCourseBysIdx(conn, sIdx);
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		request.setAttribute("cListView", cListView);
		
		
		return "/WEB-INF/views/student/sMyPageData.jsp";
	}

}
