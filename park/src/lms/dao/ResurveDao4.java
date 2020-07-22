package lms.dao;

public class ResurveDao4 {
	
	// 싱글톤 처리 완료
	// 자신이 사용할 Dao/Model/Service resurve 파일 번호를 항상 공유해주세용!
	private ResurveDao4 () {
		
	}
	
	private static ResurveDao4 dao = new ResurveDao4();
	
	public static ResurveDao4 getInstance() {
		return dao;
	}
	
	
	
}
