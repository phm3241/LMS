package lms.model;

public class MyCourse {

	private int sIdx;
	private int cIdx;
	
	public MyCourse() {}

	
	public MyCourse(int sIdx, int cIdx) {
		super();
		this.sIdx = sIdx;
		this.cIdx = cIdx;
	}


	public int getsIdx() {
		return sIdx;
	}


	public void setsIdx(int sIdx) {
		this.sIdx = sIdx;
	}


	public int getcIdx() {
		return cIdx;
	}


	public void setcIdx(int cIdx) {
		this.cIdx = cIdx;
	}


	@Override
	public String toString() {
		return "MyCourse [sIdx=" + sIdx + ", cIdx=" + cIdx + "]";
	}
	
	
	
	
	
}
