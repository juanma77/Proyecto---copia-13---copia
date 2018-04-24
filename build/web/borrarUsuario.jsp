<%-- 
    Document   : borrarUsuario
    Created on : 11/12/2016, 07:30:52 PM
    Author     : Juan Manuel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bajas de usuarios</title>
        
        <style>
           /* form{
                font-family: arial; 
                color:white; 
                border: 5px solid #222;
            }
            
            input{
                border-radius: 5px; 
            }*/
           
           
            /*form{
                font-family: arial; 
                color:white; 
                border: 5px solid #222;
            }
            
            input{
                border-radius: 5px; 
            }*/
            
            
            
              body {
            background: url("./images/fondo.png");
            background-size: 1400px 700px;
            background-repeat: no-repeat;
           
            }
            
            form{
                font-family: bariol;
            }
            
            
           
               
        </style>
    </head>
    
    
    <body style="background-color: dimgray;">
        <%
        String usuario = "";
        HttpSession sesionOk = request.getSession();
        if (sesionOk.getAttribute("usuario") == null){%>
            <jsp:forward page="index.jsp">
            <jsp:param name="error"  value="Es obligatorio identificarse"/>
            </jsp:forward>
        <%
        }else{
           usuario = (String) sesionOk.getAttribute("usuario");
        }%>
        
        
        <center>
        <h1 style="font-family:bariol; color:lightgreen; ">Borrar usuario</h1>
        <form action="executeBorrarUsuario.jsp" method="post">
            
           
           <font style="color:lightgreen; font-family: bariol; "> Nombre de usuario a borrar: </font><input type="text" name="usuario" value="" />
           <br> <br><input type="submit" value="Eliminar" />

           
        </form>
        
    </body>
</html>
