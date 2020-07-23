package lms.model;

import java.util.List;

//자신이 사용할 Dao/Model/Service resurve 파일 번호를 항상 공유해주세용!
public class CourseListView {
	
	// 강의 목록 DTO
	private List<Course> courseList;
	// 강의 목록 DTO <이름으로 검색>
	private List<Course> selectCourseByNameList;
	
	
	public CourseListView(List<Course> courseList, List<Course> selectCourseByNameList) {
		this.courseList = courseList;
		this.selectCourseByNameList = selectCourseByNameList;
	}


	public List<Course> getCourseList() {
		return courseList;
	}


	public void setCourseList(List<Course> courseList) {
		this.courseList = courseList;
	}


	public List<Course> getSelectCourseByNameList() {
		return selectCourseByNameList;
	}


	public void setSelectCourseByNameList(List<Course> selectCourseByNameList) {
		this.selectCourseByNameList = selectCourseByNameList;
	}


	@Override
	public String toString() {
		return "CourseListView [courseList=" + courseList + ", selectCourseByNameList=" + selectCourseByNameList + "]";
	}


	
	
	
}
