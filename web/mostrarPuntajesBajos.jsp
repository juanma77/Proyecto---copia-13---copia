<%-- 
    Document   : mostrarPuntajesBajos
    Created on : 26/11/2017, 05:03:23 PM
    Author     : Juan Manuel
--%>

<%@page import="mysql.Consulta"%>
<jsp:useBean id="objConn" class="mysql.MySqlConexion"/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Puntajes bajos</title>
        
        
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
             String puntajeMinMult;
              String puntajeMinSuma;
               String puntajeMinResta;
               


                Consulta cons = new Consulta();
                cons.consultaFem();
                
                puntajeMinMult = cons.getPuntajeMinMult();
                 puntajeMinSuma = cons.getPuntajeMinSuma(); 
                puntajeMinResta = cons.getPuntajeMinResta();



         %>
         
         
          <center>
        
        
        <font style="font-family: bariol; color:white; ">
        <h3>Los puntajes más bajos son:</h3><br>
         
         
         <h1> Puntaje bajo multiplicacion:  <%=puntajeMinMult%>     </h1>
          <h1>Puntaje bajo sumas: <%=puntajeMinSuma%> </h1>
          <h1>Puntaje bajo restas : <%=puntajeMinResta%> <h1/>
         
             </font>
        </center>
         
         
    </body>
</html>
