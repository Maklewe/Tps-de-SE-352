<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Suppression d'un professeur</title>
<%@ include file="bootstrap.jsp"%>
</head>
<body class="bg-light">
	<%@ include file="navbar-professeur.jsp"%>

	<div class="container p-4">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-body">
						<p class="fs-3 text-center">Selectionnez l'ID du professeur</p>
						<form action="delete/professeur" method="post">
							<div class="mb-3">
								<label class="form-label">Selectionnez l'ID du professeur</label>
								<input type="number" name="id" class="form-control">
							</div>
							<button type="submit" class="btn btn-primary col-md-12">Supprimez le professeur</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>