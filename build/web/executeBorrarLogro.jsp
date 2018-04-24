<%-- 
    Document   : executeBorrarProducto
    Created on : 11/12/2016, 07:34:46 PM
    Author     : Juan Manuel
--%>

<jsp:useBean id="objConn" class="mysql.MySqlConexion"/>
<jsp:useBean id="objLogros" class="clases.Logros" scope="session" />
<jsp:setProperty name="objLogros" property="*"/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Execute Borrar Logro</title>
    </head>
    <body>
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
           
        String nombre; 
        nombre = objLogros.getNombre(); 
        
         
         
        //obtener el id que sigue
        String consulta="select * from logros;";
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
        String query ="delete from logros where nombreLogro='"+nombre+"';";
        //String alta,parte1, parte2;
        //parte1 = "insert into cuentas (idUsuario, nombre,correo,cuenta,password,seguridad,bloqueo) ";
        //parte2 = "values ('"+ n + "','"+nombre + "','"+correo+"','"+cuenta+"','"+password+"','"+seguridad+"','"+bloqueo+ "');";
        //alta= parte1 +parte2;
        //out.println("*"+alta+"*");
        objConn.Actualizar(query);
        objConn.closeRsStmt();
        out.println("¡Logro borrado con éxito!");
         
       %>
    </body>
</html>
