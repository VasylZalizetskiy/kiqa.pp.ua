package servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import objects.User;
import services.UsersService;

/**
 * 
 */
@WebServlet("/users/*")
public class UserPageServlet extends HttpServlet {
	private static final long serialVersionUID = 3203753443583716314L;
	
	
	private final UsersService usersService = UsersService.getInstance();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				
		//String login = request.getPathInfo().replace("/", ""); // ���������� ������ ��� "/"
		String login = request.getPathInfo(); // ���������� ����"/login"
		login=login.substring(1, login.length()); // ���������� ��������� ��� "/"
		
            User user = usersService.getUserByLogin(login);
			request.setAttribute("user", user);
			
			HttpSession session = request.getSession(false);//ADDED!!! - �������� ������������� ������, null, ���� ���
									
			//if(user != null) {
			if(session != null && session.getAttribute("user") != null) { //ADDED!!!
				User curUser = (User) session.getAttribute("user");
                //request.setAttribute("isMe", true);
                request.setAttribute("isMe", login.equals(curUser.getLogin()));
			} else {
				request.setAttribute("isMe", false);
				
			}
			
					
	        RequestDispatcher view = request.getRequestDispatcher("/WEB-INF/jsp/user_page.jsp");
	        view.forward(request, response);
        
			}

	

}
