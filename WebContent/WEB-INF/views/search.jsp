<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Resultados de la Búsqueda</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<div class="container">

		<div class="jumbotron">
			<div class="row">
				<div class="col-md-10">
					<h2>Resultados de la Búsqueda</h2>
				</div>
				<div class="col-md-2">
					<a href="./" class="btn btn-info">Regresar</a>
				</div>
			</div>
		</div>

		<hr>
		<div class="row">
			<div class="col-md-12">
				<table class="table">
					<thead>
						<tr>
							<th>ID</th>
							<th>Usuario</th>
							<th>Tarea</th>
							<th>Descripción</th>
							<th>Tiempo Estimado</th>
							<th>Tiempo Trabajado</th>
							<th>Tiempo Restante</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${result}" var="tarea">
							<tr>
								<td>${tarea.id}</td>
								<td>${tarea.usuario}</td>
								<td>${tarea.titulo}</td>
								<td>${fn:substring(tarea.descripcion, 0, 15)}</td>
								<td>${tarea.t_estimado}</td>
								<td>${tarea.t_trabajado}</td>
								<td>${tarea.CalculateTimeResting(tarea.t_estimado, tarea.t_trabajado)}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	</div>
</body>
</html>