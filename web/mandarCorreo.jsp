<%-- 
    Document   : mandarCorreo
    Created on : 13/11/2017, 10:04:38 PM
    Author     : Juan Manuel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Email Client</title>
        
        <style>
            
            body{
                background-color: darkcyan; 
            } 
            
            input{
                border-radius: 5px;
            }
            
            h1{
                font-family: arial; 
                color: #50e389; 
                
            }
            
            table{
                <%--border--%>
            }
            
            b{
                font-family: corbel;
                font-size: 20px;
            }
            
            form{
                color:white;
            }
            
        </style>
        
    </head>
    <body background="./images/contacto.png">
    <br><br>
    <center> <h1>Ponte en contacto con nosotros</h1></center>
        
        <center>
        <form method="POST" action="MailDispatcherServlet">
            <table>
                <tr>
                    <td align="right"><b>Correo destino:</b></td>
                    <td>
                        <input type="text" name="email" size="75">
                    </td>
                </tr>
                <tr>
                    <td align="right"><b>Asunto:</b></td>
                    <td>
                        <input type="text" name="subject" size="75">
                    </td>
                </tr>
                <tr>
                    <td align="right"><b>Mensaje:</b></td>
                    <td>
                        <textarea name="message" cols="75" rows="6"></textarea>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <input type="submit" value="Enviar">
                    </td>
                </tr>
            </table>
        </form> </center> <br> 
       
        
     <center><img  style="border-radius: 10px; height: 190px; width:210px;" id="logotipo" src="./images/satelite.png"></center> 
     <br>
        
     
     <center><img  style="border-radius: 10px; height: 90px; width:210px;" id="logotipo" src="./images/sociales.png"></center>
        
    
    </body>
    
    
</html>
