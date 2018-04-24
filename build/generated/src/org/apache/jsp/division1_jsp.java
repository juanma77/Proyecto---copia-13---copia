package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class division1_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      clases.Respuestas formbean = null;
      synchronized (_jspx_page_context) {
        formbean = (clases.Respuestas) _jspx_page_context.getAttribute("formbean", PageContext.PAGE_SCOPE);
        if (formbean == null){
          formbean = new clases.Respuestas();
          _jspx_page_context.setAttribute("formbean", formbean, PageContext.PAGE_SCOPE);
        }
      }
      out.write('\n');
      org.apache.jasper.runtime.JspRuntimeLibrary.introspect(_jspx_page_context.findAttribute("formbean"), request);
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>División 1</title>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <style>\n");
      out.write("\n");
      out.write("            body {\n");
      out.write("                background: url(\"./images/division1.jpg\");\n");
      out.write("                background-size: 1400px 700px;\n");
      out.write("                background-repeat: no-repeat;\n");
      out.write("\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            #division1{\n");
      out.write("\n");
      out.write("                position:  absolute;\n");
      out.write("                top:  480px; \n");
      out.write("                left: 1010px;\n");
      out.write("                width: 170px; \n");
      out.write("                height: 100px;\n");
      out.write("                border-color: black;\n");
      out.write("                font-size: 30px;\n");
      out.write("                font-family: bariol;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            #enviar1{\n");
      out.write("                position:  absolute;\n");
      out.write("                top:  600px; \n");
      out.write("                left: 1010px; \n");
      out.write("            }\n");
      out.write("\n");
      out.write("            #siguiente{\n");
      out.write("\n");
      out.write("                position: absolute;\n");
      out.write("                top:  400px; \n");
      out.write("                left: 1180px; \n");
      out.write("            }\n");
      out.write("\n");
      out.write("        </style>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <script>\n");
      out.write("\n");
      out.write("\n");
      out.write("            function validarDivision1() {\n");
      out.write("\n");
      out.write("                varDivision1 = document.getElementById(\"division1\");\n");
      out.write("                if (varDivision1.value == 2) {\n");
      out.write("\n");
      out.write("                    alert(\"PUNTOS : +1\");\n");
      out.write("                    varDivision1.disabled=true;\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        </script>    \n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("    </head>    \n");
      out.write("    <body>  \n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <form action=\"\" method=\"post\" onsubmit=\"validarDivision1()\">\n");
      out.write("\n");
      out.write("\n");
      out.write("            <!--Respuesta:--> <input type=\"text\" id=\"division1\" required> <br><br>\n");
      out.write("\n");
      out.write("            <!-- Contraseña:<input type=\"password\" name=\"contrasena\"  required><br><br> -->\n");
      out.write("\n");
      out.write("            <img id=\"siguiente\" onclick=\"location = 'division2.jsp'\" src=\"sig.png\" width=\"90\" height=\"50\" />\n");
      out.write("\n");
      out.write("\n");
      out.write("            <input id=\"enviar1\" type=\"submit\" value=\"Enviar\" />\n");
      out.write("\n");
      out.write("            <input type=\"hidden\" name=\"bandera\" value=\"0\">\n");
      out.write("\n");
      out.write("\n");
      out.write("        </form>   \n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
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
