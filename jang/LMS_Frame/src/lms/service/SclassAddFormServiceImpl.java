package lms.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SclassAddFormServiceImpl implements Service {

	// 자신이 사용할 Dao/Model/Service resurve 파일 번호를 항상 공유해주세용!
	
	
	@Override
	public String getViewPage(HttpServletRequest request, HttpServletResponse response) {
		// 모든 강의 목록 list로 던져주기
		return "/WEB-INF/views/student/sClassAddForm.jsp";
	}

}
