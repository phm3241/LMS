package lms.dao;

public class ReserveDao7 {
	
	// 싱글톤 처리 완료
	// 자신이 사용할 Dao/Model/Service reserve 파일 번호를 항상 공유해주세용!
	private ReserveDao7 () {
		
	}
	
	private static ReserveDao7 dao = new ReserveDao7();
	
	public static ReserveDao7 getInstance() {
		return dao;
	}
	
	
	
}
