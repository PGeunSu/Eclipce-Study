package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO {
	
	private Connection conn; //자바와 데이터베이스를 연결해주는 라이브러리
	private PreparedStatement pstmt; //쿼리문 대기 및 설정
	private ResultSet rs; //결과값 받아오기
	
	public UserDAO() {
		try {
			String dbURL = "jdbc:mariadb://localhost:3306/bbs";
			String dbID = "root";
			String dbPassword = "123456";
			Class.forName("org.mariadb.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
		}catch (Exception e){
			e.printStackTrace();
		}
	}
	
	//로그인 영역
	public int login(String userID, String userPassword) {
		String sql = "select userPassword from user where userID = ?";
		try {
			pstmt = conn.prepareStatement(sql); // sql 쿼리문을 대기시킨다.
			pstmt.setString(1,userID); // 첫번째 '?'에 매개변수로 받아온 'userID'를 대입
			rs = pstmt.executeQuery(); // 쿼리를 실행한 결과를 rs에 저장
			if(rs.next()){
				if(rs.getString(1).equals(userPassword)) {
					return 1; // 로그인 성공
				}else {
					return 0; // 비밀번호 오류
				}
			}
			return -1; // 아이디 오류
		}catch (Exception e){
			e.printStackTrace();
		}
		return -2; // DB 오류
	}
	
	
	public int join(User user) {
		// User 클래스 인스턴스 생성하며 한 명의 회원 정보를 담는다
		String sql = "insert into user values(?, ?, ?, ?, ?)";
		try {
			pstmt = conn.prepareStatement(sql);
			//'1'번째 물음표에 사용자가 입력한 'UserID'를 세팅
			pstmt.setString(1, user.getUserID());
			pstmt.setString(2, user.getUserPassword());
			pstmt.setString(3, user.getUserName());
			pstmt.setString(4, user.getUserGender());
			pstmt.setString(5, user.getUserEmail());
			// 실행시키면서 결과값 e를 받아오는 효과가 있음
			return pstmt.executeUpdate();
		
		}catch(Exception e){
			e.printStackTrace();
		}
		return -1;
	}
}


























