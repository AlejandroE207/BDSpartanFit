<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="modelo.*" %>
<%
    Rutina rut = new Rutina();
    ArrayList listaRut = new ArrayList();
    listaRut = rut.mostrarRutinas();
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
    <h1 class="titulo1">TABLA DE RUTINAS SPARTANFIT</h1>
    <div class="contenedor_formulario">
        <table border="4">
            <thead class="cabezadoTabla">
                <th>Nivel</th>
                <th>Lunes</th>
                <th>Martes</th>
                <th>Miercoles</th>
                <th>Jueves</th>
                <th>Viernes</th>
                <th>Sabado</th>
                <th>Domingo</th>
            </thead>
           
            <tbody>
                <% 
                        Iterator it = listaRut.iterator();
                        while(it.hasNext()){
                            Rutina ruti = (Rutina)it.next();%>
                            <tr>
                                <td><%= ruti.getNivel() %></td>
                                <td><%= ruti.getLunes() %></td>
                                <td><%= ruti.getMartes() %></td>
                                <td><%= ruti.getMiercoles() %></td>
                                <td><%= ruti.getJueves() %></td>
                                <td><%= ruti.getViernes() %></td>
                                <td><%= ruti.getSabado() %></td>
                                <td><%= ruti.getDomingo() %></td>
                                
                            </tr>
                    <% } %>
            </tbody>
           
        </table>
    </div>
        <div class="contenedor_boton">
            <a class="boton" href="mostrarEjercicios.jsp">VER TABLA EJERCICIOS</a></a>
        </div>
                 
</body>
</html>