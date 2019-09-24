<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>NUeva Tarea</title>
<link rel="stylesheet"
	href="https://bootswatch.com/4/united/bootstrap.min.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body>
	<div class="container">
		<div class="jumbotron">
			<h2>Nueva Tarea</h2>
		</div>

		<hr>
		<div class="row">
			<div class="col-md-12">
				<form:form action="save" method="post" modelAttribute="tarea">
					<table class="table">
						<thead>
							<tr>
								<td>Usuario:</td>
								<td><form:input class="form-control" path="usuario"
										placeHolder="Nombre de usuario" /></td>
							</tr>
							<tr>
								<td>Tarea:</td>
								<td><form:input class="form-control" path="titulo"
										placeHolder="Título de la tarea" /></td>
							</tr>
							<tr>
								<td>Descripción:</td>
								<td><form:input class="form-control" path="descripcion"
										placeHolder="Descripción de la tarea" /></td>
							</tr>
							<tr>
								<td>Tiempo estimado:</td>
								<td><form:input class="form-control" path="t_estimado"
										placeHolder="Horas estimadas" /></td>
							</tr>
							<tr>
								<td>Tiempo trabajado:</td>
								<td><form:input class="form-control" path="t_trabajado"
										placeHolder="Horas trabajadas" /></td>
							</tr>
							<tr>
								<td><input class="btn btn-success" type="submit"
									value="Guardar"></td>
								<td><a href="./" class="btn btn-info">Regresar</a></td>
							</tr>
						</thead>
					</table>
				</form:form>
			</div>
		</div>
	</div>

</body>
</html>