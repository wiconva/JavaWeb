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
    <title>Tipo JSP</title>
</head>
<body>
<h1>Tipos de sentencias JSP.</h1>               <a href="../index.jsp">Contenido</a><br/>
    <h2>Expresiones</h2><br/>
    Sentencias de una sola línea se utilizan para mostrar en el navegador, pueden ser java, matemáticas o boleanas. La etiqueta inicia con %= y finaliza con %.
    <br/><br/>
    Ej: la fecha del sistema desde Java es : <%= new Date()%>

    <h2>Scriplets</h2><br/>
    Sentencias con varias línea de código Java, comienza  % y finaliza con %. Pueden haber bucles, condicionales
    pero no declaraciones.
    <br/><br/>
    Ej: Líneas de código Java<br/>
    <%
        for (int i=0; i<5; i++){
           out.println("<br/>Ejecutando for iteración"+(i+1));
                };
    %>

    <h2>Declaraciones</h2><br/>
    Sentencias para declaración de variables y métodos, comienza con %! y finaliza con %.
    <%!
        int resultado;

        public int  suma ( int a, int b){
          return a+b;
        };
    %>
    <br/><br/>
    El resultado de la suma 3+7 utilizando declaraciones es:    <%= suma(3,7)%>

    <br/><br/>
    NOTA: Se recomienda tener la menor cantidad de código Java dentro de un JSP.

</body>
</html>
