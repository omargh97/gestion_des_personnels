package gde;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




/**
 * Servlet implementation class EmployeAjout
 */
@WebServlet("/EmployeAjout")
public class EmployeAjout extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private EmployeImp emp;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmployeAjout() {
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
		
		
		
		Employe e1 =new Employe();
		e1.setNom(request.getParameter("nom"));
		e1.setPrenom(request.getParameter("prenom"));
		e1.setMatricule(Integer.parseInt(request.getParameter("matricule")));
		e1.setSexe(request.getParameter("sexe"));
		e1.setNote(Double.parseDouble(request.getParameter("note")));
		e1.setService(request.getParameter("service"));
		e1.setDate_eval(request.getParameter("date_eval"));
		e1.setHistorique_maladie(request.getParameter("historique_maladie"));
		
		
		emp.addEmploye(e1);
		
		response.sendRedirect("acceuil.jsp");
	}

}
