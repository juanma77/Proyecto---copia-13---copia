<%-- 
    Document   : enviarCorreo
    Created on : 13/12/2016, 07:08:43 PM
    Author     : Juan Manuel
--%>


<%@page import="correo2.Enviando"%>
<%@page import="correo2.Correo"%>
<jsp:useBean id="formbean" class="correo2.Correo"/>
<jsp:setProperty name="formbean" property="*"/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Enviar Correo</title>
    </head>
    <body>
        <%
            Correo mail = new Correo();
            String msg = formbean.getNombre()+" "+formbean.getApellido()+"\n"+formbean.getEmail()+"\n"+formbean.getMensaje();
            mail.setNombre(formbean.getNombre());
            mail.setApellido(formbean.getApellido());
            mail.setEmail(formbean.getEmail());
            mail.setDestino("blueskylander777@gmail.com");
            mail.setMensaje(msg);
            
            Enviando obj = new Enviando();
            if(obj.enviarCorreo(mail)){%>
                ¡CORREO ENVIADO EXITOSAMENTE!
            <%}else{%>
                CORREO NO ENVIADO
            <%}
            
        %>
    </body>
</html>
