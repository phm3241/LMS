package lms.dao;

public class ReserveDao6 {
	
	// 싱글톤 처리 완료
	// 자신이 사용할 Dao/Model/Service resurve 파일 번호를 항상 공유해주세용!
	private ReserveDao6 () {
		
	}
	
	private static ReserveDao6 dao = new ReserveDao6();
	
	public static ReserveDao6 getInstance() {
		return dao;
	}
	
	
	
}
