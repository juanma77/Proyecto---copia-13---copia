<%-- 
    Document   : closeSession
    Created on : 11/12/2016, 06:58:09 PM
    Author     : Juan Manuel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>    
<!DOCTYPE html>

<%
    HttpSession sesionOk = request.getSession();
    sesionOk.invalidate();
    
    
%>

<jsp:forward page="index.jsp"/>
 