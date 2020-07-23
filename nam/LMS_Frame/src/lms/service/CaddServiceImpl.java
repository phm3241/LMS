package lms.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Time;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dbcp.ConnectionProvider;
import lms.dao.CourseDao;
import lms.model.Course;

public class CaddServiceImpl implements Service {

	// 자신이 사용할 Dao/Model/Service resurve 파일 번호를 항상 공유해주세용!
	CourseDao dao;
	
	@Override
	public String getViewPage(HttpServletRequest request, HttpServletResponse response) {
		int resultCnt = 0;
		Connection conn = null;
		Course course = null;
		Time sTime = null;
		Time eTime = null;
		
		String name = request.getParameter("name");
		String teacher = request.getParameter("teacher");
		String content = request.getParameter("content");
		String day = request.getParameter("day");
		String startTime = request.getParameter("startTime");
		String endTime = request.getParameter("endTime");
		DateFormat formatter = new SimpleDateFormat("HH:mm");
		try {
			sTime = new Time(formatter.parse(startTime).getTime());
			eTime = new Time(formatter.parse(endTime).getTime());
		} catch (ParseException e) {
			e.printStackTrace();
		}
		int totalPer = Integer.parseInt(request.getParameter("totalPer"));
		int applyPer = Integer.parseInt(request.getParameter("applyPer"));
		int tIdx = Integer.parseInt(request.getParameter("tIdx"));
		
		try {
			conn = ConnectionProvider.getConnection();
			dao = CourseDao.getInstance();
			
			course = new Course();
			course.setName(name);
			course.setTeacher(teacher);
			course.setContent(content);
			course.setDay(day);
			course.setStartTime(sTime);
			course.setEndTime(eTime);
			course.setTotalPer(totalPer);
			course.setApplyPer(applyPer);
			course.settIdx(tIdx);
			
			resultCnt = dao.insertCourse(conn, course);
			
			request.setAttribute("course", course);
			request.setAttribute("resultCnt", resultCnt);
				
			
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
		
		return "/WEB-INF/views/teacher/tMypage.jsp";
	}

}
