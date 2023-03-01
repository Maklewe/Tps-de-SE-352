<%@page import="com.ipnet.university.ProfesseurDao"%>
<%@page import="com.ipnet.university.Professeur"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Modification d'un professeur</title>
<%@ include file="bootstrap.jsp"%>
</head>
<body class="bg-light">
	<%@ include file="navbar-professeur.jsp"%>

	<div class="container p-4">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-body">
						<p class="fs-3 text-center">Modifiez un professeur</p>
						<%
							int id = Integer.parseInt(request.getParameter("id"));
							ProfesseurDao professeurDao = new ProfesseurDao();
							Professeur p = professeurDao.getProfesseurById(id);
						%>
						<form action="update/professeur" method="post">
							<div class="mb-3">
								<label class="form-label">Nom</label>
								<input type="text" name="nom" class="form-control" value="<%=p.getNom()%>">
							</div>
							<div class="mb-3">
                                <label class="form-label">Prenom</label>
                                <input type="text" name="prenom" class="form-control" value="<%=p.getPrenom()%>">
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Email</label>
                                <input type="text" name="email" class="form-control" value="<%=p.getEmail()%>">
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Grade</label>
                                <input type="text" name="grade" class="form-control" value="<%=p.getGrade()%>">
                            </div>
							<!-- hidden input -->
							<input type="hidden" name="id" value="<%= p.getId() %>">
							<button type="submit" class="btn btn-primary col-md-12">Modifier</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>