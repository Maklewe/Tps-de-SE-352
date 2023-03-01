<%@page import="java.util.List"%>
<%@page import="com.ipnet.university.dto.Departement"%>
<%@page import="com.ipnet.university.service.DepartementService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tous les departements</title>
<%@ include file="bootstrap.jsp"%>
</head>
<body class="bg-light">
	<%@ include file="navbar-departement.jsp"%>

	<div class="container p-5">
		<div class="card">
			<div class="card-body">
				<p class="text-center fs-2">Affichage des departements</p>
				<table class="table text-center">
					<thead>
						<tr>
							<th scope="col">ID</th>
							<th scope="col">Nom du departement</th>
							<th scope="col">Adresse WEB</th>
						</tr>
					</thead>
					<tbody>
						<%
							DepartementService departementService = new DepartementService();
							List<Departement> departement = departementService.getAllDepartement();
							for (Departement d : departement){
						%>
						<tr>
							<th scope="row"><%=d.getId()%></th>
							<td><%=d.getNom()%></td>
							<td><%=d.getAdresseWeb()%></td>
						</tr>
						<%
							}
						%>
					</tbody>
				</table>
			</div>
		</div>
	</div>

</body>
</html>