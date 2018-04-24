<%-- 
    Document   : index
    Created on : 29/11/2016, 08:15:20 PM
    Author     : Juan Manuel
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="clases.Usuarios"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"%>
<jsp:useBean id="objConn" class="mysql.MySqlConexion"/>
<jsp:useBean id="objCuenta" class="clases.Usuarios" scope="session" />
<jsp:setProperty name="objCuenta" property="*"/>
<!DOCTYPE html>

<%ArrayList<Usuarios> usuarios = new ArrayList<Usuarios>(); %>




<%
            String usuario = "";
            String clave = "";
            Integer imgM=(Integer) (application.getAttribute("imagen")); 
            
          
            if (request.getParameter("usuario") != null){
                usuario = request.getParameter("usuario");
            }
            
            if (request.getParameter("clave") != null){
                clave = request.getParameter("clave");
            }
            
%>           
            
  <%        
      
      
      
      String iduser ="";
      
      usuario = objCuenta.getUsuario(); 
      String consulta = "select clave from usuarios where usuario =('"  + usuario + "');"; 
      
       
      
      
      
            
      objConn.Consultar(consulta);
      
      String cla = "";
      
      try{
          cla = objConn.rs.getString(1);
          
          
          
      }catch(Exception e){}
      
       String consult = "select idUsuario from usuarios where usuario=('" + usuario + "') and clave=('" + cla + "');";
            objConn.Consultar(consult);
         try {
                 iduser = objConn.rs.getString(1);
            } catch (Exception e) {
            }
      
      
      
      if(iduser!= ""){
           //int id =Integer.parseInt(iduser);
         String consulta2 = "select idAdministrador from administrador where idUsuario =  (" + iduser + ");";  
        objConn.Consultar(consulta2);
        String ad = "";
        
        try{
            ad = objConn.rs.getString(1);
        }catch(Exception e){}
        // out.print("select idUsuario from usuarios where usuario=('" + usuario + "') and clave=('" + cla +" " +iduser+"'); ");
        
        
        if(ad!= ""){          HttpSession sesionOk = request.getSession();
      sesionOk.setAttribute("usuario", usuario);      %>
             <jsp:forward page="menu.jsp"/>
        <%}else{

        
        
      HttpSession sesionOk = request.getSession();
      sesionOk.setAttribute("usuario", usuario);
  
  
      %>
          <jsp:forward page="menuUsuario.jsp"/>
      <%}}else{%>
      <script>
            alert('Usuario no registrado');
       </script>
            <jsp:forward page="ingresar.jsp"/>
        <%}  
      
      
      
      
      
      
      
      
         
      
  
      %>
      
      
      
    