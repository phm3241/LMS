package lms.model;


//자신이 사용할 Dao/Model/Service resurve 파일 번호를 항상 공유해주세용!
public class Admin {

	private int id;
	private String pw;
	
	public Admin() {}

	public Admin(int id, String pw) {
		this.id = id;
		this.pw = pw;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	@Override
	public String toString() {
		return "Admin [id=" + id + ", pw=" + pw + "]";
	}
	
	
	
}
