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
    <h1>Sesiones</h1> <a href="../index.jsp">Contenido</a><br/>
    Son datos que se guardan en memoria para mejorar la experiencia de usuario ya que el protocolo HTTP es sin estados.<br>
    <br><br>
    <img src="../webResources/images/sesiones.png"><br><br>
    Cada vez que un usuario accede al sitio se guarda una sesión en la memoria del servidor y con ella acceso diferente métodos.
    <br><br>
    <img src="../webResources/images/sesiones_2.png"><br><br><br>

    Ejemplo: guardar en un carro de compras una lista de productos, si no se utiliza sesiones esta lista siempre se ajustaría
    a la última seleccción.
    <br><br>
    Carrito <br>
    <form action="" method="get">
        <input type="checkbox" value="Articulo_1" name="articulos">Articulo 1<br>
        <input type="checkbox" value="Articulo_2" name="articulos">Articulo 2<br>
        <input type="checkbox" value="Articulo_3" name="articulos">Articulo 3<br>
        <input type="checkbox" value="Articulo_4" name="articulos">Articulo 4<br>
        <input type="checkbox" value="Articulo_5" name="articulos">Articulo 5<br>
        <input type="submit" value="Enviar">
    </form><br><br>
    Articulos en el carrito:<br><br>

    <%
        String [] articulos = request.getParameterValues("articulos");//Devuelve una array con todos los elementos de ese nombre.
        //La primer vez que el navegador carga la página el objeto en la sesión es null,
        ArrayList <String> listaElementos = (ArrayList<String>) session.getAttribute("elementos");
        //Si es la primer vez inicia la lista para no tener excepciones, y a la sesión le da la orden de almacenar los datos de la lista,
        //quiere decir que si se recarga la página o si se envía el formulario almacenara lo que ya ha seleccionado.
        if(listaElementos == null){
            listaElementos = new ArrayList<String>();
            session.setAttribute("elementos", listaElementos);
        }

        //Si recibió parámetros en el request los agrega a la lista.
        if (articulos!= null){
            for (int i=0;i<articulos.length; i++){
                listaElementos.add(articulos[i]);
            }
        }

        //Imprime lo que hay en la lista de no haber nada no imprime.
        for(String e: listaElementos){
            out.println(e);
        }
    %>



</body>
</html>
