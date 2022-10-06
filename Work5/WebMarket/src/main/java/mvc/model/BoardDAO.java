package mvc.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import mvc.database.DBConnection;

public class BoardDAO {
   
   private Connection conn = null;
   private PreparedStatement pstmt= null;
   private ResultSet rs = null;
   private ArrayList<BoardDTO> dtos = null;
   
private static BoardDAO instance;
   
   public BoardDAO() {
      
   }   
   public static BoardDAO getInstance() { //싱글톤 패턴으로 BoardDAO객체 하나만 만들어서 리턴.
      if(instance == null) {
         instance = new BoardDAO();
      }
      return instance;
   }
   
//board 테이블에 레코드 가져오는 메서드
//page : 게시물 페이지 숫자. limit : 페이지당 게시물 수 , items : 제목, 본문 글쓴이, text : 검색어   
   public ArrayList<BoardDTO> getBoardList(int page, int limit, String items, String text){
      
      int totalRecord = getListCount(items, text); //board 테이블의 전체 레코드수 
      int start =  (page - 1) * limit;  //선택 page이전까지의 레코드 개수
      int index = start + 1;         //선택 page 시작 레코드(게시물)
      
      String sql = "";
      dtos = new ArrayList<BoardDTO>();
      
      if(items == null && text == null) {            //파라미터로 넘어오는 검색기능이 두군데 모두 아무값이 없는 경우
         sql = "select * from board order by num desc";
      }
      else { 
         sql = "select * from board where " +items+ "like '%"+text+"%' order by num desc"; 
         //매개변수가 파라미터로 넘어오는 값으로 검색
      } 
      
      try {
         conn = DBConnection.getConnection(); //커넥션 얻기
         pstmt = conn.prepareStatement(sql, ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
         rs = pstmt.executeQuery();   //DB에 저장되어 있는 상품 모두 가져와 ResultSet에 담음
         
         
         while(rs.absolute(index)) { // 가령 6페이지 보고 있다가 1페이지를 클릭하면 - > 마이너스값이 되면 안됨.
            BoardDTO board = new BoardDTO();
            board.setNum(rs.getInt("num"));
            board.setId(rs.getString("id"));
            board.setName(rs.getString("name"));
            board.setSubject(rs.getString("subject"));
            board.setContent(rs.getString("content"));
            board.setRegist_day(rs.getString("regist_day"));
            board.setHit(rs.getInt("hit"));
            board.setIp(rs.getString("ip"));
            
            dtos.add(board);
            //인덱스가 데이터 건수보다 작다면
            if(index <  (start + limit) && index <= totalRecord) {
               index ++;
            }else {
               break;
            }
         }
   
         
      }catch (Exception e) {
          e.printStackTrace();
      } finally {
          // 사용이 완료되면 반드시 해제해줘야한다.
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
   
   private Connection getConnection() {
   // TODO Auto-generated method stub
   return null;
}
   //board 테이블에서 레코드 개수를 가져오는 메서드

   public int  getListCount(String items, String text) {
      
      int count = 0;
      String sql = "";
      
      //파라미터로 넘어오는 검색기능 두군데 아무 값도 없는 경우
      if(items == null && text == null) {            
         sql = "select count(*) from board";
      }
      else { 
         sql = "select count(*) from board where " +items+ "like '%"+text+"%' ";
         //파라미터로 넘어오는 값으로 검색
      } 
      try {
    	  conn = DBConnection.getConnection(); //커넥션 얻기
          pstmt = conn.prepareStatement(sql, ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
          rs = pstmt.executeQuery();   //DB에 저장되어 있는 상품 모두 가져와 ResultSet에 담음
          
         if(rs.next()) {
            count = rs.getInt(1);
         }
         
      } catch (Exception e) {
          e.printStackTrace();
      } finally {
          // 사용이 완료되면 반드시 해제해줘야한다.
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
   
      return count;
      
      
   }
   
 //member테이블에서 인증된 id의 사용자명 가져오기
	
 	public String getLoginName(String id) {
 		String name = null;
 		String sql = "select * from member where id = ?";
 	
 	try {
 		conn = DBConnection.getConnection();
 		pstmt = conn.prepareStatement(sql);
 		pstmt.setString(1, id);
 		
 		rs = pstmt.executeQuery();
 		
 		if(rs.next()) {
 			name = rs.getString("name");
 		}
 		}catch (Exception e) {
             e.printStackTrace();
         } finally {
             // 사용이 완료되면 반드시 해제해줘야한다.
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
 		
 		return name;
 		
 		
 	}
 	
 	//board테이블에 새로운 글을 작성하는 메소드
 	public void insertBoard(BoardDTO boardDTO) {
 		
 		try {
 	 			String sql = "insert into board values(?,?,?,?,?,?,?,?)";
 	 			conn = DBConnection.getConnection();
 	 			pstmt = conn.prepareStatement(sql);
 	 			pstmt.setInt(1,boardDTO.getNum());
 	 			pstmt.setString(2,boardDTO.getId());
 	 			pstmt.setString(3,boardDTO.getName());
 	 			pstmt.setString(4,boardDTO.getSubject());
 	 			pstmt.setString(5,boardDTO.getContent());
 	 			pstmt.setString(6,boardDTO.getRegist_day());
 	 			pstmt.setInt(7,boardDTO.getHit());
 	 			pstmt.setString(8,boardDTO.getIp());
 	 			
 	 			pstmt.executeUpdate();
 	 			
 	 			
 	 		
 	 		}catch (Exception e) {
 	             e.printStackTrace();
 	         } finally {
 	             // 사용이 완료되면 반드시 해제해줘야한다.
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
 	}
}   
   
   
   










