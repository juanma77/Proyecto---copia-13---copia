<%-- 
    Document   : Logros
    Created on : 26/11/2017, 07:19:53 PM
    Author     : CARLOS
--%>
<jsp:useBean id="objConn" class="mysql.MySqlConexion"/>
<jsp:useBean id="objCuenta" class="clases.Usuarios" scope="session" />
<jsp:setProperty name="objCuenta" property="*"/>
<jsp:useBean id="formbean" class="clases.Respuestas"/>
<jsp:setProperty name="formbean" property="*"/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
              body {
            background: url("./images/contacto.png");
            background-size: 1400px 700px;
            background-repeat: no-repeat;
           
            }
            img#l1 {
                position:  absolute;
                top:  400px;  
                left: 1030px; 
                
           
            }
            
            
              img#l2 {
            
                position:  absolute;
                top:  380px;  
                left: 90px; 
           
            }
            
            img#l3 {
            
                position:  absolute;
                top:  80px;  
                left: 500px; 
           
            }
            
            img#l4 {
            
                position:  absolute;
                top:  450px;  
                left: 700px; 
           
            }
            
            img#l5 {
            
                position:  absolute;
                top:  150px;  
                left: 800px; 
           
            }
            
            img#l7 {
            
                position:  absolute;
                top:  350px;  
                left: 500px; 
           
            }
            
            img:hover {
    -webkit-animation: mover 2s infinite  alternate;
    animation: mover 2s infinite  alternate;
}
@-webkit-keyframes mover {
    0% { transform: translateY(0); }
    100% { transform: translateY(-20px); }
}
@keyframes mover {
    0% { transform: translateY(0); }
    100% { transform: translateY(-20px); }
}
        </style>
    </head>
    <body>
    <center> <h1 style="color: white"> Logros</h1> </center>
         <%String usuario = objCuenta.getUsuario();
    //out.println(usuario);
    String idLog="", idU="", idL="", idN="";
           String idUs = "select idUsuario from usuarios where usuario=('" + usuario + "');";
            objConn.Consultar(idUs);
         try {
                 idU = objConn.rs.getString(1);
            } catch (Exception e) {
            }
        // out.println(idU);
           
          idLog = "select logros.idLogro from usuarios, desbloquea, logros where usuarios.idUsuario ="
                  + "desbloquea.idUsuario and desbloquea.idLogro = logros.idLogro and logros.idLogro=1 and usuarios.idUsuario ="+idU+";";
            objConn.Consultar(idLog);
         try {
                 idL = objConn.rs.getString(1);
            } catch (Exception e) {
            }
        // out.println(idL);
        
         if (idL != ""){
             
             idLog = "select nombreLogro from logros where idLogro="+idL+";";
            objConn.Consultar(idLog);
         try {
                 idN = objConn.rs.getString(1);
            } catch (Exception e) {
            }

         
         if(Integer.parseInt(idL) == 1){
             %>
       
                 <img title=" <%out.print(idN);%>" style="border-radius: 10px; height: 100px; width:130px;" id="l1" src="./images/Logro1.png" >
           
        <%
         }
}
 idUs = "select idUsuario from usuarios where usuario=('" + usuario + "');";
            objConn.Consultar(idUs);
         try {
                 idU = objConn.rs.getString(1);
            } catch (Exception e) {
            }
        // out.println(idU);
           
          idLog = "select logros.idLogro from usuarios, desbloquea, logros where usuarios.idUsuario ="
                  + "desbloquea.idUsuario and desbloquea.idLogro = logros.idLogro and logros.idLogro=2 and usuarios.idUsuario ="+idU+";";
            objConn.Consultar(idLog);
         try {
                 idL = objConn.rs.getString(1);
            } catch (Exception e) {
            }
         //out.println(idL);
        
         if (idL != ""){
             
         idLog = "select nombreLogro from logros where idLogro="+idL+";";
            objConn.Consultar(idLog);
         try {
                 idN = objConn.rs.getString(1);
            } catch (Exception e) {
            }

         
         if(Integer.parseInt(idL) == 2){
             %>
       
                 <img title=" <%out.print(idN);%>" style="border-radius: 10px; height: 100px; width:130px;" id="l2" src="./images/Logro2.png" >
           
        <%
         }
} 
idUs = "select idUsuario from usuarios where usuario=('" + usuario + "');";
            objConn.Consultar(idUs);
         try {
                 idU = objConn.rs.getString(1);
            } catch (Exception e) {
            }
        // out.println(idU);
           
          idLog = "select logros.idLogro from usuarios, desbloquea, logros where usuarios.idUsuario ="
                  + "desbloquea.idUsuario and desbloquea.idLogro = logros.idLogro and logros.idLogro=3 and usuarios.idUsuario ="+idU+";";
            objConn.Consultar(idLog);
         try {
                 idL = objConn.rs.getString(1);
            } catch (Exception e) {
            }
         //out.println(idL);
        
         if (idL != ""){
             
         idLog = "select nombreLogro from logros where idLogro="+idL+";";
            objConn.Consultar(idLog);
         try {
                 idN = objConn.rs.getString(1);
            } catch (Exception e) {
            }

         
         if(Integer.parseInt(idL) == 3){
             %>
       
                 <img title=" <%out.print(idN);%>" style="border-radius: 10px; height: 100px; width:130px;" id="l3" src="./images/Logro3.png" >
           
        <%
         }
} 

idUs = "select idUsuario from usuarios where usuario=('" + usuario + "');";
            objConn.Consultar(idUs);
         try {
                 idU = objConn.rs.getString(1);
            } catch (Exception e) {
            }
        // out.println(idU);
           
          idLog = "select logros.idLogro from usuarios, desbloquea, logros where usuarios.idUsuario ="
                  + "desbloquea.idUsuario and desbloquea.idLogro = logros.idLogro and logros.idLogro=4 and usuarios.idUsuario ="+idU+";";
            objConn.Consultar(idLog);
         try {
                 idL = objConn.rs.getString(1);
            } catch (Exception e) {
            }
         //out.println(idL);
        
         if (idL != ""){
             
         idLog = "select nombreLogro from logros where idLogro="+idL+";";
            objConn.Consultar(idLog);
         try {
                 idN = objConn.rs.getString(1);
            } catch (Exception e) {
            }

         
         if(Integer.parseInt(idL) == 4){
             %>
       
                 <img  title=" <%out.print(idN);%>" style="border-radius: 10px; height: 100px; width:130px;" id="l4" src="./images/Logro4.png" >
           
        <%
         }
}

idUs = "select idUsuario from usuarios where usuario=('" + usuario + "');";
            objConn.Consultar(idUs);
         try {
                 idU = objConn.rs.getString(1);
            } catch (Exception e) {
            }
        // out.println(idU);
           
          idLog = "select logros.idLogro from usuarios, desbloquea, logros where usuarios.idUsuario ="
                  + "desbloquea.idUsuario and desbloquea.idLogro = logros.idLogro and logros.idLogro=5 and usuarios.idUsuario ="+idU+";";
            objConn.Consultar(idLog);
         try {
                 idL = objConn.rs.getString(1);
            } catch (Exception e) {
            }
         //out.println(idL);
        
         if (idL != ""){
             
         idLog = "select nombreLogro from logros where idLogro="+idL+";";
            objConn.Consultar(idLog);
         try {
                 idN = objConn.rs.getString(1);
            } catch (Exception e) {
            }

         
         if(Integer.parseInt(idL) == 5){
             %>
       
                 <img  title=" <%out.print(idN);%>" style="border-radius: 10px; height: 100px; width:130px;" id="l5" src="./images/Logro5.png" >
           
        <%
         }
} 

idUs = "select idUsuario from usuarios where usuario=('" + usuario + "');";
            objConn.Consultar(idUs);
         try {
                 idU = objConn.rs.getString(1);
            } catch (Exception e) {
            }
        // out.println(idU);
           
          idLog = "select logros.idLogro from usuarios, desbloquea, logros where usuarios.idUsuario ="
                  + "desbloquea.idUsuario and desbloquea.idLogro = logros.idLogro and logros.idLogro=7 and usuarios.idUsuario ="+idU+";";
            objConn.Consultar(idLog);
         try {
                 idL = objConn.rs.getString(1);
            } catch (Exception e) {
            }
         //out.println(idL);
        
         if (idL != ""){
             
         idLog = "select nombreLogro from logros where idLogro="+idL+";";
            objConn.Consultar(idLog);
         try {
                 idN = objConn.rs.getString(1);
            } catch (Exception e) {
            }

         
         if(Integer.parseInt(idL) == 7){
             %>
       
                 <img title=" <%out.print(idN);%>" style="border-radius: 10px; height: 100px; width:130px;" id="l7" src="./images/Logro7.png" >
           
        <%
         }
} 
%>
 <img title="Menu principal" onclick="location = 'menuUsuario.jsp'" src="casa.png" 
                 width="80" height="80"  />
    </body>
</html>
