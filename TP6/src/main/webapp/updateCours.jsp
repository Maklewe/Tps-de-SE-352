<%@page import="com.ipnet.university.CoursDao"%>
<%@page import="com.ipnet.university.Cours"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Modification d'un cours</title>
<%@ include file="bootstrap.jsp"%>
</head>
<body class="bg-light">
	<%@ include file="navbar-cours.jsp"%>

	<div class="container p-4">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-body">
						<p class="fs-3 text-center">Modifiez un cours</p>
						<%
							int id = Integer.parseInt(request.getParameter("id"));
							CoursDao coursDao = new CoursDao();
							Cours c = coursDao.getCoursById(id);
						%>
						<form action="update/cours" method="post">
							<div class="mb-3">
								<label class="form-label">Intitulé du cours</label>
								<input type="text" name="intitule" class="form-control" value="<%=c.getIntitule()%>">
							</div>
							<div class="mb-3">
								<label class="form-label">Date Creation</label>
								<input type="date" name="dateCreation" class="form-control" value="<%c.getDateCreation()%>">
							</div>
							<!-- hidden input -->
							<input type="hidden" name="id" value="<%= c.getId() %>">
							<button type="submit" class="btn btn-primary col-md-12">Modifier</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>