<%@page import="com.ipnet.university.DepartementDao"%>
<%@page import="com.ipnet.university.Departement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Modification d'un departement</title>
<%@ include file="bootstrap.jsp"%>
</head>
<body class="bg-light">
	<%@ include file="navbar-departement.jsp"%>

	<div class="container p-4">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-body">
						<p class="fs-3 text-center">Modifiez un departement</p>
						<%
							int id = Integer.parseInt(request.getParameter("id"));
							DepartementDao departementDao = new DepartementDao();
							Departement d = departementDao.getDepartementById(id);
						%>
						<form action="update/departement" method="post">
							<div class="mb-3">
								<label class="form-label">Nom</label>
								<input type="text" name="nom" class="form-control" value="<%=d.getNom()%>">
							</div>
							<div class="mb-3">
								<label class="form-label">Adresse Web</label>
								<input type="text" name="adresseWeb" class="form-control" value="<%=d.getAdresseWeb()%>">
							</div>
							<!-- hidden input -->
							<input type="hidden" name="id" value="<%= d.getId() %>">
							<button type="submit" class="btn btn-primary col-md-12">Modifier</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>