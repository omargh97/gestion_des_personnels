<%@page import="gde.Employe"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Details Employe</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
</head>
<body>
	<%
		session.setMaxInactiveInterval(900);
	%>
	<div id="page-wrapper">

		<!-- Nav -->
		<nav id="nav">
			<ul>
				<li class="current"><a href="acceuil.jsp">Acceuil</a></li>
				<li><a href="EmployeVue">Liste Employes</a></li>
				<li><a href="employeeAdd.jsp">Ajouter Employer</a></li>
				<li><a href="http://localhost:8082/gde/Logout">Deconnexion</a></li>
			</ul>
		</nav>

		<!-- Banner -->
		<section id="banner">
			<div class="content">
				<%
					Employe employee = (Employe) request.getAttribute("employe");
				%>
				<form action="" method="post" class="form-horizontal" role="form">
					<h2 class="form-signin-heading col-lg-offset-5">Employee</h2>
					<div class="col-lg-4 col-lg-offset-4">
					<h3>Nom</h3>
						<p>
							<%out.print(employee.getNom());%>

						</p>
						<h3>Prenom</h3>
						<p>
							<%out.print(employee.getPrenom());%>

						</p>
						<h3>Matricule</h3>
						<p>
							<%out.print(employee.getMatricule());%>

						</p>
						<h3>Sexe</h3>
						<p>
							<%out.print(employee.getSexe());%>
							
						</p>
						<h3>Note</h3>
						<p>
							<%out.print(employee.getNote());%>

						</p>
						<h3>Service</h3>
						<p>
							<%out.print(employee.getService());%>

						</p>
						<h3>Date evaluation</h3>
						<p>
							<%out.print(employee.getDate_eval());%>

						</p>
						<h3>Historique de maladie</h3>
						<p>
							<%out.print(employee.getHistorique_maladie());%>

						</p>
						<h3>Remarque</h3>
						<p>
						<textarea name="remarque" type="text" placeholder="Remarque" rows="3" ></textarea>
							<input class="btn btn-primary" 
								type="submit" value="Enregistrer">
						</p>

					</div>
				</form>
			</div>
		</section>
	</div>
</body>
</html>