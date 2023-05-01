<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="modelo.*" %>
<%
    Usuario usu = new Usuario();
    ArrayList listaUsu = new ArrayList();
    listaUsu = usu.mostrarUsuarios();
    usu.imprimirLis();
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
    <h1 class="titulo1">TABLA DE USUARIOS SPARTANFIT</h1>
    <div class="contenedor_formulario">
        <table border="4" class="table_index">
            <thead class="cabezadoTabla">
                <th>Correo</th>
                <th>Contraseña</th>
                <th>Genero</th>
                <th>Nombre</th>
                <th>Apellidos</th>
                <th>Edad</th>
                <th>Peso</th>
                <th>Estatura</th>
                <th>Objetivo</th>
                <th>Recuperacion</th>
                <th>Calorias</th>
            </thead>
           
            <tbody>
                <% 
                        Iterator it = listaUsu.iterator();
                        while(it.hasNext()){
                            Usuario user = (Usuario)it.next();%>
                            <tr>
                                <td><%= user.getCorreo() %></td>
                                <td><%= user.getContraseña()%></td>
                                <td><%= user.getGenero() %></td>
                                <td><%= user.getNombre() %></td>
                                <td><%= user.getApellidos() %></td>
                                <td><%= user.getEdad() %></td>
                                <td><%= user.getPeso() %></td>
                                <td><%= user.getEstatura() %></td>
                                <td><%= user.getObjetivo() %></td>
                                <td><%= user.getRecuperacion() %></td>
                                <td><%= user.getCaloriasMant() %></td>
                            </tr>
                    <% } %>
            </tbody>
           
        </table>
    </div>
        <div class="contenedor_boton">
            <a class="boton" href="mostrarRutinas.jsp">VER TABLA RUTINAS</a></a>
        </div>
                 
</body>
</html>