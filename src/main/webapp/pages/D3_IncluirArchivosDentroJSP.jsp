<%--
  Created by IntelliJ IDEA.
  User: willi
  Date: 19/11/2022
  Time: 10:31 a. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h1>Incluir archvivos dentro de JSP </h1> <a href="../index.jsp">Contenido</a><br/>
    Para incluir archivos dentro del JSP se utiliza la etiqueta JS:include page="nombreArchivo".

    <br>Ejemplo:<br>
    <img src="../webResources/images/IncluirArchivos.png"><br><br>

    Referencia a JSP 1:

    <jsp:include page="D1_Formulario.html"></jsp:include>
    <br><br>

    Referencia a JSP 2:
    <jsp:include page="B_ModulosRefenciaPaquetesJava.jsp"></jsp:include>

</body>
</html>
