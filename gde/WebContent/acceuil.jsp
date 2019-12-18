<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Acceuil</title>

<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
</head>
<body>
<%session.setMaxInactiveInterval(900); %>
<div id="page-wrapper">

			<!-- Nav -->
				<nav id="nav">
					<ul>
						<li class="current"><a href="acceuil.jsp">Acceuil</a></li>
						<li><a href="EmployeVue" >Liste Employes</a></li>
						<li><a href="employeeAdd.jsp">Ajouter Employer</a></li>
						<li><a href="http://localhost:8082/gde/Logout">Deconnexion</a></li>
					</ul>
				</nav>

			<!-- Banner -->
				<section id="banner">
					<div class="content">
						<h2>Welcome</h2>
						<h2>GROUPE CHIMIQUE DE GABES</h2>
						<p>Apllication de Gestion Des Employees</p>
						<p>Version 1.0</p>
					</div>
				</section>
</div>
</body>
</html>