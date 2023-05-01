<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="modelo.*" %>
<%
    UsuarioxRutina ur = new UsuarioxRutina();
    ArrayList listaUr = new ArrayList();
    listaUr = ur.mostrarUsuxRut(); 
%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js"
        integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V"
        crossorigin="anonymous"></script>
        <link rel="stylesheet" href="estiloTablas.css">
    <title>Document</title>
</head>

<body>
    <h1 class="titulo1">TABLA DE EJERCICIOS SPARTANFIT</h1>
    <div class="contenedor_formulario">
        <table border="4">
            <thead class="cabezadoTabla">
                <th>Id</th>
                <th>Correo Usuario</th>
                <th>Nivel Rutina</th>
            </thead>
           
            <tbody>
                <% 
                        Iterator it = listaUr.iterator();
                        while(it.hasNext()){
                            UsuarioxRutina usr = (UsuarioxRutina)it.next();%>
                            <tr>
                                <td><%= usr.getId() %></td>
                                <td><%= usr.getCorreo()%></td>
                                <td><%= usr.getNivel()%></td>
                            </tr>
                    <% } %>
            </tbody>
           
        </table>
    </div>
        <div class="contenedor_boton">
            <a class="boton" href="index.jsp">REGRESAR A INDEX</a></a>
        </div>
                 
</body>
</html>