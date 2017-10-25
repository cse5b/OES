package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.ResultSet;
import com.mysql.jdbc.Statement;
import java.io.*;

import java.util.*;

import java.sql.*;

import javax.servlet.*;

import javax.servlet.http.*;

/**
 * Servlet implementation class ViewSub
 */
@WebServlet("/ViewSub")
public class ViewSub extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ServletResponse res;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewSub() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();

		  //Establish connection to MySQL database

		 String connectionURL = "jdbc:mysql://localhost:3306/subject";

		  Connection connection= null;

		  ResultSet rs;

		  response.setContentType("text/html");

		  List dataList = new ArrayList(); 

		  try {

		 // Load the database driver

		  Class.forName("com.mysql.jdbc.Driver");

		  // Get a Connection to the database

		  connection = DriverManager.getConnection(connectionURL, "root", "mysql"); 

		  //Select the data from the database

		  String sql = "select * from subject";

		  Statement s = (Statement) connection.createStatement();

		  s.executeQuery (sql);

		  rs = (ResultSet) s.getResultSet();

		  while (rs.next ()){

		  //Add records into data list

		  dataList.add(rs.getInt("subid"));

		  dataList.add(rs.getString("subname"));

		  }

		  rs.close ();

		  s.close ();

		  }catch(Exception e){

		  System.out.println("Exception is ;"+e);

		  }

		  request.setAttribute("data",dataList);

		  //Disptching request

		  String page = null;
		RequestDispatcher dispatcher = request.getRequestDispatcher(page);

		  if (dispatcher != null){

		  dispatcher.forward(request, response);

		  } 

		  }

	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
