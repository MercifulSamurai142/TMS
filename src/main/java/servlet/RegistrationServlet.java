package servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.CreateUser;
import bean.Credentials;
@SuppressWarnings("serial")
//coming from index.jsp
@WebServlet(urlPatterns = "/registrationservlet")
public class RegistrationServlet extends HttpServlet {
	private String name="",email="",phone="",type="",gender="";
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int res = 0;
		Credentials crds=new Credentials();
		CreateUser new_user=new CreateUser();
		RequestDispatcher rd=req.getRequestDispatcher("registration.jsp");
		
		name=req.getParameter("name");
		email=req.getParameter("email");
		phone=req.getParameter("phone");
		type=req.getParameter("type");
		gender=req.getParameter("gender");
		
		crds.setName(name);
		crds.setEmail(email);
		crds.setPhone(phone);
		crds.setType(type);
		crds.setGender(gender);
		
		try {
			res=new_user.newUser(crds);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			//e.printStackTrace();
		}
		if(res==0) {
			System.out.println("Not Success");
			//create and set a variable attribute called message with value success registration
			req.setAttribute("message", "Email Already Used");
		}
		else {
			try {
				res=new_user.newTable(crds);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
//			if(res==0) {
//				
//			}
			req.setAttribute("message", "User Registered Successfully");
			System.out.println(crds.getUid());
			
		}
		rd.forward(req, resp);
	}
}
