<%-- 
    Document   : fin3
    Created on : 26/11/2017, 04:40:00 PM
    Author     : CARLOS
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
        <link rel="stylesheet" type="text/css" href="estilo.css">
        <title>JSP Page</title>
        
        <style>
/* The Modal (background) */

@font-face {
    font-family: "outerspace"; /*a name to be used later*/
    src: url("SpaceMathFuentes/outerspace-beta.ttf") format("truetype"); /*URL to font*/
}

.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    padding-top: 100px; /* Location of the box */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}

/* Modal Content */
.modal-content {
    position: relative;
    background-color: #fefefe;
    margin: auto;
    padding: 0;
    border: 1px solid #888;
    width: 80%;
    box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2),0 6px 20px 0 rgba(0,0,0,0.19);
    -webkit-animation-name: animatetop;
    -webkit-animation-duration: 0.4s;
    animation-name: animatetop;
    animation-duration: 0.4s
}

/* Add Animation */
@-webkit-keyframes animatetop {
    from {top:-300px; opacity:0} 
    to {top:0; opacity:1}
}

@keyframes animatetop {
    from {top:-300px; opacity:0}
    to {top:0; opacity:1}
}

/* The Close Button */
.close {
    color: white;
    float: right;
    font-size: 28px;
    font-weight: bold;
}

.close:hover,
.close:focus {
    color: #000;
    text-decoration: none;
    cursor: pointer;
}

.modal-header {
    font-family: "outerspace";
    text-align: center;
   padding: 2px 16px;
    background-color: #4fa897;
    color: white;
}

.modal-body {padding: 2px 16px;
text-align: center;
}

.modal-footer {
    padding: 2px 16px;
    background-color: #4fa897;
    color: white;
}
</style>
        
    </head>
    <%String usuario = objCuenta.getUsuario();
    
    String idLog="", idResponde="", puntaje="";
           String consulta = "select idUsuario from usuarios where usuario=('" + usuario + "');";
            objConn.Consultar(consulta);
         try {
                 idLog = objConn.rs.getString(1);
            } catch (Exception e) {
            }
    String alta = "insert into desbloquea (idUsuario, idLogro) values (" + Integer.parseInt(idLog) + ", 4);";
        objConn.Actualizar(alta);
    consulta = "SELECT idResponde FROM responde ORDER BY idResponde DESC LIMIT 1;";
                 objConn.Consultar(consulta);
                 try {
                     idResponde = objConn.rs.getString(1);
                    } catch (Exception e) {}
        String consulta1="SELECT puntajePrueba from responde where idResponde= ("+idResponde+");";
        objConn.Consultar(consulta1);
        try {
                    puntaje = objConn.rs.getString(1);
                    } catch (Exception e) {}
        
        
    %>
        
    <body onload="showScore()">
        <div id="marg4">
            <img title="Menu principal" onclick="location = 'menuUsuario.jsp'" src="casa.png" 
                 width="80" height="80"  /></div>
        
        <!-- The Modal -->
<div id="myModal" class="modal">

  <!-- Modal content -->
  <div class="modal-content">
    <div class="modal-header">
      <span class="close">&times;</span>
      <h2>Prueba terminada</h2>
    </div>
    <div class="modal-body">
        <p>Tu puntaje final es: <%out.print(puntaje);%></p>
    </div>
    <div class="modal-footer">
      <h3></h3>
    </div>
  </div>

</div>

<script>
// Get the modal
var modal = document.getElementById('myModal');

// Get the button that opens the modal

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks the button, open the modal 
function showScore() {
    modal.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
    modal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>

    </body>
</html>