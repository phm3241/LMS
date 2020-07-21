package lms.model;

import java.sql.Date;

public class ClassInfo {
	
	private int idx;
	private Date startTime;
	private String className;
	private String classRoom;
	
	// 디폴트 생성자
	public ClassInfo() {}
	
	// 생성자
	public ClassInfo(int idx, Date startTime, String className, String classRoom) {
		this.idx = idx;
		this.startTime = startTime;
		this.className = className;
		this.classRoom = classRoom;
	}

	// 게터 & 세터
	public int getIdx() {
		return idx;
	}


	public void setIdx(int idx) {
		this.idx = idx;
	}


	public Date getStartTime() {
		return startTime;
	}


	public void setStartTime(Date startTime) {
		this.startTime = startTime;
	}


	public String getClassName() {
		return className;
	}


	public void setClassName(String className) {
		this.className = className;
	}


	public String getClassRoom() {
		return classRoom;
	}


	public void setClassRoom(String classRoom) {
		this.classRoom = classRoom;
	}

	public java.util.Date getToDate() {
		return new java.util.Date(startTime.getTime());
	}
	
	

	@Override
	public String toString() {
		return "classInfo [idx=" + idx + ", startTime=" + startTime + ", className=" + className + ", classRoom="
				+ classRoom + "]";
	}
	
	

}
