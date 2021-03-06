package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UpdateQuestion
 */
@WebServlet("/UpdateQuestion")
public class UpdateQuestion extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateQuestion() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String qno=request.getParameter("number");
		String eid=request.getParameter("sid");
		String qname=request.getParameter("qname");
		String opt1=request.getParameter("option1");
		String opt2=request.getParameter("option2");
		String opt3=request.getParameter("option3");
		String opt4=request.getParameter("option4");
		String ans=request.getParameter("answer");
		Connection c=DbConnection.connect();
		
		System.out.println(c);	
		if(c!=null){
			String update=" UPDATE question SET EID=? WHERE QNO`=?";
			try {
			System.out.println(update);	
			PreparedStatement st=c.prepareStatement(update);
			System.out.println(st);	
			
			st.setString(1,qno);
			st.setString(2, eid);
			st.setString(3,qname);
			st.setString(4,opt1);
			st.setString(5,opt2);
			st.setString(6,opt3);
			st.setString(7,opt4);
			st.setString(8,ans);
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
