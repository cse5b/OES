package Controller;


import java.sql.*;

public class DBSubConnection {
	
	public static Connection connect() {
		Connection con=null;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/subject","root","mysql");
			System.out.println("Db : "+con);
			return con;
			}
		catch(Exception e) {
			throw new Error(e);
	}

	}

}
