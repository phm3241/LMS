package lms.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import lms.model.ClassInfo;

public class ClassDAO {

	// 싱글톤 처리 완료
	// 자신이 사용할 Dao/Model/Service resurve 파일 번호를 항상 공유해주세용!
	private ClassDAO() {

	}

	private static ClassDAO dao = new ClassDAO();

	public static ClassDAO getInstance() {
		return dao;
	}

	public int selectTotalCount(Connection conn) throws SQLException {
		int resultCnt = 0;

		Statement stmt = null;
		ResultSet rs = null;

		try {
			stmt = conn.createStatement();
			String sql = "select count(*) from project.member";
			rs = stmt.executeQuery(sql);

			// 한 행만 가져와야할 때
			if (rs.next()) {
				resultCnt = rs.getInt(1);
			}
		} finally {
			if (rs != null) {
				rs.close();
			}
			if (stmt != null) {
				stmt.close();
			}
		}
		System.out.println("전체 강의 수 : " + resultCnt);

		return resultCnt;
	}

	public List<ClassInfo> selectMemberList(Connection conn, int startRow, int endRow) {
List<Member> memberList = new ArrayList<Member>();
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			String sql = "select * from project.member limit ?,?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				Member member = new Member(rs.getInt("idx"), 
										rs.getString("uid"), 
										rs.getString("upw"), 
										rs.getString("uname"), 
										rs.getString("uphoto"), 
										rs.getDate("regdate"));
				
				memberList.add(member);
			}
			
		} finally {
//			if(rs!=null) {
//				rs.close();
//			}
			if(pstmt!=null) {
				pstmt.close();
			}
			
		}
		
		return memberList;
	}

	public ClassInfo selectByIdx(Connection conn, int idx) throws SQLException {
		
		int resultCnt = 0;
		ClassInfo classInfo=null;
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
		
			String sql = "select * from  where idx=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, idx);
		
			rs = pstmt.executeQuery();

			while(rs.next()) {
				classInfo = new ClassInfo(idx, startTime, className, classRoom);
				
		} finally {
			if(pstmt!=null) {
				pstmt.close();
			}
			if(rs!=null) {
				rs.close();
			}
			
		}
		System.out.println(member);
		
		return member;
	}

}
