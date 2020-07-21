package lms.dao;

public class ResurveDao2 {
	
	// 싱글톤 처리 완료
	// 자신이 사용할 Dao/Model/Service resurve 파일 번호를 항상 공유해주세용!
	private ResurveDao2 () {
		
	}
	
	private static ResurveDao2 dao = new ResurveDao2();
	
	public static ResurveDao2 getInstance() {
		return dao;
	}
	
	
	
}
