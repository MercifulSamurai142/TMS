package servlet;

import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.ScheduleDetail;
import bean.ScheduleGetSet;

@SuppressWarnings("serial")
@WebServlet(urlPatterns = "/dateservlet")
public class ScheduleDateServlet extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd=request.getRequestDispatcher("schedule.jsp");
		Date dt=Date.valueOf(request.getParameter("selectdate"));
		//System.out.println(dt);
		ScheduleGetSet ob=new ScheduleGetSet();
		ArrayList<ScheduleDetail> list = null;
		try {
			list=ob.getDetail(dt);
			for(ScheduleDetail ob1:list) {
				System.out.println(ob1.getPriority()+" "+ob1.getPurpose()+" "+ob1.getTime());
				switch(ob1.getTime()) {
				case 0:
					request.setAttribute("purpose0", ob1.getPurpose());
					request.setAttribute("priority0", ob1.getPriority());
					break;
				case 1:
					request.setAttribute("purpose1", ob1.getPurpose());
					request.setAttribute("priority1", ob1.getPriority());
					break;
				case 2:
					request.setAttribute("purpose2", ob1.getPurpose());
					request.setAttribute("priority2", ob1.getPriority());
					break;
				case 3:
					request.setAttribute("purpose3", ob1.getPurpose());
					request.setAttribute("priority3", ob1.getPriority());
					break;
				case 4:
					request.setAttribute("purpose4", ob1.getPurpose());
					request.setAttribute("priority4", ob1.getPriority());
					break;
				case 5:
					request.setAttribute("purpose5", ob1.getPurpose());
					request.setAttribute("priority5", ob1.getPriority());
					break;
				case 6:
					request.setAttribute("purpose6", ob1.getPurpose());
					request.setAttribute("priority6", ob1.getPriority());
					break;
				}
			}
		} catch (SQLException e) {
			//e.printStackTrace();
		}
		
		request.setAttribute("date", String.valueOf(dt));
		rd.forward(request, response);
		
	}
}
