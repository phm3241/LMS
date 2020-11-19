package lms.model;

import java.util.List;

//자신이 사용할 Dao/Model/Service reserve 파일 번호를 항상 공유해주세용!
public class CourseListView {
	
	private List<Course> courseList;

	
	public CourseListView(List<Course> courseList) {
		this.courseList = courseList;
	}

	
	public List<Course> getCourseList() {
		return courseList;
	}

	
	public void setCourseList(List<Course> courseList) {
		this.courseList = courseList;
	}

	
	@Override
	public String toString() {
		return "CourseListView [courseList=" + courseList + "]";
	}
	
	
}
