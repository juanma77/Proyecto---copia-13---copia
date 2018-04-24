<%-- 
    Document   : insertUser
    Created on : 11/12/2016, 10:12:05 PM
    Author     : Juan Manuel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css">
        <title>Crear Cuenta</title>
        
        
        <style>
         html{
            height: 100%;
            width: 100%
        }
        body{
            background-image: url("./images/fondo.png");
            background-repeat: no-repeat;
            background-size: 100%;
            margin: 0px;
        }

        #marg1{

            margin-left: 200px;
            margin-right:  300px;
            margin-top: 0;
            background-image: url("./images/inicio.png") ;
            background-size: 900px, 600px;
            background-repeat: no-repeat;
            top:0;
            left: 30%;
            bottom: 0;
            width: 900px;
            height: 600px;
        }
        #letrero{
            background-image: url("./images/ini.png") ;
            background-size: 100%;
            background-repeat: no-repeat;
            margin-left: 220px;
            margin-right: 350px;
            top:0;
            left: 30%;

            width: 500px;
            height: 150px;

        }

        #formulario{

            background-size: 100%;
            margin-left: 280px;
            margin-right: 350px;
            margin-top:  150px;
            top:0;
            left: 30%;

        }

        .form{
            background-color: black;
            margin-top:  5px;
            width: 400px;
            height: 40px;
        }

        .Texto{
            margin-left: 100px;
        }

        #marg2{
            margin-left: 200px;
            margin-right:  300px;
            margin-top: 0;
            background-image: url("./images/reg.png") ;
            background-size: 900px, 600px;
            background-repeat: no-repeat;
            top:0;
            left: 30%;
            bottom: 0;
            width: 900px;
            height: 600px;   
        }

        #letrero2{
            background-image: url("./images/re.png") ;
            background-size: 100%;
            background-repeat: no-repeat;
            margin-left: 190px;
            margin-right: 350px;
            top:0;
            left: 30%;

            width: 500px;
            height: 180px;

        }


        #formulario2{
            background-size: 100%;
            margin-left: 270px;
            margin-right: 350px;
            margin-top:  40px;
            top:0;
            left: 30%;

        }
        
        form{
            color: black;
            font-family: bariol; 
        }
        
        a{
            font-family: bariol;
            color:midnightblue;
            
            
        }
        
        b{
             font-family: bariol;
        }
        </style>
        
        
        
    </head>
    <body style="background-color: darkcyan;">
        
        <script>
            
            
            
        function validarCampos(){
            
            var clave1 = document.getElementById("clave1").value; 
            var clave2= document.getElementById("clave2").value; 
            
            var miusuario = document.getElementById("usuario").value; 
            var minombre = document.getElementById("nombre").value; 
            var micorreo = document.getElementById("correo").value;
            var miseguridad = document.getElementById("seguridad").value; 
            var mibloqueo = document.getElementById("bloqueo").value; 
            var misexo = document.getElementById("sexo").value; 
            
            
            if(clave1== clave2  && clave1.length!=0 && clave2.length!=0
                    
                && miusuario!= null &&miusuario!=0 && clave1 != null && clave2 != null && minombre != null &&minombre!=0
                    && micorreo!= null &&micorreo!=0 && miseguridad !=null &&miseguridad!=0 && mibloqueo!=null &&mibloqueo!=0 &&misexo!=0){
                alert("Contraseñas iguales y todos los campos completos");
                return true;
            }else{
                alert("Las contraseñas no coinciden o algun campo incompleto");
                return false; 
            }
            
           
            
            
            

        }
            
        </script>
        
        
         <center>
        <div id="marg2">
            <div id="letrero2"></div>
            <div id="formulario2">
        
        
       
        <form action="executeInsertUser.jsp" method="post" name="formNuevoUser" onsubmit="return validarCampos()">
            
            Usuario: <input type="text" name="usuario" value="" id="usuario"/><br><br>

            Clave: <input type="password" name="clave" value="" id="clave1"/> <!--1--><br><br>

            Repite tu clave: <input type="password" name="clave2" value="" id="clave2"/> <!--2--><br><br>

            Nombre: <input type="text" name="nombre" value="" id="nombre"/><br><br>

            Correo:<input type="text" name="correo" value="" id="correo"/><br><br>

            Color favorito:<input type="text" name="seguridad" value="" id="seguridad"/><br><br>

            Sexo (masculino/femenino): <input type="text" name="sexo" value="" id="sexo"/><br><br>

            <input type="submit" value="enviar" />


            
        </form>
                
         </div>
      </div>
        
        </center>        
        
        
    </body>
</html>
