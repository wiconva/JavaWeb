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
    <title>Paquetes Java</title>
</head>
<body>
    <h1>Creación y referencia a paquetes Java.</h1><a href="../index.jsp">Contenido</a><br/>
    <h2>Creación de clases:</h2><br/>
    Se debe incluir la clase dentro del paquete acostumbrado Java.
    <br/>

    <h2>Referencia a clases Java</h2><br/>
    Para referenciar el paquete se coloca nombre paquete.clase.elemnto a utiliza.
    <br/><br/>
    Ej: bases.OperacionesMatematicas.suma(2+3) : <%= com.app.bases.OperacionesMatematicas.suma(2,3)%><br/>

    <h2>Importar paquetes</h2><br/>
    Para importar paquetes se utiliza la etiquete %@page y se incluye el atributo import en el cual se asigna la estructura
    de la importación "paquete.clase", y con * se importar todas las clases de ese paquete.

    <br/><br/>

    <%@page import="com.app.bases.*" %>
    El resultado de la resta 3+7 utilizando importación simplificada es :    <%= OperacionesMatematicas.resta(3,7) %>

    <br/><br/>
    NOTA: Se recomienda tener la menor cantidad de código Java dentro de un JSP.

</body>
</html>
