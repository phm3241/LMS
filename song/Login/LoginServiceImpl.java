package lms.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginServiceImpl implements Service {

	// 자신이 사용할 Dao/Model/Service resurve 파일 번호를 항상 공유해주세용!
	
	@Override
	public String getViewPage(HttpServletRequest request, HttpServletResponse response) {
		String type = request.getParameter("loginType");
		String path = null;
		
		if(type.equals("sLogin")) {
			path = "/WEB-INF/views/student/sMypage.jsp";
		} else if(type.equals("tLogin")) {
			path = "/WEB-INF/views/teacher/tMypage.jsp";
		} else {
			path = "/WEB-INF/views/admin/cList.jsp";
		}
		
		return path;
	}

}
