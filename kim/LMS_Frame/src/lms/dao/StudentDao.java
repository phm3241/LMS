package lms.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import lms.model.Student;

public class StudentDao {
	
	// 싱글톤 처리 완료
	// 자신이 사용할 Dao/Model/Service resurve 파일 번호를 항상 공유해주세용!
	// 학생 DAO - 담당 : 김승연
	// 			작업 일시 : 2020. 07. 21
	private StudentDao () {
		
	}
	
	private static StudentDao dao = new StudentDao();
	
	public static StudentDao getInstance() {
		return dao;
	}
	
	
	// 학생 정보 수정 메서드
	// update 쿼리문이 성공적으로 싱행되면
	// int값을 반환해 result 값에 저장하여 반환
	public int editStudent (Connection conn, Student student) throws SQLException {
		
		int result = 0;
		
		PreparedStatement pstmt = null;
		
		// 수정사항 : 전화번호/이메일 
		String sql = "update student set tel=?, email=? where sIdx=?;";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, student.getTel());
			pstmt.setString(2, student.getEmail());
			pstmt.setInt(3, student.getsIdx());
			
			result = pstmt.executeUpdate();
			
		} finally {
			if (pstmt != null) {
				pstmt.close();
			}
		}
		
		
		
		return result;
		
	}
	
	
	
}
