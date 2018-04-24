<%-- 
    Document   : altasAdmi
    Created on : 27/11/2017, 12:09:11 AM
    Author     : CARLOS
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="clases.Usuarios"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"%>
<jsp:useBean id="objConn" class="mysql.MySqlConexion"/>
<jsp:useBean id="objCuenta" class="clases.Usuarios" scope="session" />
<jsp:setProperty name="objCuenta" property="*"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>  
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
    <body>
    <center>
        <form style="color:white" action="" method="post">
           <h1 style="color:white"> Altas de Administradores</h1>
            Nuevo administrador: <input type="text" name="adm" value="" id="adm"/><br><br>

            Clave: <input type="text" name="cl" value="" id="cl"/> <!--1--><br><br>

           

            <input type="submit" value="enviar"/>


            
        </form>
        </center>        
        <%
        String x = request.getParameter("adm");
        String y = request.getParameter("cl");
        
        String consulta = "select idUsuario from usuarios where usuario =('"  + x + "') ;"; 
        objConn.Consultar(consulta);
      
      String cla = "";
      
      try{
          cla = objConn.rs.getString(1);
 
      }catch(Exception e){}
      out.print(cla);
      if(cla!= ""){
          String consulta2 = "select idAdministrador from administrador where idUsuario = (" + Integer.parseInt(cla) + ");"; 
      objConn.Consultar(consulta2);
      
      String cl = "";
      
      try{
          cl = objConn.rs.getString(1);
 
      }catch(Exception e){}
      out.print(cl);
      if (cl ==""){
          String alta = "insert into administrador (nombre, idUsuario ) values ('" + x + "',"+cla+");";
            objConn.Actualizar(alta);
      }
      }else{
        
      }
     
        %>
        
    </body>
</html>
