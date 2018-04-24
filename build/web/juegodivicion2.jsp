<%-- 
    Document   : juegodivicion2
    Created on : 24/11/2017, 08:37:37 AM
    Author     : CARLOS
--%>
<jsp:useBean id="objConn" class="mysql.MySqlConexion"/>
<jsp:useBean id="objCuenta" class="clases.Usuarios" scope="session" />
<jsp:setProperty name="objCuenta" property="*"/>
<jsp:useBean id="formbean" class="clases.Respuestas"/>
<jsp:setProperty name="formbean" property="*"/>
<%@page import="java.util.Collections"%>
<%@page import="java.util.LinkedList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<%
    String usuario="", usuarioid="1", consulta="", query="", idResponde="0", suma="";
    int puntos=10, sum=0, n1=16, n2=4;
    
    String resp = "";
    int c = 0;
    LinkedList<Integer> list = new LinkedList<Integer>();
    list.add(20);
    list.add(10);
    list.add(1);
    list.add(5);
    list.add(6);
    list.add(16);
    list.add(9);
    list.add(15);
    
    sum = n1 / n2;
    int cont = 0;
    list.add(8, sum);
    /* for (int i = 0; i < 8; i++) {
            list.add( 8, (int)list.get(8) + (int)list.get(i));
        }*/

    suma = n1 + " " + "/" + " " + n2;

    Collections.shuffle(list);
    
     //CONSULTAAAAAAAAAAAAAAAS
    usuario=objCuenta.getUsuario();
        consulta="select idUsuario from usuarios where usuario=('" + usuario + "');";
        objConn.Consultar(consulta);
        try {
            usuarioid = objConn.rs.getString(1);
        } catch (Exception e) {}
        consulta= "SELECT idResponde FROM responde ORDER BY idResponde DESC LIMIT 1;";
        objConn.Consultar(consulta);
        try {
            idResponde = objConn.rs.getString(1);
             } catch (Exception e) {}
        //query ="update responde set puntajePrueba=puntajePrueba + "+puntos+" where idResponde="+Integer.parseInt(idResponde)+";";
        //objConn.Actualizar(query);
    
     if(request.getParameter("b1")!=null){
          
          if(Integer.parseInt(request.getParameter("b1"))==sum){
          //query ="update responde set puntajePrueba=puntajePrueba+"+puntos+" where idResponde="+Integer.parseInt(idResponde)+";";
          //objConn.Actualizar(query);
          %>
          <script>alert ("Correcto");
          document.getElementById("n10").innerHTML="¡¡¡¡¡FELICIDADES!!!!!";
          </script>
        <%
          }
          else{
            query ="update responde set puntajePrueba=puntajePrueba-1 where idResponde="+Integer.parseInt(idResponde)+";";
            objConn.Actualizar(query);
           //query ="update responde set puntajePrueba=puntajePrueba-1 where idResponde="+Integer.parseInt(idResponde)+";";
          //objConn.Actualizar(query);
        %>
        <script>alert("intenta otra vez");</script>
        <%
          }
      }
      else{
      puntos=10;
      query ="update responde set puntajePrueba=puntajePrueba+ "+puntos+" where idResponde="+Integer.parseInt(idResponde)+";";
          objConn.Actualizar(query);
    }

%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="estilo.css">
        <title>JSP Page</title>
    </head>
    <body>



        <div id="marg3">
            <form action="#" method="post" >
            <div id="n1">
                <center>

                    <input style="background-color: transparent" name ="b1"
                           type="submit" 
                           value="<% out.print(list.get(0)); %>"/> </center> </div>
            <div id="n2" ><center><input style="background-color: transparent" name ="b1"
                                         type="submit" 
                                         value="<% out.print(list.get(1)); %>"/> </center></div>
            <div id="n3"><center><input style="background-color: transparent" name ="b1"
                                        type="submit"  
                                        value="<% out.print(list.get(2)); %>"/></center></div>
            <div id="n4"><center><input style="background-color: transparent" name ="b1"
                                        type="submit" 
                                        value="<% out.print(list.get(3)); %>"/></center></div>
            <div id="n5"><center><input style="background-color: transparent" name ="b1"
                                        type="submit"  
                                        value="<% out.print(list.get(4)); %>"/></center></div>
            <div id="n6"><center><input style="background-color: transparent" name ="b1"
                                        type="submit" 
                                        value="<% out.print(list.get(5)); %>"/></center></div>
            <div id="n7"><center><input style="background-color: transparent" name ="b1"
                                        type="submit" 
                                        value="<% out.print(list.get(6)); %>"/></center></div>
            <div id="n8"><center><input style="background-color: transparent" name ="b1"
                                        type="submit" 
                                        value="<% out.print(list.get(7)); %>"/></center></div>
            <div id="n9"><center><input style="background-color: transparent" name ="b1"
                                        type="submit" 
                                        value="<% out.print(list.get(8)); %>"/></center></div>
            </form>
            <div id="n10"><center>
                    <% out.println(suma);

                    %> </center></div>
            <img id="siguiente" onclick="location = 'juegodivicion3.jsp'" src="sig.png" width="90" height="50" >
        </div>
         
    </body>
</html>

}

