package lms.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import lms.model.Admin;
import lms.model.Student;
import lms.model.Teacher;
import lms.util.CookieBox;

public class LoginServiceImpl implements Service {

	// 자신이 사용할 Dao/Model/Service resurve 파일 번호를 항상 공유해주세용!
	CookieBox cookieBox;
	Student student;
	Admin admin;
	Teacher teacher;
	@Override
	public String getViewPage(HttpServletRequest request, HttpServletResponse response) {
		String type = cookieBox.getValue("type");
		int id = Integer.parseInt(request.getParameter("id"));
		String pw = request.getParameter("pw");
		String path = null;
		
		if(type.equals("sLogin")) {
			student = new Student(id, pw);
			path = "/WEB-INF/views/student/sMypage.jsp";
		} else if(type.equals("tLogin")) {
			teacher = new Teacher(id, pw);
			path = "/WEB-INF/views/teacher/tMypage.jsp";
		} else {
			admin = new Admin(id, pw);
			path = "/WEB-INF/views/admin/cList.jsp";
		}
		
		

		return path;
	}

}
