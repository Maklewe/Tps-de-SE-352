<%@page import="com.ipnet.university.EtudiantDao"%>
<%@page import="com.ipnet.university.Etudiant"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Modification d'un etudiant</title>
<%@ include file="bootstrap.jsp"%>
</head>
<body class="bg-light">
	<%@ include file="navbar-etudiant.jsp"%>

	<div class="container p-4">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-body">
						<p class="fs-3 text-center">Modifiez un etudiant</p>
						<%
							int id = Integer.parseInt(request.getParameter("id"));
							EtudiantDao etudiantDao = new EtudiantDao();
							Etudiant e = etudiantDao.getEtudiantById(id);
						%>
						<form action="update/etudiant" method="post">
							<div class="mb-3">
								<label class="form-label">Nom</label>
								<input type="text" name="nom" class="form-control" value="<%=e.getNom()%>">
							</div>
							<div class="mb-3">
                                <label class="form-label">Prenom</label>
                                <input type="text" name="prenom" class="form-control" value="<%=e.getPrenom()%>">
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Email</label>
                                <input type="text" name="email" class="form-control" value="<%=e.getEmail()%>">
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Adresse</label>
                                <input type="text" name="adresse" class="form-control" value="<%=e.getAdresse()%>">
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Telephone</label>
                                <input type="text" name="telephone" class="form-control" value="<%=e.getTelephone()%>">
                            </div>
							<!-- hidden input -->
							<input type="hidden" name="id" value="<%= e.getId() %>">
							<button type="submit" class="btn btn-primary col-md-12">Modifier</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>