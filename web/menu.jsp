<%-- 
    Document   : index
    Created on : 29/11/2016, 08:15:20 PM
    Author     : Juan Manuel
--%>

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
    }%>
    
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
            
            
          
            
            
            
            
            img#astronauta{
            
            
            position:  absolute;
                top:  290px;  /* I usually locate relative to top  */
                left: 150px; 
            
            }
            
            img#astronauta2{
                position:  absolute;
                top:  290px;  /* I usually locate relative to top  */
                left: 350px; 
            
            }
            
             img#astronauta3{
                position:  absolute;
                top:  290px;  /* I usually locate relative to top  */
                left: 550px; 
            
            }
            
             img#astronauta4{
                position:  absolute;
                top:  290px;  /* I usually locate relative to top  */
                left: 750px; 
            
            }
            
             img#astronauta5{
                position:  absolute;
                top:  290px;  /* I usually locate relative to top  */
                left: 950px; 
            
            }
            
             img#astronauta6{
                position:  absolute;
                top:  290px;  /* I usually locate relative to top  */
                left: 1150px; 
            
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
    
    <body id="cuerpoMenuAdmin">
        
    <center>
        <b style="font-family: bariol; color:lightgreen;">Menú de Administrador</b><br>
        <b style="font-family: bariol; color:lightgreen;">Usuario Activo:</b> <font style="color:lightgreen; font-family: bariol;"><%=usuario%> </font>  
    </center>
        
    <br><br>
    <nav class="navbar navbar-default">
    
    <ul class="nav navbar-nav">

    <!--<li><a href="verPortatiles.jsp" >Ver Portátiles</a></li>
      <li><a href="verTabletas.jsp" >Ver Tabletas</a></li>-->
      <!--<li><a href="insertRecord.jsp">Altas de Productos</a></li>-->
     
      <li style="margin-left:400px;"><a href="borrarUsuario.jsp">Bajas de usuarios</a></li>
      <li><a href="borrarLogro.jsp">Bajas de logros</a></li>
      <!-- <li><a href ="changePassw.jsp">Cambio de Constraseña </a></li>  -->
       <li><a href="cambiarUsuarios.jsp">Cambios de usuarios</a></li>
      <!-- <li><a href="mostrarMujeres.jsp">Usuarios: mujeres</a></li> -->
       
       <li><a href="altasAdmi.jsp">Asignar Administrador</a></li>
       
      <li><a href="closeSession.jsp">Cerrar Sesión</a></li>
      
    </ul>


    </nav>   
           
            
        <a href="mostrarPuntajesAltos.jsp" ><img style="border-radius: 10px; height: 150px; width:130px;" id="astronauta" src="./images/male.png"></a>
        <font style="font-family:bariol;color:lightgreen; position:absolute; top: 250px; left:150px; size:40px;">Puntajes altos</font>
        
        
        
        <a href="mostrarPuntajesBajos.jsp"><img  style="border-radius: 10px; height: 150px; width:130px;" id="astronauta2" src="./images/male.png"></a>
         <font style="font-family:bariol;color:lightgreen; position:absolute; top: 250px; left:350px; size:40px;">Puntajes bajos</font>
         
         
         
        <a href="mostrarPrimerosUsuarios.jsp"><img  style="border-radius: 10px; height: 150px; width:130px;" id="astronauta3" src="./images/male.png"></a>
          <font style="font-family:bariol;color:lightgreen; position:absolute; top: 250px; left:550px; size:40px;">Primeros usuarios registrados</font>
          
          <a href="mostrarPromedios.jsp"><img  style="border-radius: 10px; height: 150px; width:130px;" id="astronauta4" src="./images/male.png"></a>
         <font style="font-family:bariol;color:lightgreen; position:absolute; top: 250px; left:750px; size:40px;">Promedio puntajes suma</font>
         
        <a href="mostrarTotalUsuarios.jsp"><img  style="border-radius: 10px; height: 150px; width:130px;" id="astronauta5" src="./images/male.png"></a>
         <font style="font-family:bariol;color:lightgreen; position:absolute; top: 250px; left:950px; size:40px;">Total usuarios en sistema</font>
         
         
        <a href="mostrarV.jsp"><img  style="border-radius: 10px; height: 150px; width:130px;" id="astronauta6" src="./images/male.png"></a>
         <font style="font-family:bariol;color:lightgreen; position:absolute; top: 250px; left:1150px; size:40px;">Vistas</font> 
         
 
