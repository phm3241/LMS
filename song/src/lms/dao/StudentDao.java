package lms.dao;

import java.sql.Connection;

public class StudentDao {
	
	// 싱글톤 처리 완료
	// 자신이 사용할 Dao/Model/Service resurve 파일 번호를 항상 공유해주세용!
	private StudentDao () {
		
	}
	
	private static StudentDao dao = new StudentDao();
	
	public static StudentDao getInstance() {
		return dao;
	}

	public int selectById(Connection conn, String uid, String upw) {
		// TODO Auto-generated method stub
		return 0;
	}
	
	
	
}
