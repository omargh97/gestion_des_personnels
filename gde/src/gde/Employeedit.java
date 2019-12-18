package gde;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Employeedit
 */
@WebServlet("/Employeedit")
public class Employeedit extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private EmployeImp emp;

       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Employeedit() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    /**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		emp=new EmployeImp();
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
		Employe e =new Employe();
		e.setNom(request.getParameter("nom"));
		e.setPrenom(request.getParameter("prenom"));
		e.setMatricule(Integer.parseInt(request.getParameter("matricule")));
		e.setSexe(request.getParameter("sexe"));
		e.setNote(Double.parseDouble(request.getParameter("note")));
		e.setService(request.getParameter("service"));
		e.setDate_eval(request.getParameter("date_eval"));
		e.setHistorique_maladie(request.getParameter("historique_maladie"));
		
		
		emp.updateEmploye(e);
		response.sendRedirect("acceuil.jsp");
	}

}
