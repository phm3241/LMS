package lms.dao;

public class ReserveDao9 {
	
	// 싱글톤 처리 완료
	// 자신이 사용할 Dao/Model/Service resurve 파일 번호를 항상 공유해주세용!
	private ReserveDao9 () {
		
	}
	
	private static ReserveDao9 dao = new ReserveDao9();
	
	public static ReserveDao9 getInstance() {
		return dao;
	}
	
	
	
}
