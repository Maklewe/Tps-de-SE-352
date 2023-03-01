<%@page import="com.ipnet.university.dto.Departement"%>
<%@page import="com.ipnet.university.service.DepartementService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Afficher un departement</title>
<%@ include file="bootstrap.jsp"%>
</head>
<body class="bg-light">
	<%@ include file="navbar-departement.jsp"%>

	<div class="container p-5">
		<div class="card">
			<div class="card-body">
				<p class="text-center fs-2">Afficher un departement</p>
				<table class="table text-center">
					<thead>
						<tr>
							<th scope="col">ID</th>
                            <th scope="col">Nom du departement</th>
                            <th scope="col">Adresse Web</th>
						</tr>
					</thead>
					<tbody>
						<%
						int id = Integer.parseInt(request.getParameter("id"));
							DepartementService departementService = new DepartementService();
							Departement d = departementService.getDepartementById(id);
						%>
						<tr>
							<th scope="row"><%=c.getId()%></th>
                            <td><%=c.getNom()%></td>
                            <td><%=c.getAdresseWeb()%></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>

</body>
</html>