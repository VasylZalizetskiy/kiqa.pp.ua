package servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import errors.ValidationException;
import services.UsersService;

/**
 * Servlet implementation class MainServlet
 */
@WebServlet("/admin")
public class MainServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private final UsersService usersService = UsersService.getInstance();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		//super.doGet(req, resp);
		
		//resp.setContentType("text/html;charset=UTF-8");
		try {
			req.setAttribute("users", usersService.getUsers(0, 100));
		} catch (ValidationException e) {
			e.printStackTrace();
		}
		
		RequestDispatcher view = req.getRequestDispatcher("/WEB-INF/jsp/admin_users_list.jsp");
        view.forward(req, resp);
	}    
  

}