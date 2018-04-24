<%-- 
    Document   : resultado
    Created on : 15/12/2016, 08:15:07 AM
    Author     : Juan Manuel
--%>

<%@page import="clases.Mail"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%
        
            Mail mail = new Mail();
            
            String from = request.getParameter("from");
            String password = request.getParameter("password"); 

            String to = request.getParameter("to");
            String message = request.getParameter("message");
            
            
           // Mail.emailSender(from, password, message,to);
            


        
        %>
        
        
    </body>
</html>
