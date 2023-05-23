package servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.ScheduleGetSet;

@SuppressWarnings("serial")
@WebServlet(urlPatterns = "/detailservlet")
public class ScheduleDetailServlet extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher rd=req.getRequestDispatcher("schedule.jsp");
		int slot=Integer.valueOf(req.getParameter("slotvalue"));
		String purpose=req.getParameter("purpose");
		String priority=req.getParameter("priority");
		ScheduleGetSet ob=new ScheduleGetSet();
		try {
			ob.setDetail(slot, purpose, priority);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		rd.include(req, resp);
	}
}
