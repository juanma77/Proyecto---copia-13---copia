<%-- 
    Document   : mostrarPuntajes
    Created on : 26/11/2017, 04:54:51 PM
    Author     : Juan Manuel
--%>

<%@page import="mysql.Consulta"%>
<jsp:useBean id="objConn" class="mysql.MySqlConexion"/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Puntajes altos</title>
        
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
            String puntajeSuma;
            String puntajeMultiplicacion; 
            String puntajeResta; 
            
            String nombreSexo;
            String correoSexo; 
            
            Consulta cons = new Consulta();
            cons.consultaFem();
        

            puntajeSuma=cons.getPuntajeSuma(); 
            puntajeMultiplicacion = cons.getPuntajeMultiplicacion();
            puntajeResta = cons.getPuntajeResta();
            

            nombreSexo = cons.getNomSexo();
            
            

           
        %>
        
         <center>
        
        
        <font style="font-family: bariol; color:white; ">
        <h3>Los puntajes más altos son:</h3><br>
        
        
        <h1> Puntaje alto sumas:  <%=puntajeSuma%></h1>
        <h1> Puntaje alto multiplicacion:  <%=puntajeMultiplicacion%></h1>
        <h1>Puntaje alto restas : <%=puntajeResta%> <h1/>
            
       

            
            </font>
        </center>
            
          
    </body>
</html>
