package lms.dao;

public class ReserveDao8 {
	
	// 싱글톤 처리 완료
	// 자신이 사용할 Dao/Model/Service resurve 파일 번호를 항상 공유해주세용!
	private ReserveDao8 () {
		
	}
	
	private static ReserveDao8 dao = new ReserveDao8();
	
	public static ReserveDao8 getInstance() {
		return dao;
	}
	
	
	
}
