package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import clases.Usuarios;
import java.text.SimpleDateFormat;
import java.text.DateFormat;
import java.util.*;

public final class ingresar_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write('\n');
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      mysql.MySqlConexion objConn = null;
      synchronized (_jspx_page_context) {
        objConn = (mysql.MySqlConexion) _jspx_page_context.getAttribute("objConn", PageContext.PAGE_SCOPE);
        if (objConn == null){
          objConn = new mysql.MySqlConexion();
          _jspx_page_context.setAttribute("objConn", objConn, PageContext.PAGE_SCOPE);
        }
      }
      out.write('\n');
      out.write('\n');
 
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
            String idUsuario, nombre, cuenta, password,pregunta, correo,bloquear;
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
                        bloquear =objConn.rs.getString(7);
                        //out.println(bloquear+ "<br><br><br><hr>");
                        lista.add(new Usuarios(Integer.parseInt(idUsuario),nombre,cuenta,password,pregunta,correo,Integer.parseInt(bloquear)));
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

      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("        \n");
      out.write("        <title>Proceso Login</title>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("              \n");
      out.write("    <style>\n");
      out.write("            \n");
      out.write("        html{\n");
      out.write("            height: 100%;\n");
      out.write("            width: 100%\n");
      out.write("        }\n");
      out.write("        body{\n");
      out.write("            background-image: url(\"./images/fondo.png\");\n");
      out.write("            background-repeat: no-repeat;\n");
      out.write("            background-size: 100%;\n");
      out.write("            margin: 0px;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        #marg1{\n");
      out.write("\n");
      out.write("            margin-left: 200px;\n");
      out.write("            margin-right:  300px;\n");
      out.write("            margin-top: 0;\n");
      out.write("            background-image: url(\"./images/inicio.png\") ;\n");
      out.write("            background-size: 900px, 600px;\n");
      out.write("            background-repeat: no-repeat;\n");
      out.write("            top:0;\n");
      out.write("            left: 30%;\n");
      out.write("            bottom: 0;\n");
      out.write("            width: 900px;\n");
      out.write("            height: 600px;\n");
      out.write("        }\n");
      out.write("        #letrero{\n");
      out.write("            background-image: url(\"./images/ini.png\") ;\n");
      out.write("            background-size: 100%;\n");
      out.write("            background-repeat: no-repeat;\n");
      out.write("            margin-left: 220px;\n");
      out.write("            margin-right: 350px;\n");
      out.write("            top:0;\n");
      out.write("            left: 30%;\n");
      out.write("\n");
      out.write("            width: 500px;\n");
      out.write("            height: 150px;\n");
      out.write("\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        #formulario{\n");
      out.write("\n");
      out.write("            background-size: 100%;\n");
      out.write("            margin-left: 300px;\n");
      out.write("            margin-right: 300px;\n");
      out.write("            margin-top:  50px;\n");
      out.write("            top:0;\n");
      out.write("            left: 30%;\n");
      out.write("\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .form{\n");
      out.write("            background-color: black;\n");
      out.write("            margin-top:  5px;\n");
      out.write("            width: 400px;\n");
      out.write("            height: 40px;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .Texto{\n");
      out.write("            margin-left: 10px;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        #marg2{\n");
      out.write("            margin-left: 200px;\n");
      out.write("            margin-right:  300px;\n");
      out.write("            margin-top: 0;\n");
      out.write("            background-image: url(\"./images/reg.png\") ;\n");
      out.write("            background-size: 900px, 600px;\n");
      out.write("            background-repeat: no-repeat;\n");
      out.write("            top:0;\n");
      out.write("            left: 30%;\n");
      out.write("            bottom: 0;\n");
      out.write("            width: 900px;\n");
      out.write("            height: 600px;   \n");
      out.write("        }\n");
      out.write("\n");
      out.write("        #letrero2{\n");
      out.write("            background-image: url(\"./images/re.png\") ;\n");
      out.write("            background-size: 100%;\n");
      out.write("            background-repeat: no-repeat;\n");
      out.write("            margin-left: 190px;\n");
      out.write("            margin-right: 350px;\n");
      out.write("            top:0;\n");
      out.write("            left: 30%;\n");
      out.write("\n");
      out.write("            width: 500px;\n");
      out.write("            height: 180px;\n");
      out.write("\n");
      out.write("        }\n");
      out.write("\n");
      out.write("\n");
      out.write("        #formulario2{\n");
      out.write("            background-size: 100%;\n");
      out.write("            margin-left: 240px;\n");
      out.write("            margin-right: 350px;\n");
      out.write("            margin-top:  80px;\n");
      out.write("            top:0;\n");
      out.write("            left: 30%;\n");
      out.write("\n");
      out.write("        }\n");
      out.write("        \n");
      out.write("        form{\n");
      out.write("            color: black;\n");
      out.write("            font-family: bariol; \n");
      out.write("            font-size: 20px;\n");
      out.write("        }\n");
      out.write("        \n");
      out.write("        a{\n");
      out.write("            font-family: bariol;\n");
      out.write("            color:midnightblue;\n");
      out.write("            \n");
      out.write("            \n");
      out.write("        }\n");
      out.write("        \n");
      out.write("        b{\n");
      out.write("             font-family: bariol;\n");
      out.write("        }\n");
      out.write("        \n");
      out.write("        \n");
      out.write("    </style>   \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("    </head>\n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    <body style=\"background-color: darkcyan;\">\n");
      out.write("    <center>\n");
      out.write("        <!--<b>Inicia sesión para jugar</b> -->\n");
      out.write("        \n");
      out.write("            ");

                if(request.getParameter("error")!=null){
                    out.println(request.getParameter("error"));
                }
                
                //ArrayList<Usuarios> lista = (ArrayList<Usuarios>)(application.getAttribute("lista"));     

                //out.println("Elementos en la lista: "+ lista.size());
                
                application.setAttribute("lista", lista);
            
      out.write("\n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("            <div id=\"marg1\">  \n");
      out.write("            <div id=\"letrero\">\n");
      out.write("            </div>\n");
      out.write("        <div id= \"formulario\">\n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("        <form action=\"checklogin.jsp\" method=\"post\">\n");
      out.write("            Última vez que accedió a esta página:<br>");
      out.print(fechaUltimoAcceso);
      out.write("<br><br>\n");
      out.write("            Usuario: <input type=\"text\" name=\"usuario\" value=\"");
      out.print(usuario);
      out.write("\" size=20><br><br>\n");
      out.write("            Clave: <input type=\"password\" name=\"clave\" value=\"");
      out.print(contra);
      out.write("\" size=20/><br><br>\n");
      out.write("            Recordar mi usuario y contraseña: <input type=\"checkbox\" name=\"recordarUsuario\" value=\"on\"><br><br>\n");
      out.write("            ¿Qué animal es el de la imagen?\n");
      out.write("            <input type=\"text\" name=\"captcha\" size=20> <img src=\"./imagesCaptcha/");
      out.print(imagen);
      out.write(".png\"><br><br>\n");
      out.write("            \n");
      out.write("            <input type=\"submit\" value=\"enviar\" ><br><br>\n");
      out.write("            \n");
      out.write("            <!--<a href=\"cambiarcontrasena.jsp\">¿Olvidaste tu contraseña? Cambiala</a> -->\n");
      out.write("        </form>\n");
      out.write("            \n");
      out.write("            <b class=\"Texto\">¿No tienes cuenta?</b>\n");
      out.write("       <p></p>\n");
      out.write("        \n");
      out.write("      \n");
      out.write("        <a class=\"Texto\" href=\"insertUser.jsp\">Crear una </a>\n");
      out.write("        </center>\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("        </div>\n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("          </center> \n");
      out.write("    </body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
