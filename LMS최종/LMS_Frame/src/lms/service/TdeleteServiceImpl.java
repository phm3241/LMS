package lms.service;

import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dbcp.ConnectionProvider;
import lms.dao.TeacherDao;

public class TdeleteServiceImpl implements Service {

	TeacherDao dao;

	@Override
	public String getViewPage(HttpServletRequest request, HttpServletResponse response) {

		Connection conn = null;
		int resultCnt = 0;
		int tIdx = Integer.parseInt(request.getParameter("tIdx"));

		try {
			conn = ConnectionProvider.getConnection();
			dao = TeacherDao.getInstance();
			
			resultCnt = dao.deleteTeacher(conn, tIdx);


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

		request.setAttribute("reultCnt", resultCnt);

		return "/WEB-INF/views/admin/tList.jsp";
	}

}