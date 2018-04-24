<%-- 
    Document   : inicializarintentos
    Created on : 12/12/2016, 05:13:13 PM
    Author     : Juan Manuel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<%
    
    
    int intentos = 0;
    application.setAttribute("intentos", intentos);
    %><jsp:forward page="ingresar.jsp" /><%

          
    
%>

    
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inicializar Intentos</title>
    </head>
    <body>
        
    </body>
</html>
