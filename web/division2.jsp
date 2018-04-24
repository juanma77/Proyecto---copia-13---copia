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
        <title>División 2</title>
        
        
      <body>  
        <style>
            
            body {
            background: url("./images/division2.jpg");
            background-size: 1400px 700px;
            background-repeat: no-repeat;
           
            }
            
            
            
              #division21 {
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
            
            
            
            
              #division22 {
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
            
            #division23 {
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
            
            
             #enviar2{
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
             
             
             function validarDivision21(){
                
                varDivision21 = document.getElementById("division21");
                if(varDivision21.value==2){
                 
                    alert("PUNTOS : +1" );
                    varDivision21.disabled=true;
                    
                }else{
                    alert("INCORRECTO"); 
                }
                
                varDivision22 = document.getElementById("division22").value; 
                if(varDivision22==4){
                 
                    alert("PUNTOS : +1" );
                }else{
                    alert("INCORRECTO"); 
                }
                
                varDivision23 = document.getElementById("division23").value;
                if(varDivision23==3){
                 
                    alert("PUNTOS : +1" );
                }else{
                    alert("INCORRECTO"); 
                }
                <% if(request.getParameter("ugh")!=null){
                   String redirectURL = "http://localhost:8080/Proyecto%20-%20copia%20(13)%20-%20copia/juegodivicion.jsp";
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
                if(Integer.parseInt(request.getParameter("resp1"))==2){
                    puntaje+=5;
                }
                if(Integer.parseInt(request.getParameter("resp2"))==4){
                    puntaje+=5;
                }
                if(Integer.parseInt(request.getParameter("resp3"))==3){
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
         
       
         
         <!--<p style="color:white;">  <%
             out.println(request.getParameter("enviar2"));
             out.println("PUNT "+puntaje+" USR "+usuario+ "IDUSR "+usuarioid+"\n");
             out.println(consulta+" "+idResponde+"\n");
             out.println(query);
             %></p>-->
         <!--img id="siguiente" onclick="location='juegodivicion.jsp'" src="sig.png" width="90" height="50" >-->
           
            <form action="#" method="post" onsubmit="validarDivision21()">
        
                <input type="text" name="resp1"  required size="15px" id="division21" > <br><br>
           
                <input type="text" name="resp2"  required size="15px" id="division22">
         
                <input type="text" name="resp3"  required size="15px" id="division23">
            
           <!-- Contraseña:<input type="password" name="contrasena"  required><br><br> -->
 
          
                <input id="enviar2" name="ugh" type="submit" value="Enviar"/>

                <input type="hidden" name="bandera" value="0">
            
        </form>   
        
        
    </head>

    </body>
</html>
