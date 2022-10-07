package mvc.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import mvc.database.DBConnection;

public class BoardDAO {

	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	private ArrayList<BoardDTO> dtos = null;
	

private static BoardDAO instance;

	public BoardDAO() {
		
	}
	
	public static BoardDAO getInstance() {
		
		if(instance == null) {
			instance = new BoardDAO();
		}
		return instance;
	}
	
	public ArrayList<BoardDTO> getBoardList(int page, int limit, String items, String text){
		
		int totalRecord = getListCount(items, text);
		int start = (page - 1) * limit;
		int index = start + 1;
		
		String sql = "";
		dtos = new ArrayList<BoardDTO>();
		
		if(items == null && text == null) {
			sql ="select * from board order by num desc";
		}else {
			sql ="select * from board where " +items + "like '%" + text + "%' order by num desc";
		}
		
		try {
			
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement(sql, ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
			rs = pstmt.executeQuery();
			
			while(rs.absolute(index)) {
				BoardDTO board = new BoardDTO();
				board.setNum(rs.getInt("num"));
				board.setName(rs.getString("name"));
				board.setSubject(rs.getString("subject"));
				board.setContent(rs.getString("content"));
				board.setRegist_day(rs.getString("regist_day"));
				board.setHit(rs.getInt("hit"));
				board.setIp(rs.getString("ip"));
				
				dtos.add(board);
				if(index < (start + limit) && index <= totalRecord) {
					index ++;
				}else {
					break;
				}
				
			}
		}catch (Exception e) {
	          e.printStackTrace();
	      } finally {
	          if( rs != null ) {
	              try {
	                  rs.close(); 
	              } catch (SQLException e) {
	                  e.printStackTrace();
	              }
	          }
	          if( pstmt != null ) {
	              try {
	                  pstmt.close(); 
	              } catch (SQLException e) {
	                  e.printStackTrace();
	              }
	          }
	          if( conn != null ) {
	              try {
	                  conn.close(); 
	              } catch (SQLException e) {
	                  e.printStackTrace();
	              }
	          }
	      }
	      
	      return dtos;
		
	}
	
	private Connection getConnc
	
}
