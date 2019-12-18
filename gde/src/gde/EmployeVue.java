package gde;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import gde.Employe;


/**
 * Servlet implementation class EmployeVue
 */
@WebServlet("/EmployeVue")
public class EmployeVue extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmployeVue() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		EmployeImp emp=new EmployeImp();
		ArrayList<Employe> employees ;
		String action=request.getParameter("action");
		if (action!=null) {
			
			String mc=request.getParameter("motCle");
			employees = emp.EmployeParMC(mc);
			request.setAttribute("employees", employees);
			RequestDispatcher rd;
			rd = getServletContext().getRequestDispatcher("/employelist.jsp");
			if (rd == null)
				response.sendError(404);
			rd.forward(request, response);
			
		}
		else {
			try {
				employees = emp.listeEmploye();
				request.setAttribute("employees", employees);
				RequestDispatcher rd;
				rd = getServletContext().getRequestDispatcher("/employelist.jsp");
				if (rd == null)
					response.sendError(404);
				rd.forward(request, response);

			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
			
			/*
			 * response.setContentType("text/html"); PrintWriter out = response.getWriter();
			 * out.print(employees.get(0).getNom());
			 */
		}
		
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String action = request.getParameter("action");
		EmployeImp emp = new EmployeImp();
		ArrayList<Employe> employees;
		if (action.equals("Supprimer")) {
			emp.deleteEmploye(Integer.parseInt(request.getParameter("employeeId")));
			employees = emp.listeEmploye();
			request.setAttribute("employees", employees);
			RequestDispatcher rd;
			rd = getServletContext().getRequestDispatcher("/employelist.jsp");
			if (rd == null)
				response.sendError(404);
			rd.forward(request, response);

		}
		else if (action.equals("Details")) {
                Employe employee = new Employe();
              
                employee = emp.getEmploye(Integer.parseInt(request.getParameter("employeeId")));
                
                request.setAttribute("employe", employee);
                RequestDispatcher rd;
    			rd = getServletContext().getRequestDispatcher("/employeeDetail.jsp");
    			if (rd == null)
    				response.sendError(404);
    			rd.forward(request, response);
          
			
		}
		else {
			
                Employe employee = new Employe();
              
                employee = emp.getEmploye(Integer.parseInt(request.getParameter("employeeId")));
                
                request.setAttribute("emp", employee);
                RequestDispatcher rd;
    			rd = getServletContext().getRequestDispatcher("/employeedit.jsp");
    			if (rd == null)
    				response.sendError(404);
    			rd.forward(request, response);
          
		}
		 
}
}
