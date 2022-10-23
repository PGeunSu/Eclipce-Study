package reply;

public class Reply {

	private int id;
	private int replyID;
	private String replyContent;
	private String userID;
	private int replyAvailable;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getReplyID() {
		return replyID;
	}
	public void setReplyID(int replyID) {
		this.replyID = replyID;
	}
	public String getReplyContent() {
		return replyContent;
	}
	public void setReplyContent(String replyContent) {
		this.replyContent = replyContent;
	}
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public int getReplyAvailable() {
		return replyAvailable;
	}
	public void setReplyAvailable(int replyAvailable) {
		this.replyAvailable = replyAvailable;
	}
	
	
}
