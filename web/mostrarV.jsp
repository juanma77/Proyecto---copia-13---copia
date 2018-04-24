<%-- 
    Document   : mostrarV
    Created on : 26/11/2017, 06:29:49 PM
    Author     : Juan Manuel
--%>

<%@page import="mysql.Consulta"%>
<jsp:useBean id="objConn" class="mysql.MySqlConexion"/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SpaceMath</title>
        
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
        
            String nombreSexo;
            String correoSexo;
            
            String nomMasculino;
            
           String vecLogros[]; 
        
            Consulta cons = new Consulta();
            cons.consultaFem();
            
            nombreSexo = cons.getNomSexo();
            
            

            nomMasculino = cons.getNomMasculino();
            vecLogros=cons.getVecLogros(); 

        
        %>
        
        
         <center>
        
        
        <font style="font-family: bariol; color:white; ">
        <h1>Primera mujer registrada</h1><br>
        <h3>Nombre: <%=nombreSexo%> <h3/>
            
            
        <h1>Primer hombre registrado</h1><br>
        <h3>Nombre: <%=nomMasculino%> <h3/>
            
            
            
            
            
        <h1>Logros totales del juego</h1><br>
        <h3>Nombre: <%=vecLogros[0]%> <h3/> 
        <h3>Nombre: <%=vecLogros[1]%> <h3/>
        <h3>Nombre: <%=vecLogros[2]%> <h3/>
         <h3>Nombre: <%=vecLogros[3]%> <h3/>
        <h3>Nombre: <%=vecLogros[4]%> <h3/>
         <h3>Nombre: <%=vecLogros[5]%> <h3/>
            
            
            
        
            </font>
        </center>
        
        
        
        
        
        
    </body>
</html>
