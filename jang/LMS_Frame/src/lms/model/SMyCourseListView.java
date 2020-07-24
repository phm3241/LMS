package lms.model;

import java.util.List;

//자신이 사용할 Dao/Model/Service resurve 파일 번호를 항상 공유해주세용!
public class SMyCourseListView {
	
	// 강의 목록 DTO
	private List<Course> courseList;
	// 강의 목록 DTO <이름으로 검색>
	List<MyCourse> selectCourseBysIdxList;
	

	public SMyCourseListView(List<Course> courseList, List<MyCourse> selectCourseBysIdxList) {
		super();
		this.courseList = courseList;
		this.selectCourseBysIdxList = selectCourseBysIdxList;
	}
	
	

	public List<Course> getCourseList() {
		return courseList;
	}

	public void setCourseList(List<Course> courseList) {
		this.courseList = courseList;
	}

	public List<MyCourse> getSelectCourseBysIdxList() {
		return selectCourseBysIdxList;
	}

	public void setSelectCourseBysIdxList(List<MyCourse> selectCourseBysIdxList) {
		this.selectCourseBysIdxList = selectCourseBysIdxList;
	}

	@Override
	public String toString() {
		return "SMyCourseListView [courseList=" + courseList + ", selectCourseBysIdxList=" + selectCourseBysIdxList
				+ "]";
	}



	
	
	
	
	
	
	

	
	
	
}
