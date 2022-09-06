package user;

//자바빈(java bean)
//자바빈은 자바로 작정된 컴포넌트, 간단히 이야기하면 메소드와 프로퍼티(field)로 구성된 java Class
//자바빈은 데이터를 읽어오거나 데이터를 저장하는 역할을 반복적으로함.
//getter는 값을 읽어오는 역할
//setter 메소드는 프로퍼티 필드값을 설정하는 역할
//데이터 베이스와 연동할 떄 자주 사용, 이렇게 구성된 파일은 DTO(Data Transfer Object)데이터 교환을 위한 객체



public class User {
	private String userID;
	private String userPassword;
	private String userName;
	private String userGender;
	private String userEmail;
	
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserGender() {
		return userGender;
	}
	public void setUserGender(String userGender) {
		this.userGender = userGender;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;

	}
	
	
}

