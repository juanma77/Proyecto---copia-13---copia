<%-- 
    Document   : mostrarPrimerosUsuarios
    Created on : 26/11/2017, 05:08:25 PM
    Author     : Juan Manuel
--%>



<%@page import="mysql.Consulta"%>
<jsp:useBean id="objConn" class="mysql.MySqlConexion"/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Primeros usuarios registrados</title>
        
        <style>

            body{
                background: url("./images/contacto.png");
                 background-size: 1400px 700px;
                 background-repeat: no-repeat;
            }
            
            
            </style>
    </head>
    
    
    
    
  
    <body >
        
        <%
        
        String vecUsuarios[];
        
        Consulta cons = new Consulta();
        cons.consultaFem();
            
        vecUsuarios=cons.getVecUsuarios(); 
        
        
        
        %>
        
        <center>
        
        
        <font style="font-family: bariol; color:white; ">
        <h3>Los primeros 5 usuarios y sus correos que se registraron fueron: </h3><br>
        
        <h2> Nombre: <%=vecUsuarios[0]%> </h2>
        <h2> Nombre: <%=vecUsuarios[1]%> </h2>
        <h2> Nombre: <%=vecUsuarios[2]%> </h2> 
        <h2> Nombre: <%=vecUsuarios[3]%> </h2> 
        <h2> Nombre: <%=vecUsuarios[4]%> </h2> 
        
        </font>
        </center>
        
    </body>
</html>
