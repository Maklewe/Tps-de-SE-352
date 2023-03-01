<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Modification d'un departement par ID</title>
<%@ include file="bootstrap.jsp"%>
</head>
<body>
		<%@ include file="navbar-departement.jsp"%>

		<div class="container p-4">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-body">
						<p class="fs-3 text-center">Selectionnez l'ID du departement</p>
						<form action="update/departementbyid" method="post">
							<div class="mb-3">
								<label class="form-label">Departement ID</label>
								<input type="number" name="id" class="form-control">
							</div>
							<button type="submit" class="btn btn-primary col-md-12">Continuez avec l'ID</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>