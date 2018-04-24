<%@page import="clases.Usuarios"%>
<%-- 
    Document   : login
    Created on : 4/11/2016, 06:55:52 PM
    Author     : GM
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true" language="java" import="java.util.*" %>
<jsp:useBean id="objConn" class="mysql.MySqlConexion"/>

<% 
        ArrayList <Usuarios> lista = new ArrayList();
 
        String consulta="select * from usuarios;";
        objConn.Consultar(consulta);
        int n=0;
        int i,j;
        if(objConn.rs!=null){
            try{
                objConn.rs.last();
                n=objConn.rs.getRow();
                objConn.rs.first();
            }catch(Exception e){}
            //String[][] datos=new String[n][4];
            //datos=new String[n][4];
            String idUsuario, nombre, cuenta, password,pregunta, correo,bloquear, sexo;
            for(i=0;i<n;i++){
                
                    try{
                        idUsuario=objConn.rs.getString(1);
                        //out.println(idUsuario+ "<br>");
                        nombre=objConn.rs.getString(2);
                        //out.println(nombre+ "<br>");
                        cuenta =objConn.rs.getString(3);
                        //out.println(cuenta+ "<br>");
                        password =objConn.rs.getString(4);
                        //out.println(password+ "<br>");
                        pregunta =objConn.rs.getString(5);
                        //out.println(pregunta+ "<br>");
                        correo =objConn.rs.getString(6);
                        //out.println(correo+ "<br>");                    
                        bloquear ="0";
                        sexo=objConn.rs.getString(7);
                        //out.println(bloquear+ "<br><br><br><hr>");
                        lista.add(new Usuarios(Integer.parseInt(idUsuario),nombre,cuenta,password,pregunta,correo,Integer.parseInt(bloquear),sexo));
                        objConn.rs.next();
                    }catch(Exception e){ }
                
                
            }
         }
        objConn.closeRsStmt();
        //out.println("\n n="+n+" "+lista.get(0).getPassword());        
        application.setAttribute("lista", lista);
 
    String captchas[] = {"4","5","6"};
    String respuestas_captchas[] = {"jirafa","gato","leon"};
   
    Random rnd = new Random();    
    int aleatorio = (int)(rnd.nextDouble() * 3); //num aleatorio de 0-2
    
    String imagen = captchas[aleatorio];
    String respuesta = respuestas_captchas[aleatorio];
    
    application.setAttribute("respuesta_captcha", respuesta);
    
    String usuario = "";
    String contra = "";
    String fechaUltimoAcceso = "";
    
    /*buscar cookies de usuario y ultima fecha de ingreso*/
    Cookie[] todosLosCookies = request.getCookies();
    if (todosLosCookies != null) {
        for (i = 0; i < todosLosCookies.length; i++) {
            Cookie unCookie = todosLosCookies[i];
            if (unCookie.getName().equals("cookieUsuario")) {
                usuario = unCookie.getValue();
            }
            if(unCookie.getName().equals("cookieContra")){
                contra = unCookie.getValue();
            }
            if (unCookie.getName().equals("ultimoAcceso")) {
                fechaUltimoAcceso = unCookie.getValue();
            }
        }//fin for
    }//fin condicion

    /* Para la primera vez que se va a registrar la cookie
     de ultima fecha de ingreso */
    if (fechaUltimoAcceso.equals("")) {
        DateFormat df = DateFormat.getDateInstance(DateFormat.LONG);
        DateFormat hourFormat = new SimpleDateFormat("HH:mm:ss");
        fechaUltimoAcceso = df.format(new Date()) + " " + hourFormat.format(new Date());
        Cookie cookieFecha = new Cookie("ultimoAcceso", fechaUltimoAcceso);
        cookieFecha.setPath("/");
        cookieFecha.setMaxAge(60 * 60 * 24);
        response.addCookie(cookieFecha);
    }
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css">
        
        <title>Proceso Login</title>
        
        
              
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
            margin-left: 300px;
            margin-right: 300px;
            margin-top:  50px;
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
            margin-left: 10px;
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
            margin-left: 240px;
            margin-right: 350px;
            margin-top:  80px;
            top:0;
            left: 30%;

        }
        
        form{
            color: black;
            font-family: bariol; 
            font-size: 20px;
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
    <center>
        <!--<b>Inicia sesión para jugar</b> -->
        
            <%
                if(request.getParameter("error")!=null){
                    out.println(request.getParameter("error"));
                }
                
                //ArrayList<Usuarios> lista = (ArrayList<Usuarios>)(application.getAttribute("lista"));     

                //out.println("Elementos en la lista: "+ lista.size());
                
                application.setAttribute("lista", lista);
            %>
            
            
            
            <div id="marg1">  
            <div id="letrero">
            </div>
        <div id= "formulario">
            
            
            
            
        <form action="checklogin.jsp" method="post">
             <!--Última vez que accedió a esta página:<br><%=fechaUltimoAcceso%><br><br>-->
            Usuario: <input type="text" name="usuario" value="<%=usuario%>" size=20><br><br>
            Clave: <input type="password" name="clave" value="<%=contra%>" size=20/><br><br>
            Recordar mi usuario y contraseña: <input type="checkbox" name="recordarUsuario" value="on"><br><br>
          <!-- ¿Qué animal es el de la imagen?
           <input type="text" name="captcha" size=20> <img src="./imagesCaptcha/<%=imagen%>.png"><br><br>-->
            
            <input type="submit" value="enviar" ><br><br>
            
            <!--<a href="cambiarcontrasena.jsp">¿Olvidaste tu contraseña? Cambiala</a> -->
        </form>
            
            <b class="Texto">¿No tienes cuenta?</b>
       <p></p>
        
      
        <a class="Texto" href="insertUser.jsp">Crear una </a>
        </center>
        </div>
        
        </div>
            
            
            
            
          </center> 
    </body>
</html>