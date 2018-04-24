<%-- 
    Document   : executeInsertUser
    Created on : 11/12/2016, 10:16:18 PM
    Author     : Juan Manuel
--%>

<jsp:useBean id="objConn" class="mysql.MySqlConexion"/>
<jsp:useBean id="objCuenta" class="clases.Usuarios" scope="session" />
<jsp:setProperty name="objCuenta" property="*"/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="estilo.css">
        <title>Execute Insert User</title>
    </head>
    <body style="color: white">
        <img title="Menu principal" onclick="location = 'menuUsuario.jsp'" src="casa.png" 
                 width="80" height="80"  />
        <%
            String nombre, correo, usuario, clave, seguridad, sexo;
            Integer bloqueo; 

            nombre = objCuenta.getNombre(); 
            correo = objCuenta.getCorreo(); 
            usuario= objCuenta.getUsuario();
            clave = objCuenta.getClave(); 
            seguridad = objCuenta.getSeguridad(); 
            bloqueo = objCuenta.getBloqueo();
            sexo= objCuenta.getSexo();
               

            String consulta = "select * from usuarios;";
            objConn.Consultar(consulta);
            int n=0;
            int i,j;
            if(objConn.rs!=null){
            try{
                objConn.rs.last();
                n=objConn.rs.getRow();//total de registros
                objConn.rs.first();
            }catch(Exception e){}
        }
        n=n+2;//aumentamos en un el id
        String alta,parte1, parte2;
        parte1 = "insert into usuarios (nombre,correo,usuario,clave,seguridad,sexo)";
        parte2 = "values ('"+nombre + "','"+correo+"','"+usuario+"',SHA('"+clave+"'),'"+seguridad+"','"+sexo+ "');";
        //parte2 = "values ('"+ n + "','"+nombre + "','"+correo+"','"+usuario+"','"+clave+"','"+seguridad+"','"+bloqueo+ "');";
        alta = parte1 +parte2;   
        objConn.Actualizar(alta);
        objConn.closeRsStmt();
        out.println("Cuenta creada");
        
    
        
        /*String redirectURL = "menuUsuario.jsp";
                response.sendRedirect(redirectURL);
          */   

        %>
       
    </body>
</html>
