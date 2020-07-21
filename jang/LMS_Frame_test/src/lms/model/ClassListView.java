package lms.model;

import java.util.List;

public class ClassListView {

	private ClassListView() {}
	
	private static ClassListView classInfoView = new ClassListView();
	public static ClassListView getInstance() {
		return classInfoView;
	}

	//전체 강의 수
	private int classTotalCount;
	//현재 페이지번호
	private int currentPageNumber;
	//강의 리스트
	private List<ClassInfo> classList;
	//전체 페이지 개수
	private int pageTotalCount;
	//페이지 당 표현 회원 수(=endRow)
	private int classCntPerPage;
	//멤버리스트 시작 행
	private int startRow;
	private int endRow;
	
	
	
	public ClassListView(int classTotalCount, int currentPageNumber, List<ClassInfo> classList, int classCntPerPage,
			int startRow, int endRow) {
		super();
		this.classTotalCount = classTotalCount;
		this.currentPageNumber = currentPageNumber;
		this.classList = classList;
		this.classCntPerPage = classCntPerPage;
		this.startRow = startRow;
		this.endRow = endRow;
		calcTotalPageCount();
	}
	
	
	//pageTotalCount는 메서드를 통해 얻는다.
		private void calcTotalPageCount() {
			if(classTotalCount <=0) {
				pageTotalCount=0;
			} else {
				pageTotalCount = classTotalCount / classCntPerPage;
				if(classTotalCount % classCntPerPage > 0) {
					pageTotalCount++;
				}
			}
		}


		public static ClassListView getClassInfoView() {
			return classInfoView;
		}


		public static void setClassInfoView(ClassListView classInfoView) {
			ClassListView.classInfoView = classInfoView;
		}


		public int getClassTotalCount() {
			return classTotalCount;
		}


		public void setClassTotalCount(int classTotalCount) {
			this.classTotalCount = classTotalCount;
		}


		public int getCurrentPageNumber() {
			return currentPageNumber;
		}


		public void setCurrentPageNumber(int currentPageNumber) {
			this.currentPageNumber = currentPageNumber;
		}


		public List<ClassInfo> getClassList() {
			return classList;
		}


		public void setClassList(List<ClassInfo> classList) {
			this.classList = classList;
		}


		public int getPageTotalCount() {
			return pageTotalCount;
		}


		public void setPageTotalCount(int pageTotalCount) {
			this.pageTotalCount = pageTotalCount;
		}


		public int getClassCntPerPage() {
			return classCntPerPage;
		}


		public void setClassCntPerPage(int classCntPerPage) {
			this.classCntPerPage = classCntPerPage;
		}


		public int getStartRow() {
			return startRow;
		}


		public void setStartRow(int startRow) {
			this.startRow = startRow;
		}


		public int getEndRow() {
			return endRow;
		}


		public void setEndRow(int endRow) {
			this.endRow = endRow;
		}


		@Override
		public String toString() {
			return "ClassInfoView [classTotalCount=" + classTotalCount + ", currentPageNumber=" + currentPageNumber
					+ ", classList=" + classList + ", pageTotalCount=" + pageTotalCount + ", classCntPerPage="
					+ classCntPerPage + ", startRow=" + startRow + ", endRow=" + endRow + "]";
		}
	
	
	

	
	
}
