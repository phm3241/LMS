package lms.dao;

import java.sql.Connection;

public class AdminDao {
	
	// 싱글톤 처리 완료
	// 자신이 사용할 Dao/Model/Service resurve 파일 번호를 항상 공유해주세용!
	private AdminDao () {
		
	}
	
	private static AdminDao dao = new AdminDao();
	
	public static AdminDao getInstance() {
		return dao;
	}

	public int selectById(Connection conn, String id, String pw) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int checkLoginAdmin(Connection conn, String id, String pw) {
		// TODO Auto-generated method stub
		return 0;
	}
	
	
	
}
