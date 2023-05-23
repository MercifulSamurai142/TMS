package servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Credentials;
import bean.CredsCheck;

@SuppressWarnings("serial")
//coming from index.jsp
@WebServlet(urlPatterns = "/loginservlet")
public class LoginServlet extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uid=req.getParameter("username");//"username" same as jsp file
		String pswrd=req.getParameter("password");
		int res=0;//Response true or false
		RequestDispatcher rd =req.getRequestDispatcher("index.jsp");
		Credentials crds=new Credentials();
		crds.setUid(uid);
		crds.setPassword(pswrd);
		System.out.println(uid+" "+pswrd);
		try {
			res=new CredsCheck().check(crds);//check and set state of current user
		} catch (SQLException e) {
			
			//e.printStackTrace();
		}
		if(res==0) {
			System.out.println("Not Success");
			//create and set a variable attribute called message with value success registration
			req.setAttribute("message", "Wrong username or password");
			rd.forward(req, resp);
			
		}
		
		else {
			//new EditServlet().setCrds(Credentials.getCrds());//successful login sends the credentials to profile page
			resp.sendRedirect("schedule.jsp");
		}
		
//		else {
//			System.out.println("Fail");
//			//create and set a variable attribute called message with value success fail
//			req.setAttribute("message", "Login Fail");
//		}
		//forward request
		
	}
}
