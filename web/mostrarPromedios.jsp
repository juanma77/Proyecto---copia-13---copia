<%-- 
    Document   : mostrarPromedios
    Created on : 26/11/2017, 05:15:25 PM
    Author     : Juan Manuel
--%>


<%@page import="mysql.Consulta"%>
<jsp:useBean id="objConn" class="mysql.MySqlConexion"/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Promedios</title>
        
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
             String promSuma; 
             
              Consulta cons = new Consulta();
            cons.consultaFem();
             
             
             
            promSuma = cons.getPromSuma();
        
        
        %>
        
          <center>
         <font style="font-family: bariol; color:white; ">
        <h3>Promedio total de los puntajes para las sumas</h3><br>
         <h1> Promedio puntaje sumas:  <%=promSuma%>     </h1>
       
         
         
         
          </font>
        </center>
    </body>
</html>
