package lms.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import lms.model.Student;
import lms.model.TempletModel;

public class StudentDao {

	// 싱글톤 처리 완료
	// 자신이 사용할 Dao/Model/Service resurve 파일 번호를 항상 공유해주세용!
	// 학생 DAO - 담당 : 김승연
	// 작업 일시 : 2020. 07. 21
	private StudentDao() {

	}

	private static StudentDao dao = new StudentDao();

	public static StudentDao getInstance() {
		return dao;
	}

	// 학생 정보 수정 메서드
	// update 쿼리문이 성공적으로 싱행되면
	// int값을 반환해 result 값에 저장하여 반환

	// 학생 정보 등록
	public int insertStudent(Connection conn, Student student) throws SQLException {

		int result = 0;

		// sql 쿼리문을 처리할 statement를 설정합니다.
		PreparedStatement pstmt = null;

		// 처리하고 싶은 sql 쿼리문과 조건을 설정합니다.
		// 이런 테이블이 있다는 가정하에 작성한 spl문
		String sql = "INSERT INTO student (sIdx, pw, name, tel, email, major, grade) "
				+ "	VALUES(?, ?, ?, ?, ?, ?, ?);";

		try {

			// sql문을 실행합니다.
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, student.getSidx());
			pstmt.setString(2, student.getPw());
			pstmt.setString(3, student.getName());
			pstmt.setString(4, student.getTel());
			pstmt.setString(5, student.getEmail());
			pstmt.setString(6, student.getMajor());
			pstmt.setInt(7, student.getGrade());

			result = pstmt.executeUpdate();
			

		} finally {
			if (pstmt != null) {
				pstmt.close();
			}
		}

		return result;

	}

	// 학생 내정보 수정
	public int editStudent(Connection conn, Student student) throws SQLException {

		int result = 0;

		PreparedStatement pstmt = null;

		// 수정사항 : 전화번호/이메일
		String sql = "update student set tel=?, email=? where sidx=?";

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, student.getTel());
			pstmt.setString(2, student.getEmail());
			pstmt.setInt(3, student.getSidx());

			result = pstmt.executeUpdate();

		} finally {
			if (pstmt != null) {
				pstmt.close();
			}
		}

		return result;

	}

}
