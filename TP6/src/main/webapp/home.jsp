<%@page import="javax.servlet.annotation.WebServlet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GESTION ECOLE</title>
<%@ include file="bootstrap.jsp"%>
</head>
<body class="bg-light">

	<%@ include file="navbar.jsp"%>

	<div class="container p-5 text-center col-md-6 offset-md-3">
		<div class="card">
			<div class="card-body">
				<p class="text-center fs-3">BIENVENUE sur GESTION ECOLE</p>
				<table class="table">
					<thead>
						<tr>
							<th scope="col">Faites une sélection</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>
								<a class="btn btn-primary col-md-4" href="professeur.jsp" role="button">Professeur</a>
							</td>
						</tr>
						<tr>
						<tr>
							<td>
								<a class="btn btn-primary col-md-4" href="etudiant.jsp" role="button">Etudiant</a>
							</td>
						</tr>
						<tr>
							<td>
								<a class="btn btn-primary col-md-4" href="cours.jsp" role="button">Cours</a>
							</td>
						</tr>
						<tr>
							<td>
								<a class="btn btn-primary col-md-4" href="departement.jsp" role="button">Departement</a>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	

</body>
</html>