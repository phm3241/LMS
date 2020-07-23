package lms.dao;

import java.sql.Connection;

public class TeacherDao {
	
	// 싱글톤 처리 완료
	// 자신이 사용할 Dao/Model/Service resurve 파일 번호를 항상 공유해주세용!
	private TeacherDao () {
		
	}
	
	private static TeacherDao dao = new TeacherDao();
	
	public static TeacherDao getInstance() {
		return dao;
	}

	public int selectById(Connection conn, String uid, String upw) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int checkLoginTeacher(Connection conn, int id, String pw) {
		// TODO Auto-generated method stub
		return 0;
	}
	
	
	
}
