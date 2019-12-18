<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="gde.Employe"%>
<%@page import="java.util.ArrayList"%>
<%@page import="gde.User"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List Employees</title>
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

				<div>
					<form action="EmployeVue" method="get">
						<table>
							<tr>
								<td>Mot Clé:</td>
								<td><input type="text" name="motCle" /></td>
								<td><input type="submit" name="action" value="chercher" />
								</td>
							</tr>
						</table>
					</form>
				</div>
				<h2>Employees</h2>
				<form action="EmployeVue" method="post" class="form-horizontal" role="form">

					<table class="table table-striped">
						<thead>
							<tr>
								<th scope="col"></th>
								<th scope="col">Nom</th>
								<th scope="col">Prenom</th>
								<th scope="col">Matricule</th>
								<th scope="col">Sexe</th>
								<th scope="col">Note</th>
								<th scope="col">Service</th>
								<th scope="col">Date evaluation</th>
								<th scope="col">Historique maladie</th>
							</tr>
						</thead>
						<tbody>
							<%
                    ArrayList<Employe> employees = (ArrayList<Employe>) request.getAttribute("employees");
                    
                    for(Employe i : employees) {%>
							<tr>
								<td><input type="radio" id="employeeId" name="employeeId"
									value="<%=i.getMatricule() %>"></td>
								<td><%=i.getNom() %></td>
								<td><%=i.getPrenom() %></td>
								<td><%=i.getMatricule() %></td>
								<td><%=i.getSexe()%></td>
								<td><%=i.getNote() %></td>
								<td><%=i.getService() %></td>
								<td><%=i.getDate_eval()%></td>
								<td><%=i.getHistorique_maladie() %></td>
							</tr>
							<%}%>
						</tbody>
					</table>
					<table>
						<tr>
							<td><p>
									<input class="btn btn-primary" type="submit" name="action"
										value="Supprimer">
								</p></td>
							<td><p>
									<input class="btn btn-primary" type="submit" name="action"
										value="Details">
								</p></td>
							<td><p>
									<input class="btn btn-default" type="submit" name="action"
										value="Editer">
								</p></td>
						</tr>
					</table>
				</form>
			</div>
		</section>
	</div>


</body>
</html>