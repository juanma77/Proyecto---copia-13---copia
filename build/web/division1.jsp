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


 <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"       "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>División 1</title>


        <style>

            body {
                background: url("./images/division1.jpg");
                background-size: 1400px 700px;
                background-repeat: no-repeat;

            }

            #division1{

                position:  absolute;
                top:  480px; 
                left: 1010px;
                width: 170px; 
                height: 100px;
                border-color: black;
                font-size: 30px;
                font-family: bariol;
            }

            #enviar1{
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
        
        
        <%--AGREGADO EN OCTAVO--%>
        <script>
             
             
              function validarDivision1(){
                
                varDivision1 = document.getElementById("division1").value;
                if(varDivision1==2){
                 
                    alert("PUNTOS : +1" );
                }else{
                    alert("INCORRECTO"); 
                }
                
                
                   
             <% if(request.getParameter("ugh")!=null){
                   String redirectURL = "http://localhost:8080/Proyecto%20-%20copia%20(13)%20-%20copia/division2.jsp";
                response.sendRedirect(redirectURL);}
               %>
                       
            }         
                
               
              
             
             </script>

        <%
            boolean flag = true;
            int puntaje=3;
            String usuario="", usuarioid = "1";
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
             
             //estaba ugh != null 
             if(request.getParameter("enviar1")!=null) //btnSubmit is the name of your button, not id of that button.
            {
                if (Integer.parseInt(request.getParameter("divi"))==2){
                    puntaje=15;
                }
                else{puntaje=5;}
                query ="update responde set puntajePrueba="+puntaje+" where idResponde="+Integer.parseInt(idResponde)+";";
                objConn.Actualizar(query);
                String redirectURL = "http://localhost:8080/Proyecto%20-%20copia%20(13)%20-%20copia/division2.jsp";
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

    </head>    
    <body>  
        
        <!-- <img id="siguiente" onclick="location = 'division2.jsp'" src="sig.png" width="90" height="50" />-->
            <%--estaba action ="#"--%><form action="" method="post" onsubmit="validarDivision1()">
                <input type="text" id="division1" name="divi" required> <br><br>

              
                <input type="submit" id="enviar1" value="enviar"  name="ugh" />
                <input type="hidden" name="bandera" value="0">
            </form>

       <!-- <input type="hidden" name="bandera" value="0"> -->





    </body>
</html>
