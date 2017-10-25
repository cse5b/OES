package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AddSubject
 */
@WebServlet("/AddSubject")
public class AddSubject extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddSubject() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Servlet#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String subid=request.getParameter("subid");
		String subname=request.getParameter("subname");
		
		Connection c=DBSubConnection.connect();
		System.out.println(c);	
		if(c!=null){
			String insert="insert into subject values(?,?)";
			try {
			System.out.println(insert);	
			PreparedStatement st=c.prepareStatement(insert);
			System.out.println(st);	
			
			st.setString(1,subid);
			st.setString(2, subname);
		int rs=st.executeUpdate();
		 if(rs>0) {
			 response.sendRedirect("html/success.jsp");
		 }
		 else {
			 response.sendRedirect("html/error.jsp");
			 }
		 }catch(SQLException e)
	{
		e.printStackTrace();
	}
	}
	else {
		PrintWriter out=response.getWriter();
		out.println("<h1>No Connection</h1>");
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
