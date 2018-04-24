<%-- 
    Document   : executeBorrarUsuario
    Created on : 23/11/2017, 02:56:49 PM
    Author     : Juan Manuel
--%>

<jsp:useBean id="objConn" class="mysql.MySqlConexion"/>
<jsp:useBean id="objUsuarios" class="clases.Usuarios" scope="session" />
<jsp:setProperty name="objUsuarios" property="*"/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="estilo.css">
        <title>Execute borrar usuario</title>
    </head>
    <body style="color: white">
        <img title="Menu principal" onclick="location = 'menuUsuario.jsp'" src="casa.png" 
                 width="80" height="80"  />
        
         <%
            String usuario = "";
             HttpSession sesionOk = request.getSession();
            if (sesionOk.getAttribute("usuario") == null) {%>
                <jsp:forward page="index.jsp">
                <jsp:param name="error"  value="Es obligatorio identificarse"/>
                </jsp:forward>
        <%
        } else{
           usuario = (String) sesionOk.getAttribute("usuario");
        }
           
        String usr; 
        usr = objUsuarios.getUsuario(); 
        
         
         
        //obtener el id que sigue
        String consulta="select * from usuarios;";
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

        n++;//aumentamos en un el id
        String query ="delete from usuarios where usuario='"+usr+"';";
        //String alta,parte1, parte2;
        //parte1 = "insert into cuentas (idUsuario, nombre,correo,cuenta,password,seguridad,bloqueo) ";
        //parte2 = "values ('"+ n + "','"+nombre + "','"+correo+"','"+cuenta+"','"+password+"','"+seguridad+"','"+bloqueo+ "');";
        //alta= parte1 +parte2;
        //out.println("*"+alta+"*");
        objConn.Actualizar(query);
        objConn.closeRsStmt();
        out.println("¡Usuario borrado con éxito!");
         
       %>
        
        
        
        
    </body>
</html>
