<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>



<form class="box" action="Login" method="post">
  <% if(request.getAttribute("error") != null) {%>
    <div class="error">Une erreur a été rencontrée: <%=request.getAttribute("error")%></div>
<%}%>
  <h1>Login</h1>
  <input type="text" name="un" placeholder="Username">
  <input type="password" name="up" placeholder="Password">
  <input type="submit" name="" value="Login">
</form>
</body>
</html>