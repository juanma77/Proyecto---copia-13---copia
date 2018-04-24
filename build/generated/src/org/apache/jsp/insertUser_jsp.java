package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class insertUser_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("        <title>Crear Cuenta</title>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        <style>\n");
      out.write("         html{\n");
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
      out.write("            margin-left: 280px;\n");
      out.write("            margin-right: 350px;\n");
      out.write("            margin-top:  150px;\n");
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
      out.write("            margin-left: 100px;\n");
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
      out.write("            margin-left: 270px;\n");
      out.write("            margin-right: 350px;\n");
      out.write("            margin-top:  40px;\n");
      out.write("            top:0;\n");
      out.write("            left: 30%;\n");
      out.write("\n");
      out.write("        }\n");
      out.write("        \n");
      out.write("        form{\n");
      out.write("            color: black;\n");
      out.write("            font-family: bariol; \n");
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
      out.write("        </style>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("    </head>\n");
      out.write("    <body style=\"background-color: darkcyan;\">\n");
      out.write("        \n");
      out.write("        <script>\n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("        function validarCampos(){\n");
      out.write("            \n");
      out.write("            var clave1 = document.getElementById(\"clave1\").value; \n");
      out.write("            var clave2= document.getElementById(\"clave2\").value; \n");
      out.write("            \n");
      out.write("            var miusuario = document.getElementById(\"usuario\").value; \n");
      out.write("            var minombre = document.getElementById(\"nombre\").value; \n");
      out.write("            var micorreo = document.getElementById(\"correo\").value;\n");
      out.write("            var miseguridad = document.getElementById(\"seguridad\").value; \n");
      out.write("            var mibloqueo = document.getElementById(\"bloqueo\").value; \n");
      out.write("            var misexo = document.getElementById(\"sexo\").value; \n");
      out.write("            \n");
      out.write("            \n");
      out.write("            if(clave1== clave2  && clave1.length!=0 && clave2.length!=0\n");
      out.write("                    \n");
      out.write("                && miusuario!= null &&miusuario!=0 && clave1 != null && clave2 != null && minombre != null &&minombre!=0\n");
      out.write("                    && micorreo!= null &&micorreo!=0 && miseguridad !=null &&miseguridad!=0 && mibloqueo!=null &&mibloqueo!=0 &&misexo!=0){\n");
      out.write("                alert(\"Contraseñas iguales y todos los campos completos\");\n");
      out.write("                return true;\n");
      out.write("            }else{\n");
      out.write("                alert(\"Las contraseñas no coinciden o algun campo incompleto\");\n");
      out.write("                return false; \n");
      out.write("            }\n");
      out.write("            \n");
      out.write("           \n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("\n");
      out.write("        }\n");
      out.write("            \n");
      out.write("        </script>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("         <center>\n");
      out.write("        <div id=\"marg2\">\n");
      out.write("            <div id=\"letrero2\"></div>\n");
      out.write("            <div id=\"formulario2\">\n");
      out.write("        \n");
      out.write("        \n");
      out.write("       \n");
      out.write("        <form action=\"executeInsertUser.jsp\" method=\"post\" name=\"formNuevoUser\" onsubmit=\"return validarCampos()\">\n");
      out.write("            \n");
      out.write("            Usuario: <input type=\"text\" name=\"usuario\" value=\"\" id=\"usuario\"/><br><br>\n");
      out.write("\n");
      out.write("            Clave: <input type=\"text\" name=\"clave\" value=\"\" id=\"clave1\"/> <!--1--><br><br>\n");
      out.write("\n");
      out.write("            Repite tu clave: <input type=\"text\" name=\"clave2\" value=\"\" id=\"clave2\"/> <!--2--><br><br>\n");
      out.write("\n");
      out.write("            Nombre: <input type=\"text\" name=\"nombre\" value=\"\" id=\"nombre\"/><br><br>\n");
      out.write("\n");
      out.write("            Correo:<input type=\"text\" name=\"correo\" value=\"\" id=\"correo\"/><br><br>\n");
      out.write("\n");
      out.write("            Color favorito:<input type=\"text\" name=\"seguridad\" value=\"\" id=\"seguridad\"/><br><br>\n");
      out.write("\n");
      out.write("            sexo: <input type=\"text\" name=\"sexo\" value=\"\" id=\"sexo\"/><br><br>\n");
      out.write("\n");
      out.write("            <input type=\"submit\" value=\"enviar\" onclick=\"location = 'menuUsuario.jsp'\"/>\n");
      out.write("\n");
      out.write("\n");
      out.write("            \n");
      out.write("        </form>\n");
      out.write("                \n");
      out.write("         </div>\n");
      out.write("      </div>\n");
      out.write("        \n");
      out.write("        </center>        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
