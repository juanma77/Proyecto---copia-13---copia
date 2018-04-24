<%-- 
    Document   : mostrarTotalUsuarios
    Created on : 26/11/2017, 05:18:10 PM
    Author     : Juan Manuel
--%>


<%@page import="mysql.Consulta"%>
<jsp:useBean id="objConn" class="mysql.MySqlConexion"/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Total usuarios</title>
        
        
        <style>

            body{
                background: url("./images/contacto.png");
                 background-size: 1400px 700px;
                 background-repeat: no-repeat;
            }
            
            
            </style>
        
    </head>
    <body>
        
        <%
        
        
            String numeroUsuarios; 
            Consulta cons = new Consulta();
            cons.consultaFem();
        

 numeroUsuarios = cons.getNumeroUsuarios();
        %>
        
         <center>
             
               <font style="font-family: bariol; color:white; ">
        <h3>Total de usuarios registrados </h3><br>
        
         <h1> Número de usuarios en sistema:  <%=numeroUsuarios%></h1>
     
           </font>
        </center>
            
         
    </body>
</html>
