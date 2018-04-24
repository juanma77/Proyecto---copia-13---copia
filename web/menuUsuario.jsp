<%-- 
    Document   : menuUsuario
    Created on : 13/12/2016, 05:57:18 PM
    Author     : Juan Manuel
--%>
<jsp:useBean id="objConn" class="mysql.MySqlConexion"/>
<jsp:useBean id="objCuenta" class="clases.Usuarios" scope="session" />
<jsp:setProperty name="objCuenta" property="*"/>
<jsp:useBean id="formbean" class="clases.Respuestas"/>
<jsp:setProperty name="formbean" property="*"/>
<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>


<!DOCTYPE html>

<%
    String usuario = "";
    
    HttpSession sesionOk = request.getSession();
    if (sesionOk.getAttribute("usuario") == null) {%>
        <jsp:forward page="index.jsp">
        <jsp:param name="error" value="Es obligatorio identificarse"/>
        </jsp:forward>
    <%
        
    }else{
        usuario = (String) sesionOk.getAttribute("usuario");
    }
    
    %>
   
    

    
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="./estilos/EstilosMenuAdmin.css">
        <title> </title>        
         <meta name="viewport" content="width=device-width, initial-scale=1">
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
         <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
         <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
         
          
        <style>
            
             body {
            background: url("./images/menu.jpg");
            background-size: 1400px 700px;
            background-repeat: no-repeat;
           
            }
            
            #fontLogros{
                 position:absolute;
               top:  300px;  
                left: 850px;  
               
            }
            
            #fontSumas{
                position:absolute;
                top:  200px;  
                left: 250px; 
            }
            
            #fontRestas{
                position:absolute;
                top:  450px;  
                left: 300px; 
            }
            
            #fontMulti{
                position:absolute;
                top:  450px;  
                left: 800px; 
            }
            
            #fontDivisiones{
                position:absolute;
                top: 200px;  
                left: 1200px; 
            }
            
            
            
            img#meteorito {
                position:  absolute;
                top:  200px;  
                left: 1030px; 
                
           
            }
            
            
              img#ovni {
            
                position:  absolute;
                top:  180px;  
                left: 90px; 
           
            }
            
           
            img#planeta{
                 position:absolute;
                top:  410px; 
                left: 150px; 
            }
            
            
            
            img#astronauta{
            
                position:absolute;
                top:  390px;  
                left: 630px; 
               
            }
            
            img#pololo{
            
                position:absolute;
                top:  280px;  
                left: 700px; 
               
            }
            
            
            img:hover {
            /* Start the shake animation and make the animation last for 0.5 seconds */
            animation: shake 0.5s; 
            /* When the animation is finished, start again */
            animation-iteration-count: infinite; 
            }

            @keyframes shake {
               0% { transform: translate(1px, 1px) rotate(0deg); }
                10% { transform: translate(-1px, -2px) rotate(-1deg); }
                20% { transform: translate(-3px, 0px) rotate(1deg); }
                 30% { transform: translate(3px, 2px) rotate(0deg); }
                    40% { transform: translate(1px, -1px) rotate(1deg); }
                    50% { transform: translate(-1px, 2px) rotate(-1deg); }
                    60% { transform: translate(-3px, 1px) rotate(0deg); }
                    70% { transform: translate(3px, 1px) rotate(-1deg); }
                    80% { transform: translate(-1px, -1px) rotate(1deg); }
                    90% { transform: translate(1px, 2px) rotate(0deg); }
                    100% { transform: translate(1px, -2px) rotate(-1deg); }
                }


         
         </style>
         
        
         
    </head>
    <%String usuar = objCuenta.getUsuario();
  
    String idLog="";
           String consulta = "select idUsuario from usuarios where usuario=('" + usuar + "');";
            objConn.Consultar(consulta);
         try {
                 idLog = objConn.rs.getString(1);
            } catch (Exception e) {
            }
    String alta = "insert into desbloquea (idUsuario, idLogro) values (" + Integer.parseInt(idLog) + ", 1);";
        objConn.Actualizar(alta);
        String alt = "insert into desbloquea (idUsuario, idLogro) values (" + Integer.parseInt(idLog) + ", 2);";
        objConn.Actualizar(alt);%>
   
       
    <body id="cuerpoMenuAdmin">
        
    <center>
       <!-- <b style="font-family: bariol; color:white;">Menu de Usuario</b><br> -->
        <b style="font-family: bariol; color:white; font-size: 20px;">Usuario Activo:</b> <font style="color:lightgreen"><%=usuario%> </font> 
    </center>
        
    <br><br>
    <nav class="navbar navbar-default">
    
    <ul class="nav navbar-nav">

      <!--<li><a href="verPortatiles.jsp" >Ver Portátiles</a></li>
      <li><a href="verTabletas.jsp" >Ver Tabletas</a></li> -->

      <li><a href="closeSession.jsp" style="margin-left:600px;">Cerrar Sesión</a></li>
      
    </ul>


    </nav>
    
    
    <center><a href="sumas1.jsp"> <img  style="border-radius: 10px; height: 100px; width:130px;" id="ovni" src="./images/ovni.png" > </a></center><br>
    <font style="font-family:bariol; color: lightgreen; font-size: 20px;" id="fontSumas" >Sumas</font>
    
        
  <center><a href="Logros.jsp"> <img  style="border-radius: 10px; height: 100px; width:130px;" id="pololo" src="./images/pololo.png" > </a></center><br>
    <font style="font-family:bariol; color: lightgreen; font-size: 20px;" id="fontLogros" >Logros</font>
        
        <br>
       
        
        
     <center> <a href="restas1.jsp"> <img  style="border-radius: 10px; height: 100px; width:130px;" id="planeta" src="./images/planeta.png"></a>  </center>    
      <font style="font-family:bariol; color: lightgreen; font-size: 20px;" id="fontRestas">Restas</font>  
        
        
        
         <center><a href="division1.jsp"><img  style="border-radius: 10px; height: 100px; width:130px;" id="meteorito" src="./images/meteoro.png"></a></center>
       <font style="font-family:bariol; color: lightgreen; font-size: 20px;" id="fontDivisiones">Divisiones</font>
         
         
         
         <font style="font-family:bariol; color:lightgreen;margin-left: 610px; font-size: 30px;" >Elige un tema</font> 
             
        <center>
       <!-- <font style="font-family: bariol; color: white; font-size: 40px;">
        <!--<form action="">
            <input type="radio" name="operacion" value="suma">Sumas<br>
            <input type="radio" name="operacion" value="resta">Restas<br>
            <input type="radio" name="operacion" value="mutliplicacion">Multiplicaciones<br>
             <input type="radio" name="operacion" value="division">Divisiones<br>
        </form> 
        <font/>
        
        <form>-->
            </center>
         
         
        
        <center><a href="multiplicacion1.jsp"><img  style="border-radius: 10px; height: 150px; width:130px;" id="astronauta" src="./images/male.png"></a></center>
         <font style="font-family:bariol; color: lightgreen; font-size: 20px;" id="fontMulti">Multiplicaciones</font> 
    
    
    
    
    </body>
</html>

 
