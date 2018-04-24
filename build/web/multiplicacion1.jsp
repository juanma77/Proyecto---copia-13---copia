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
        <title>Multiplicación 1</title>


    <body>  
        <style>

            body {
                background: url("./images/multiplicacion1.jpg");
                background-size: 1400px 700px;
                background-repeat: no-repeat;

            }

            #multiplicacion1{

                position:  absolute;
                top:  480px; 
                left: 1010px;
                width: 170px; 
                height: 100px;
                border-color: black;
                font-size: 30px;
                font-family: bariol;
            }

            #enviarmulti1{
                position:  absolute;
                top:  600px;  
                left: 1010px; 
            }
            #siguiente{

                position: absolute;
                top:  400px; 
                left: 1180px; 
            }


        </style>
        
        <%--esto es modificacion de octavo--%>
        
         <script>
             
             
              function validarMulti1(){
                
                varMulti1 = document.getElementById("multiplicacion1").value;
                if(varMulti1==16){
                 
                    alert("PUNTOS : +1" );
                }else{
                    alert("INCORRECTO"); 
                }
                
                
                   
             <% if(request.getParameter("ugh")!=null){
                   String redirectURL = "http://localhost:8080/Proyecto%20-%20copia%20(13)%20-%20copia/multiplicacion2.jsp";
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
            String query="update responde set puntajePrueba="+puntaje+" where idResponde="+Integer.parseInt(idResponde)+";";
             //String query ="update responde set puntajePrueba="+puntaje+"where idResponde="+idResponde;
             //objConn.Actualizar(query);*/
             
             
             //estaba ugh!=null
             if(request.getParameter("enviarmulti1")!=null) //btnSubmit is the name of your button, not id of that button.
            {
                if (Integer.parseInt(request.getParameter("resp"))==16){
                    puntaje=15;
                }
                else{puntaje=5;}
                query ="update responde set puntajePrueba="+puntaje+" where idResponde="+Integer.parseInt(idResponde)+";";
                objConn.Actualizar(query);
                String redirectURL = "http://localhost:8080/Proyecto%20-%20copia%20(13)%20-%20copia/multiplicacion2.jsp";
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


    

<!--<img id="siguiente" onclick="location = 'multiplicacion2.jsp'" src="sig.png" width="90" height="50" >-->
        <form action="" method="post" onsubmit="validarMulti1()">

            <input type="text" name="resp"  required id="multiplicacion1"> <br><br>
 
           
            <input id="enviarmulti1" name="ugh" type="submit" value="Enviar" />

            <input type="hidden" name="bandera" value="0">

        </form>   


    </head>
    <!-- <body background="./images/sumas1.jpg;" background-size: 80px 60px>-->
    <!--<h1>Hello World!</h1> -->
</body>
</html>
