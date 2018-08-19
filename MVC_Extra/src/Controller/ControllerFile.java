package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.DAO;
import View.VO;
import View.VO1;

/**
 * Servlet implementation class ControllerFile
 */
@WebServlet("/mvc_extra")
public class ControllerFile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ControllerFile() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		String Operation=request.getParameter("Op");
		VO vo=new VO();
		DAO dao=new DAO();
		HttpSession session=request.getSession();
		if(Operation.equals("Insert"))
		{
			String firstname=request.getParameter("FirstName");
			String surname=request.getParameter("SurName");
			String email=request.getParameter("Email");
			String mobile=request.getParameter("Mobile");
			vo.setFirstName(firstname);
			vo.setSurName(surname);
			vo.setEmail(email);
			vo.setMobile(mobile);
			dao.insert(vo);
			response.sendRedirect("Search.jsp");
		}
		if(Operation.equals("Search"))
		{
			List<VO> ls=new ArrayList<VO>();
			String firstname=request.getParameter("FirstName");
			VO1 vo1=new VO1();
			vo.setFirstName(firstname);
			ls=dao.search(vo);
			PrintWriter out=response.getWriter();
			out.println(ls.get(0).getUser_id());
			vo.setUser_id(ls.get(0).getUser_id());
			Date date=new Date();
			vo1.setDate(date.toString());
			vo1.setVo(vo);
			dao.insertinsearch(vo1);
		}
		if(Operation.equals("Delete"))
		{
			int IdToDelete=Integer.parseInt(request.getParameter("id"));
			vo.setUser_id(IdToDelete);
			dao.delete(vo);
		}
		if(Operation.equals("View"))
		{
			List<VO> ls=dao.view();
			session.setAttribute("sessionlist",ls);
			response.sendRedirect("view.jsp");
		}
	}

}
