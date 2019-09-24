# serempre
Prueba de Java + Spring + Maven + JPA + SOAP + MySQL

A continuación se presentan las instrucciones para la instalación del proyecto, para su correcto funcionamiento.

1) Las herramientas utilizadas son las siguientes:

- Eclipse IDE
- Java
- Spring
- Maven
- JPA
- MySQL
- SOAP
- Apache Tomcat ver. 9.0

2) Para la implementación de la base de datos, las credenciales son las siguientes:

- username: root
- password: 

3) Para la implementación de la base de datos, debe ejecutar los siguientes scripts en el orden en que aparecen:

- CREATE_TABLE_Tareas.sql: crea la base de datos y la tabla tarea.
- INSERT_Tareas.sql: este script inicializa la tabla con algunos registros.

Nota: estos scripts se encuentran en el directorio \src\net\codejava\sql del proyecto.

4) Las dependencias necesarias que fueron añadidas en el archivo pom.xml, son las siguientes:

- org.springframework: spring-context
- org.springframework: spring-webmvc
- org.springframework: spring-orm
- org.springframework.data: spring-data-jpa
- org.hibernate: hibernate-core
- mysql: mysql-connector-java
- javax.servlet: javax.servlet-api
- javax.servlet.jsp: javax.servlet.jsp-api
- jstl: jstl
- javax.xml: jaxrpc-api
- org.apache.axis: axis

Nonta: las dos últimas dependencias fueron añadidas por requerimientos del servicio web, para su funcionamiento.

5) Para el funcionamiento del servicio web, se implementó la clase MyCalculator, para los métodos add, substract, multiply y divide.
Esta clase junto con los archivos del servicio web, están ubicados en \src\net\codejava\soap.

6) La clase tarea implementada en el proyecto, está conformada por los siguientes archivos:

- Tarea.java
- TareaRepository.java
- TareaService.java
- TareaController.java

Su ubicación es \src\net\codejava\tarea

7) Los archivos de configuración del servlet, jpa y mvc se encuentran en \src\net\codejava\config.

8) El archivo de persistencia "persistence.xml" se encuentra en \src\META-INF.

9) Los archivos de las vistas se encuentran en \WebContent\WEB-INF\views
