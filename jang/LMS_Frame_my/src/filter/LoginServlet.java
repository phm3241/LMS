package filter;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dbcp.ConnectionProvider;
import lms.dao.AdminDao;
import lms.dao.StudentDao;
import lms.dao.TeacherDao;
import lms.model.Admin;
import lms.model.Student;
import lms.model.Teacher;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	StudentDao sDao;
	TeacherDao tDao;
	AdminDao aDao;
	Student student;
	Admin admin;
	Teacher teacher;
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
	
		int idx = Integer.parseInt(request.getParameter("id"));
		String pw = request.getParameter("pw");
		String type = request.getParameter("loginType");
		
		Connection conn = null;
		
		try {
			conn = ConnectionProvider.getConnection();
			
			if(type.equals("sLogin")) {
				sDao = StudentDao.getInstance();
				student = sDao.selectBysIdPw(conn, idx, pw);
				
				session.setAttribute("login", student);
			} else if(type.equals("tLogin")) {
				tDao = TeacherDao.getInstance();
				teacher = tDao.selectBytIdPw(conn, idx, pw);
				
				session.setAttribute("login", teacher);
			} else {
				aDao = AdminDao.getInstance();
				admin = aDao.selectByIdPw(conn, idx, pw);
				
				session.setAttribute("login", admin);
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
		
		
		doGet(request, response);
	}

}
