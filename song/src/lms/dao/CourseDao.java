package lms.dao;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;

import lms.model.Course;

public class CourseDao {
	
	// 싱글톤 처리 완료
	// 자신이 사용할 Dao/Model/Service resurve 파일 번호를 항상 공유해주세용!
	private CourseDao () {
		
	}
	
	private static CourseDao dao = new CourseDao();
	
	public static CourseDao getInstance() {
		return dao;
	}

	public int insertCourse(Connection conn, Course course) {
		return 0;
	}

	public List<Course> selectCourseByName(Connection conn, String cName) {
		List<Course> list = new ArrayList<Course>();
		
		return list;
	}

	public List<Course> selectCourseByNameList(Connection conn, String cName) {
		// TODO Auto-generated method stub
		return null;
	}
	
	
	
}
