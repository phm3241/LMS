package lms.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.Collections;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dbcp.ConnectionProvider;
import lms.dao.ClassDAO;
import lms.model.ClassInfo;
import lms.model.ClassListView;

public class ClassCheckServiceImpl implements LmsService {

	
	ClassDAO dao;
	
	private final int CLASS_COUNT_PER_PAGE = 5;
	
	@Override
	public String getViewPage(HttpServletRequest request, HttpServletResponse response) {
		
		ClassListView classListView = null;
		
		Connection conn = null;

		List<ClassInfo> memberList = null;
		
		
		try {
			
			conn=ConnectionProvider.getConnection();
			dao=ClassDAO.getInstance();
			
			
			
			// 전체 회원 수 
			int classTotalCount = dao.selectTotalCount(conn);
			
			int startRow = 0;
			int endRow = 0;
			
			//현재 페이지 번호
			int currentPageNumber = 1;
			
			String pageNumber = request.getParameter("page");
			
			if(pageNumber!=null) {
				try {
					currentPageNumber = Integer.parseInt(pageNumber);
				} catch (NumberFormatException e) {
					System.out.println("숫자 타입의 문자열이 전달되지 않아 예외 발생");
				}
			}
			
			
			if(classTotalCount>0) {
				
				// 시작행,마지막행
				startRow = (currentPageNumber-1) * CLASS_COUNT_PER_PAGE;
				endRow = startRow + CLASS_COUNT_PER_PAGE -1;
				memberList = dao.selectMemberList(conn, startRow, endRow);
				
			} else {
				currentPageNumber=0;
				memberList = Collections.emptyList();
				
			}
			
			classListView = new ClassListView(classTotalCount, currentPageNumber, classList, CLASS_COUNT_PER_PAGE, startRow, endRow);
				
			} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				
			} catch (Exception e) {
				e.printStackTrace();
			} 
		
		
		
		request.setAttribute("classInfo", classListView);
		
		return null;
	}

}
