<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Administrador de Tareas</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<div class="jumbotron">
			<h2>Administrador de Tareas</h2>
			<div class="row">
				<div class="col-md-10">
					<form method="get" action="search">
						<div class="col-md-10">
							<input class="form-control" type="text" name="keyword" />
						</div>
						<div class="col-md-2">
							<button class="btn btn-info" type="submit">
								Buscar <i class="fa fa-search"></i>
							</button>
						</div>
					</form>
				</div>
				<div class="col-md-2">
					<a class="btn btn-success" href="new">Nueva Tarea <i
						class="fa fa-plus"></i></a>
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
							<th>Tiempo<br>Estimado</th>
							<th>Tiempo<br>Trabajado</th>
							<th>Tiempo<br>Restante</th>
							<th>Acciones</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${listTarea}" var="tarea">
							<tr>
								<td>${tarea.id}</td>
								<td>${tarea.usuario}</td>
								<td>${tarea.titulo}</td>
								<td>${fn:substring(tarea.descripcion, 0, 15)}
									<button type="button" class="btn btn-link" data-toggle="modal"
										data-target="#myModal-${tarea.id}">...</button>
								</td>
								<td>${tarea.t_estimado}</td>
								<td>${tarea.t_trabajado}</td>
								<td>${tarea.CalculateTimeResting(tarea.t_estimado, tarea.t_trabajado)}</td>
								<td><a class="btn btn-warning" href="edit?id=${tarea.id}"><i
										class="fa fa-pencil"></i></a> &nbsp;&nbsp;&nbsp; <a
									class="btn btn-danger" href="delete?id=${tarea.id}"><i
										class="fa fa-trash"></i></a></td>
							</tr>

							<!-- Modal -->
							<div class="modal fade" id="myModal-${tarea.id}" role="dialog">
								<div class="modal-dialog modal-lg">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal">&times;</button>
											<h4 class="modal-title">Ver la descripción completa</h4>
										</div>
										<div class="modal-body">
											<p>${tarea.descripcion}</p>
										</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-default"
												data-dismiss="modal">Cerrar</button>
										</div>
									</div>
								</div>
							</div>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>