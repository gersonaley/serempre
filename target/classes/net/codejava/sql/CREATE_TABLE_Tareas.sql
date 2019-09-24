-- CREATE DATABASE Prueba;

CREATE TABLE tarea (
  id int(11) NOT NULL AUTO_INCREMENT,
  titulo varchar(32) NOT NULL,
  descripcion varchar(255) NOT NULL,
  usuario varchar(30) NOT NULL,
  t_estimado int NOT NULL DEFAULT 0,
  t_trabajado float NOT NULL DEFAULT 0,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
