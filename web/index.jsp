
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<head>
  <title>SpaceMath</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 
  
  
  <style>
      
.sony{
	background-color: rgb(5,5,5); 
	height: 285px;
	width: 200px;
	
	float: left; 
	margin-left: 80px;
	border-radius: 10px; 
	margin-top: 20px;
}

.apple{
	background-color: rgb(5,5,5); 
	height: 285px;
	width: 200px; 
	float: left;
	margin-left: 110px; 
	border-radius: 20px;
        margin-top: 20px; 

}

.lg{
	background-color: rgb(5,5,5); 

	height: 285px;
	width: 200px; 
	float: left;
	margin-left: 110px;
	border-radius: 10px;
	margin-top: 20px;
	
}

.ofertas{
	background-color: rgb(5,5,5); 
	height: 285px;
	width: 200px; 
	float: left;
	margin-left: 110px;
	border-radius: 10px;
	margin-top: 20px;

	/*position: absolute;
	top: 280px;
	left: 1070px;*/ 
}


#caja5{ /*el pie de pagina */
	float: left;
	background-color: rgb(60,60,60); 
	width: 1320px; 
	height: 150px; 
	border:transparent; 


	font-family: corbel; 
	color: white;


}


.galeria{ /*El amarillo */
	background-color:rgb(200,200,200); 
	height: 120px;
	width: 850px; 
	margin-top: 20px;
	margin-left: 40px;
	float: left;
	border-radius: 10px; 

}


.contenedor{ /*El principal */
	width: 1320px;
}


.contenido{ /* El gris */
	background-color: rgb(153, 153, 153); 
	height: 330px; 
	width: 1290px;
	margin-top: 20px; 
	margin-left: 20px;
	border-radius: 10px;

}

.contacto{
	background-color:rgb(85, 178, 172); 
	height: 120px;
	width: 400px; 
	margin-left: 20px;
	margin-top: 20px;
	margin-bottom: 40px;
	clear: both;
	float: left;
	border-radius: 10px;  

	
}
      
      
      
      </style>
  
  
  
  
  
  
</head>
<body data-spy="scroll" data-target=".navbar" data-offset="50" style="background-color: black" id="cuerpoUno" >
<div class="container">
<nav class="navbar navbar-inverse navbar-fixed-top" >
  <div class="container-fluid">
    <div class="navbar-header">
                   <!-- <span class="navbar-brand">MegaCómputo</span> -->
                    </div>
      <div class="collapse navbar-collapse" id="myNavbar">
    <ul class="nav navbar-nav">
      <li class="active"  style="margin-left: 460px;" ><a href="index.jsp">Inicio</a></li>
      <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#" >Jugar<span class="caret"></span></a>
                <ul class="dropdown-menu">
                <li><a href="ingresar.jsp">Iniciar sesión</a></li>
                <li class="divider"></li>
               <!--<li><a href="ingresar.jsp">Tablets</a></li> -->
               
                </ul>
    </li>
    
    
     <!-- <li><a href="#">Ofertas</a></li> -->
    <!--  <li><a href="preguntasfrecuentes.jsp">Preguntas Frecuentes</a></li>-->
      <li><a href="mandarCorreo.jsp">Contacto</a></li>
      <li><a href="ingresar.jsp">Soy Administrador</a></li>
      
      <li><a href="insertUser.jsp">Crear una cuenta</a></li>
      <!--<li><a href="nuevasllegadas.jsp">Próximos Lanzamientos</a></li> -->
      <!-- <li><a href="contacto.jsp">Contacto</a></li>-->
    </ul>
          <ul class="nav navbar-nav navbar-right">
                                
                            <!--
                                <li>
                                    <a href="carrito.jsp"><span class="glyphicon glyphicon-shopping-cart"></span> Carrito <span class="badge">0</span></a>
                                </li>
                                
                            -->
                          
                        </ul>
      </div>
  </div>
  
</nav>
</div>

    <br><br><br>
    
     
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <!-- <font style="font-family: corbel; font-size: 20px;color: white;">  -->
       <!--%! int numeroAccesos = 0; %> <!--Variable local para conocer los accesos-->
       <!--%="Este día eres el visitante número: " + (//numeroAccesos++) +" "%> 
      <!-- </font><div>-->
       
       
       
       
       
       
<br>
<!--
 &nbsp &nbsp&nbsp &nbsp &nbsp &nbsp <audio controls=""> 
		<source src="cancion.mp3" type="audio/mpeg"> Tu navegador no soporta audio
</audio> -->


<div class=" contenedor">
    
    <font id="fuenteNombre"> </font>
    
    <center><img  style="border-radius: 10px; height: 570px; width:1300px;" id="logotipo" src="./images/spacemath.jpg"></center> 

    
    <center><img  style="border-radius: 10px; height: 90px; width:210px;" id="logotipo" src="./images/sociales.png"></center>
	
    
    
    
   <!--
    <div class="contenido">
		<!--<img id ="imgCelulares" src="beiner.jpg">

		<div class = "sony"> 

			<center><font style="color: steelblue; font-family: verdana;">¿Quienes somos?<br> <br>  </font>
                            <font id="fuenteSony">
                            Somos YouThinking, empresa 100% mexicana que desde hace más de veinte años hemos
                            ofrecido los mejores examenes de certificaciones en línea sobre diversos temas. 
                            
                            
                            
                            </font></center>
			<br><br>
			<!--<a href="tablaSony.html"><center><img src="carrito.png"></center></a>


		  </div>

		<div class="apple">
					
			<center><font style="color: steelblue; font-family: verdana;">Nuestra misión:<br> <br>  </font>
                            <font id="fuenteSony">Estamos comprometidos a ofrecerte los mejores examenes en línea,
                            brindándote una certificación que te ayuda a crecer en tu vida 
                            laboral, todo esto, con absoluto respeto, confianza y privacidad de 
                            tus resultados.
                         
                            
                        </font></center>
			<br><br>
                        
                        
                        
                        
			<!--<a href="tablaApple.html"><center><img src="logoApple.jpg"></center></a>
			
		</div> -->

                        
                <!--        
		<div class=" lg">
                            <center><font style="color: steelblue; font-family: verdana;">Nuestra visión:<br> <br>  </font>
                            <font id="fuenteLG">Ser de las mejores empresas de examenes en línea para que puedas conseguir
                            una certificación de manera sencilla y a un precio no tan elevado. 
                            
                            
                        </font></center>
			<br><br>
                        
			<!--<a href="tablaLG.html"><center><img src="logoLG.jpg"></center></a>

		</div> -->

                        
                <!--        
		<div class="ofertas"> 
			<center><font style="color: steelblue; font-family: verdana;">¡Elígenos!<br> <br>  </font>
                        <font id="fuenteEmpresa">
                        Hemos sido clasificadas entre las mejores empresas en línea para la 
                        aplicación de examenes. 
                        
                        
                        </font> </center>
                        
			<br> <br>
                        
			<!--<a href="#"><center><img id="dinero" src="pesos.jpg"></center></a>
			
		</div>
	</div> -->



       <!--                     
	<div class="contacto"> 
		<center><font style="color:white"  id="fuenteContacto">Av. Las Palmas no.890, fracc. Lomas Bellas<br>

		Aguascalientes, México <br>
		¡Llámanos! : 9104905 <br>
		Correo electrónico: youthinking@gmail.com
                </center>
		<!--<center><a title="Facebook" href="https://www.facebook.com/profile.php?id=100001440172953" target="_blank"><img id="imgFacebook" src="fb.png" alt="Los Tejos"/></a></center>

		</font>
	</div> -->

                
            
       <!--  <div class="galeria" style="margin-left: 220px;">
           
	</div>
        -->


</div>

       
       
    
    
    
         
</body>
</html>
