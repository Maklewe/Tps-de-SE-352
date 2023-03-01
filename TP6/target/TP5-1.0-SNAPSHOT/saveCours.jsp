<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ajout d'un cours'</title>
<%@ include file="bootstrap.jsp"%>
</head>
<body class="bg-light">
	<%@ include file="navbar-cours.jsp"%>

	<div class="container p-4">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-body">
						<p class="fs-3 text-center">Ajout d'un cours</p>
						<c:if test="${not empty success}">
							<p class="text-center text-success">${success}</p>
							<c:remove var="success" />
						</c:if>
						<c:if test="${not empty error}">
							<p class="text-center text-success">${error}</p>
							<c:remove var="error" />
						</c:if>
						<form action="save/cours" method="post">
							<div class="mb-3">
								<label class="form-label">Intitulé du cours</label>
								<input type="text" name="intitule" class="form-control">
							</div>
							<div class="mb-3">
								<label class="form-label">Date Creation</label>
								<input type="date" name="dateCreation" class="form-control">
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