<%@page import="java.util.List"%>
<%@page import="com.ipnet.university.dto.Professeur"%>
<%@page import="com.ipnet.university.service.ProfesseurService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tous les professeurs</title>
<%@ include file="bootstrap.jsp"%>
</head>
<body class="bg-light">
	<%@ include file="navbar-professeur.jsp"%>

	<div class="container p-5">
		<div class="card">
			<div class="card-body">
				<p class="text-center fs-2">Affichage des professeurs</p>
				<table class="table text-center">
					<thead>
						<tr>
							<th scope="col">ID</th>
							<th scope="col">Nom</th>
							<th scope="col">Prenom</th>
							<th scope="col">Email</th>
                            <th scope="col">Grade</th>
						</tr>
					</thead>
					<tbody>
						<%
							ProfesseurService professeurService = new ProfesseurService();
							List<Professeur> professeur = professeurService.getAllProfesseur();
							for (Professeur p : professeur){
						%>
						<tr>
							<th scope="row"><%=p.getId()%></th>
							<td><%=p.getNom()%></td>
							<td><%=p.getPrenom()%></td>
							<td><%=p.getEmail()%></td>
							<td><%=p.getGrade()%></td>
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