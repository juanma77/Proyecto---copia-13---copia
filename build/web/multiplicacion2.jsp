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
        <title>Multiplicación 2</title>


    <body>  
        <style>

            body {
                background: url("./images/multiplicacion2.jpg");
                background-size: 1400px 700px;
                background-repeat: no-repeat;

            }



            #multi21 {
                position:  absolute;
                top:       100px;  /* I usually locate relative to top  */
                left:      1010px; /* left corner of container (screen) */
                /*height:    80px; */  /*  often useful to keep screen orderly */
                width: 170px; 
                height: 100px;
                border-color: black;
                font-size: 30px;
                font-family: bariol;
            }




            #multi22 {
                position:  absolute;
                top:       310px;  /* I usually locate relative to top  */
                left:      1010px; /* left corner of container (screen) */
                /*height:    80px; */  /*  often useful to keep screen orderly */
                width: 170px; 
                height: 100px;
                border-color: black;
                font-size: 30px;
                font-family: bariol;
            }

            #multi23 {
                position:  absolute;
                top:       520px;  /* I usually locate relative to top  */
                left:      1010px; /* left corner of container (screen) */
                /*height:    80px; */  /*  often useful to keep screen orderly */
                width: 170px; 
                height: 100px;
                border-color: black;
                font-size: 30px;
                font-family: bariol;
            }

            #enviarmulti2{
                position:  absolute;
                top:  630px;  /* I usually locate relative to top  */
                left: 1010px; 
            }


            #siguiente{

                position: absolute;
                top:  400px; 
                left: 1180px; 
            }

        </style>


        <script>


            function validarMultiplicacion2() {

                varMulti21 = document.getElementById("multi21").value;
                if (varMulti21 == 36) {

                    alert("PUNTOS : +1");
                }else{
                    alert("INCORRECTO"); 
                }



                varMulti22 = document.getElementById("multi22").value;
                if (varMulti22 == 25) {

                    alert("PUNTOS : +1");
                }else{
                    alert("INCORRECTO"); 
                }

                varMulti23 = document.getElementById("multi23").value;
                if (varMulti23 == 16) {

                    alert("PUNTOS : +1");
                }else{
                    alert("INCORRECTO"); 
                }
            <% if(request.getParameter("ugh")!=null){
                   String redirectURL = "http://localhost:8080/Proyecto%20-%20copia%20(13)%20-%20copia/juegomultiplicacion.jsp";
                response.sendRedirect(redirectURL);}
               %>
            }


        </script>   
  <%
            int puntaje=0;
            String usuario="", usuarioid="1";
            String idResponde="3", consulta="", query="";
            
           usuario=objCuenta.getUsuario();
            consulta="select idUsuario from usuarios where usuario=('" + usuario + "');";
            objConn.Consultar(consulta);
            try {
                usuarioid = objConn.rs.getString(1);
            } catch (Exception e) {}
         
            if(request.getParameter("enviar2")!=null){
                if(Integer.parseInt(request.getParameter("resp"))==36){
                    puntaje+=5;
                }
                if(Integer.parseInt(request.getParameter("resp2"))==25){
                    puntaje+=5;
                }
                if(Integer.parseInt(request.getParameter("resp3"))==16){
                    puntaje+=5;
                }
                 consulta = "SELECT idResponde FROM responde ORDER BY idResponde DESC LIMIT 1;";
                 objConn.Consultar(consulta);
                 try {
                idResponde = objConn.rs.getString(1);
                 } catch (Exception e) {}
                 query ="update responde set puntajePrueba=puntajePrueba+"+puntaje+" where idResponde="+Integer.parseInt(idResponde)+";";
                objConn.Actualizar(query);
            }
         
         %>

 <!--<img id="siguiente" onclick="location = 'juegomultiplicacion.jsp'" src="sig.png" width="90" height="50" >-->

        <form action="" method="post" onsubmit="validarMultiplicacion2()">


            <input type="text" name="resp"  required size="15px" id="multi21"> <br><br>
            <input type="text" name="resp2"  required size="15px" id="multi22">

            <input type="text" name="resp3"  required size="15px" id="multi23">


            <!-- Contraseña:<input type="password" name="contrasena"  required><br><br> -->

            <input id="enviarmulti2" name="ugh" type="submit" value="Enviar"/> 





            <input type="hidden" name="bandera" value="0">

        </form>   


    </head>
    <!-- <body background="./images/sumas1.jpg;" background-size: 80px 60px>-->
    <!--<h1>Hello World!</h1> -->
</body>
</html>
