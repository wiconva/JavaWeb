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
    <h1>Datos rescatados del formulario: </h1> &nbsp  <a href="../index.jsp">Contenido</a><br/>
    Nombre :    <%=request.getParameter("nombre")%><br>
    Edad :      <%=request.getParameter("edad")%>

</body>
</html>
