<%@page import="java.util.List"%>
<%@page import="com.ipnet.university.dto.Etudiant"%>
<%@page import="com.ipnet.university.service.EtudiantService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tous les étudiants</title>
<%@ include file="bootstrap.jsp"%>
</head>
<body class="bg-light">
	<%@ include file="navbar-etudiant.jsp"%>

	<div class="container p-5">
		<div class="card">
			<div class="card-body">
				<p class="text-center fs-2">Affichage des étudiants</p>
				<table class="table text-center">
					<thead>
						<tr>
							<th scope="col">ID</th>
							<th scope="col">Nom</th>
							<th scope="col">Prenom</th>
							<th scope="col">Email</th>
                            <th scope="col">Adresse</th>
                            <th scope="col">Telephone</th>
						</tr>
					</thead>
					<tbody>
						<%
							EtudiantService etudiantService = new EtudiantService();
							List<Etudiant> etudiant = etudiantService.getAllEtudiant();
							for (Etudiant e : etudiant){
						%>
						<tr>
							<th scope="row"><%=e.getId()%></th>
							<td><%=e.getNom()%></td>
							<td><%=e.getPrenom()%></td>
							<td><%=e.getEmail()%></td>
							<td><%=e.getAdresse()%></td>
							<td><%=e.getTelephone()%></td>
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