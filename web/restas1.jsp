<%-- 
    Document   : sumas1
    Created on : 16/11/2017, 07:34:30 PM
    Author     : Juan Manuel
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
        <title>Restas 1</title>
        
        
      <body>  
        <style>
            
            body {
            background: url("./images/restas1.jpg");
            background-size: 1400px 700px;
            background-repeat: no-repeat;
           
            }
            
            
            #restas1{
                 
                position:  absolute;
                top:  480px;  /* I usually locate relative to top  */
                left: 1010px;
                width: 170px; 
                height: 100px;
                border-color: black;
                font-size: 30px;
                font-family: bariol;
            }
            
            #enviarrestas1{
               position:  absolute;
                top:  600px;  /* I usually locate relative to top  */
                left: 1010px; 
            }
            
            
             #siguiente{
               
                position: absolute;
                  top:  400px; 
                left: 1180px; 
            }
            
            
            
            
         </style>
         
         
         <script>
             
             
              function validarResta1(){
                
                varResta1 = document.getElementById("restas1").value;
                if(varResta1==3){
                 
                    alert("PUNTOS : +1" );
                }else{
                    alert("INCORRECTO"); 
                }
                
                
                   
             <% if(request.getParameter("ugh")!=null){
                   String redirectURL = "http://localhost:8080/Proyecto%20-%20copia%20(13)%20-%20copia/restas2.jsp";
                response.sendRedirect(redirectURL);}
               %>
                       
            }         
                
               
              
             
             </script>
         
         
         
        <%
            boolean flag = true;
            int puntaje=3;
            String usuario, usuarioid = "1";
            String idResponde = "", consulta="";

            consulta = "SELECT idResponde FROM responde ORDER BY idResponde DESC LIMIT 1;";
            objConn.Consultar(consulta);
            try {
                idResponde = objConn.rs.getString(1);
            } catch (Exception e) {
            }
            System.out.println(idResponde);
            String query="update responde set puntajePrueba="+puntaje+" where idResponde="+idResponde+";";

            //String query="update responde set puntajePrueba="+puntaje+" where idResponde="+Integer.parseInt(idResponde)+";";
             //String query ="update responde set puntajePrueba="+puntaje+"where idResponde="+idResponde;
             //objConn.Actualizar(query);*/
             //estaba ("ugh")!=null
             if(request.getParameter("enviarrestas1")!=null) //btnSubmit is the name of your button, not id of that button.
            {
                if (Integer.parseInt(request.getParameter("resp"))==3){
                    puntaje=15;
                }
                else{puntaje=5;}
                query ="update responde set puntajePrueba="+puntaje+" where idResponde="+Integer.parseInt(idResponde)+";";
                objConn.Actualizar(query);
                String redirectURL = "http://localhost:8080/Proyecto%20-%20copia%20(13)%20-%20copia/restas2.jsp";
                response.sendRedirect(redirectURL);}
            else{
            usuario = objCuenta.getUsuario();
            consulta = "select idUsuario from usuarios where usuario=('" + usuario + "');";
            objConn.Consultar(consulta);
            try {
                usuarioid = objConn.rs.getString(1);
            } catch (Exception e) {
            }
            String alta = "insert into responde (idUsuario) values (" + Integer.parseInt(usuarioid) + ");";
            objConn.Actualizar(alta);
            }
%>  
         
    <!--<img id="siguiente" onclick="location='restas2.jsp'" src="sig.png" width="90" height="50" >-->
           
        <form action="" method="post" onsubmit="validarResta1()">
            <input id="restas1" type="text" name="resp"  required> <br><br>
            <input id="enviarrestas1" type="submit" name="ugh" value="Enviar"/>
            <input type="hidden" name="bandera" value="0">          
        </form>   

    </head>
   <!-- <body background="./images/sumas1.jpg;" background-size: 80px 60px>-->
        <!--<h1>Hello World!</h1> -->
    </body>
</html>
