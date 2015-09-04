package servlets;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import objects.User;
import services.UsersService;

import java.io.IOException;


@WebServlet(value = "/validate")
public class ValidateRegisterFormServlet extends HttpServlet {

	private static final long serialVersionUID = 7828326412316643125L;

	private final UsersService usersService = UsersService.getInstance();

    

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String login = request.getParameter("login");
		//String password = request.getParameter("password");
		
		    
			User user = usersService.getUserByLogin(login);

			 if(user != null) {
				 response.getWriter().println("{ \"exists\" : true }");		
			 }
			 else {
				 response.getWriter().println("{ \"exists\" : false }");
			 }
		
    }



}
