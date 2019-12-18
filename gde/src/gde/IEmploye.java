package gde;

import java.util.ArrayList;

import gde.Employe;

public interface IEmploye {

	public void addEmploye(Employe e);
	public ArrayList<Employe> listeEmploye();
	public ArrayList<Employe> EmployeParMC(String mot_cle);
	public Employe getEmploye(int mat);
	public void updateEmploye(Employe e);
	public void deleteEmploye(int mat);
}
