package servlet;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Credentials;

@SuppressWarnings("serial")
@WebServlet(urlPatterns = "/editservlet")
public class EditServlet extends HttpServlet {
	
//	private static Credentials crds;//set with credentials of logged in user
//	
//	public Credentials getCrds() {
//		return crds;
//	}
//	public void setCrds(Credentials crds) {
//		EditServlet.crds = crds;
//	}
	
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name="",number="",email="",gender="";
		Date date = null;
		try {
			name=req.getParameter("name");
			number= req.getParameter("number");
			email=req.getParameter("email");
			gender=req.getParameter("gender");
			date = Date.valueOf(req.getParameter("birthday"));
		} catch (Exception e) {
			
			//e.printStackTrace();
		}
		
		Credentials.getCrds().setDate(date);
		Credentials.getCrds().setEmail(email);
		Credentials.getCrds().setGender(gender);
		Credentials.getCrds().setName(name);
		Credentials.getCrds().setPhone(number);
		
		
		
		System.out.println(name+"\n"+number+"\n"+email+"\n"+gender+"\n"+date);
	}
}