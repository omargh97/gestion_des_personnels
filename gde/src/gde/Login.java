package gde;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import gde.User;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
        User user =new User();
        user.setLogin(request.getParameter("un"));
        user.setPassword(request.getParameter("up"));
        if(user.getLogin().equals("admin") && user.getPassword().equals("admin")) {
        	session.setAttribute("user", user.getLogin());
        	RequestDispatcher rd;
			rd = getServletContext().getRequestDispatcher("/acceuil.jsp");
			if (rd == null)
				response.sendError(404);
			rd.forward(request, response);
        }
        else {
        	request.setAttribute("error", "Votre Login ou Mot de Passe est incorrecte !!!");
        	RequestDispatcher rd;
			rd = getServletContext().getRequestDispatcher("/login.jsp");
			if (rd == null)
				response.sendError(404);
			rd.forward(request, response);
        }
        
        
        
        
        
        
	}

}
