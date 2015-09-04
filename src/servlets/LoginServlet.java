package servlets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionActivationListener;

import objects.User;
import errors.AuthenticationExeption;
import services.UsersService;

import java.io.IOException;
import java.net.URLEncoder;

@WebServlet(value = "/login")
public class LoginServlet extends HttpServlet {

	private static final long serialVersionUID = 7828326412316643125L;

	private final UsersService usersService = UsersService.getInstance();
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String login = request.getParameter("session-login");
		String password = request.getParameter("session-password");
				
		try {
			User user = usersService.login(login, password);
			
			HttpSession s=request.getSession(); //ADDED!!! - create session
			s.setAttribute("user", user); //ADDED!!!
			
			response.sendRedirect(request.getContextPath() + "/users/"+ login);	

		} catch (AuthenticationExeption authEx) {
			authEx.printStackTrace();
			response.sendRedirect(request.getContextPath() + "?errorMsg=" + URLEncoder.encode(authEx.getMessage(), "UTF-8"));	
		}
    }

}
