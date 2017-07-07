import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 * Servlet implementation class TheBig3
 */
@WebServlet("/TheBig3")
public class TheBig3 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TheBig3() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		// TODO Auto-generated method stub
		String username = request.getParameter("username").trim();
		String password = request.getParameter("password").trim();
		
		System.out.println(username);
		System.out.println(password);
		try{
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			String connectionUrl = "jdbc:sqlserver://10.0.5.72:1433;" +  
					   "databaseName=AdventureWorks2014;user=internuser;password=$Int3rns2017;";  
			Connection con = DriverManager.getConnection(connectionUrl); 

		Statement stmt=con.createStatement();
		ResultSet rs= stmt.executeQuery("INSERT INTO dbo.TB3Users (Name, Password) VALUES ( '"+username+"' , '"+password+"');");
		
		con.close();		
		
	
			
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		
		
		response.setContentType("text/plain");
		response.getWriter().write("Hey");
	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
