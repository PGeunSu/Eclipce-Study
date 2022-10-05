package mvc.database;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.DriverManager;

public class DBConnection {
   
   public static Connection getConnection()throws SQLException, ClassNotFoundException  {      

      Connection conn = null;      
   
      String url = "jdbc:mysql://localhost:3307/WebMarketDB";
      String user = "root";
      String password = "1234";

      try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		 conn = DriverManager.getConnection(url, user, password); 
	  } catch (Exception e) {
			System.out.print("데이터베이스 연결되지 않았습니다.");
			e.printStackTrace();
	    }

      return conn;
   }   
}