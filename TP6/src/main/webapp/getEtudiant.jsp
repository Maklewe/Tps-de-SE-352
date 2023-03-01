<%@page import="com.ipnet.university.dto.Etudiant"%>
<%@page import="com.ipnet.university.service.EtudiantService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Afficher un etudiant</title>
<%@ include file="bootstrap.jsp"%>
</head>
<body class="bg-light">
	<%@ include file="navbar-etudiant.jsp"%>

	<div class="container p-5">
		<div class="card">
			<div class="card-body">
				<p class="text-center fs-2">Afficher un etudiant</p>
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
						int id = Integer.parseInt(request.getParameter("id"));
							EtudiantService etudiantService = new EtudiantService();
							Etudiant e = etudiantService.getEtudiantById(id);
						%>
						<tr>
							<th scope="row"><%=e.getId()%></th>
                            <td><%=e.getNom()%></td>
                            <td><%=e.getPrenom()%></td>
                            <td><%=e.getEmail()%></td>
                            <td><%=e.getAdresse()%></td>
                            <td><%=e.getTelephone()%></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>

</body>
</html>