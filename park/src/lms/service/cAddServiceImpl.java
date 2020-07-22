package lms.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// 로그인 처리 후 ㅡ> 어떤 타입으로 로그인했는지에 따라 ㅡ> 마이페이지 
public class cAddServiceImpl implements Service {

	// Service 클래스 이용에 대한 예제 클래스입니다.
	
	
	@Override
	// 
	public String getViewPage(HttpServletRequest request, HttpServletResponse response) {
		
		// Front Controller에 view 페이지를 요청합니다.
		return "/WEB-INF/teacher/cAdd.jsp";
	}


}
