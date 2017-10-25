/**
 * 
 */
package Controller;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 * @author SANDEEP_iMAC
 *
 */
public class DbConnection {
	public static Connection connect() {
		Connection con=null;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/question","root","mysql");
			System.out.println("Db : "+con);
			return con;
			}
		catch(Exception e) {
			throw new Error(e);
	}

	}
}
