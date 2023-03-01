<%@page import="com.ipnet.university.dto.Cours"%>
<%@page import="com.ipnet.university.service.CoursService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Afficher un cours</title>
<%@ include file="bootstrap.jsp"%>
</head>
<body class="bg-light">
	<%@ include file="navbar-cours.jsp"%>

	<div class="container p-5">
		<div class="card">
			<div class="card-body">
				<p class="text-center fs-2">Afficher un cours</p>
				<table class="table text-center">
					<thead>
						<tr>
							<th scope="col">ID</th>
                            <th scope="col">Intitulé du cours</th>
                            <th scope="col">Date creation du cours</th>
						</tr>
					</thead>
					<tbody>
						<%
						int id = Integer.parseInt(request.getParameter("id"));
							CoursService coursService = new CoursService();
							Cours c = coursService.getCoursById(id);
						%>
						<tr>
							<th scope="row"><%=c.getId()%></th>
                            <td><%=c.getIntitule()%></td>
                            <td><%=c.getDateCreation()%></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>

</body>
</html>