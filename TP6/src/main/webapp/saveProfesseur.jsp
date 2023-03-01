<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ajout d'un professeur</title>
<%@ include file="bootstrap.jsp"%>
</head>
<body class="bg-light">
	<%@ include file="navbar-professeur.jsp"%>

	<div class="container p-4">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-body">
						<p class="fs-3 text-center">Ajout Professeur</p>
						<c:if test="${not empty success}">
							<p class="text-center text-success">${success}</p>
							<c:remove var="success" />
						</c:if>
						<c:if test="${not empty error}">
							<p class="text-center text-success">${error}</p>
							<c:remove var="error" />
						</c:if>
						<form action="save/professeur" method="post">
							<div class="mb-3">
								<label class="form-label">Nom</label>
								<input type="text" name="nom" class="form-control">
							</div>
							<div class="mb-3">
								<label class="form-label">Prenom</label>
								<input type="text" name="prenom" class="form-control">
							</div>
							<div class="mb-3">
								<label class="form-label">Email</label>
								<input type="text" name="email" class="form-control">
							</div>
							<div class="mb-3">
                                <label class="form-label">Grade</label>
                                <input type="text" name="grade" class="form-control">
                            </div>
							<button type="submit" class="btn btn-primary col-md-12">Enregistrer</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>