<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
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
    <title>Sesiones</title>
</head>
<body>
    <h1>Sesiones</h1> <a href="../index.jsp">Contenido</a><br/><br/>
    Son archivos de preferencias que se guardar de forma transparente para el usuario en el disco. Cuando un cliente lanza una petición
    por primera ves el servidor envía el recurso solicitado y un archivo que guarda de modo clave valor las preferencias
    del cliente y en sus próximas peticiones el cliente envía la solicitud y el valor de las cookies para que el servidor personalice su respuesta<br>
    <br><br>
    <img src="../webResources/images/cookies.png">
    <br><br>
    Ejemplo de creación de Cookies: Despues de 20s actualizar la página y la cookie desaparece.
    <br><br>
    <form action="F1_Cookies.jsp" >
        <select name="valor">
            <option>Opcion_1</option>
            <option>Opcion_2</option>
            <option>Opcion_3</option>
            <option>Opcion_4</option>
        </select>
        <input type="submit" value="Enviar">
    </form >

    <br><br>
    El servidor creará el archivo de Cookies con los datos recibidos dentro del request y lo devolverá como un archivo
    de pares clave valor.<br><br>

    <%
        //Recibe el parámetro enviado desde el request.
        String seleccion = request.getParameter("valor");
        //Crea la cookie
        if (seleccion != null){
            Cookie cookie = new Cookie("mi.cookie", seleccion);
            //Ajusta la vida de la cookie en segundos.
            cookie.setMaxAge(20);//Ajuste a una hora.
            //Agrega la cookie a la respuesta que se envía al cliente.
            response.addCookie(cookie);
        }
    %>

    <h2>Las cookies almacenadas por la página son: </h2><br><br>
    <%
        Cookie [] cookies = request.getCookies();
        for (Cookie c: cookies){
            out.println(c.getName()+" = ");
            out.println(c.getValue()+"<br>");
        }
    %>


</body>
</html>
