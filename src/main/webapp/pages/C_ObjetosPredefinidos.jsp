<%@ page import="java.util.Date" %>
<%--
  Created by IntelliJ IDEA.
  User: willi
  Date: 18/11/2022
  Time: 3:18 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Objetos Predefinidos</title>
</head>
<body>
    <h1>Objetos Predefinidos</h1><a href="../index.jsp">Contenido</a><br/>
   son objetos que ya se encuentran definidos dentro de la estructura del proyecto y son :
    <br/><br/>
   <img src="../webResources/images/objetos-predeterminados.png">

    <h2>Ejemplo: </h2><br>
    Navegador utilizado por el cliente: <%= request.getHeader("User-Agent")%><br>
    Idioma utiizado:       <%
                             out.print(request.getLocale().getLanguage());
                             %>

</body>
</html>
