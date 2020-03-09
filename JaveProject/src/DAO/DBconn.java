package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBconn {

	public static void main(String[] args) {
		System.out.println(DBconn.getConn());

	}

	public static Connection getConn()
    {
    String url="jdbc:mysql://localhost:3306/AI_Bartender";
    String user="root";
    String password="1234";
        Connection conn=null;
        
            try {
				Class.forName("com.mysql.cj.jdbc.Driver");
			} catch (ClassNotFoundException e) {
				System.out.println("no driver");
				e.printStackTrace();
			}
            try {
				conn=DriverManager.getConnection(url, user, password);
			} catch (SQLException e) {
				System.out.println("no connection");
				e.printStackTrace();
			}
         
        
        
        
        
        return conn;
    }
	
}
