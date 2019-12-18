<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="gde.Employe"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Employee</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
</head>
<body>
	<%session.setMaxInactiveInterval(900); %>
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
				<form action="http://localhost:8082/gde/Employeedit" method="post"
					class="form-horizontal" role="form">
					<h2 class="form-signin-heading col-lg-offset-5">Employee</h2>
					<div class="col-lg-4 col-lg-offset-4">
						<table>
							<%
								Employe employee = (Employe) request.getAttribute("emp");
							%>


							<tr>
								<td>Nom:</td>
								<td><input type="text" name="nom" placeholder="nom"
									value=<%=employee.getNom()%> /></td>
							</tr>

							<tr>
								<td>Prenom:</td>
								<td><input type="text" name="prenom"  value=<%=employee.getPrenom()%> /></td>
							</tr>

							<tr>
								<td>Matricule:</td>
								<td><input type="text" name="matricule"
									 value=<%=employee.getMatricule()%>  /></td>
							</tr>

							<tr>
								<td>Sexe:</td>
								<td><input type="text" name="sexe" value=<%=employee.getSexe()%> /></td>
							</tr>

							<tr>
								<td>Note:</td>
								<td><input type="text" name="note" value=<%=employee.getNote()%> /></td>
							</tr>

							<tr>
								<td>Service:</td>
								<td><input type="text" name="service" value=<%=employee.getService()%> /></td>
							</tr>

							<tr>
								<td>Date_eval:</td>
								<td><input type="text" name="date_eval"
									value=<%=employee.getDate_eval()%> /></td>
							</tr>

							<tr>
								<td>Historique_maladie:</td>
								<td><input type="text" name="historique_maladie"
										value=<%=employee.getHistorique_maladie()%> /></td>
							</tr>

							<tr>
								<td><input type="submit" name="action" value="Edit" /></td>
								<td><input type="reset" name="reset" value="reset" /></td>
							</tr>

						</table>
					</div>
				</form>
			</div>
		</section>
	</div>
</body>
</html>