package lms.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import lms.dao.ClassDAO;

public class ClassInfoServiceImpl implements LmsService {

	ClassDAO dao;
	
	private final int CLASS_COUNT_PER_PAGE = 5;
	
	@Override
	public String getViewPage(HttpServletRequest request, HttpServletResponse response) {
		
		
		
		
		
		
		
		
		
		return "/WEB-INF/view/class/classCheck.jsp";
	}

}
