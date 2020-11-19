package lms.dao;

public class ReserveDao5 {
	
	// 싱글톤 처리 완료
	// 자신이 사용할 Dao/Model/Service reserve 파일 번호를 항상 공유해주세용!
	private ReserveDao5 () {
		
	}
	
	private static ReserveDao5 dao = new ReserveDao5();
	
	public static ReserveDao5 getInstance() {
		return dao;
	}
	
	
	
}
