package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class sumas1_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("        <title>Sumas 1</title>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    <body>  \r\n");
      out.write("        <style>\r\n");
      out.write("\r\n");
      out.write("            body {\r\n");
      out.write("                background: url(\"./images/sumas1.jpg\");\r\n");
      out.write("                background-size: 1400px 700px;\r\n");
      out.write("                background-repeat: no-repeat;\r\n");
      out.write("\r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("            #sumas1{\r\n");
      out.write("\r\n");
      out.write("                position:  absolute;\r\n");
      out.write("                top:  480px;  /* I usually locate relative to top  */\r\n");
      out.write("                left: 1010px;\r\n");
      out.write("                width: 170px; \r\n");
      out.write("                height: 100px;\r\n");
      out.write("                border-color: black;\r\n");
      out.write("                font-size: 30px;\r\n");
      out.write("                font-family: bariol;\r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("            #enviarsumas1{\r\n");
      out.write("                position:  absolute;\r\n");
      out.write("                top:  600px;  /* I usually locate relative to top  */\r\n");
      out.write("                left: 1010px; \r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("            #siguiente{\r\n");
      out.write("\r\n");
      out.write("                position: absolute;\r\n");
      out.write("                top:  400px; \r\n");
      out.write("                left: 1180px; \r\n");
      out.write("            }\r\n");
      out.write("        </style>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("        <script>\r\n");
      out.write("\r\n");
      out.write("            function validarSumas1() {\r\n");
      out.write("\r\n");
      out.write("                varSumas1 = document.getElementById(\"sumas1\").value;\r\n");
      out.write("                if (varSumas1 == 7) {\r\n");
      out.write("\r\n");
      out.write("                    alert(\"PUNTOS : +1\");\r\n");
      out.write("                }\r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("        </script>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("        <br><br><br><br><br><br>\r\n");
      out.write("        <br><br><br> <br><br><br>\r\n");
      out.write("        <br><br><br> <br><br><br>\r\n");
      out.write("        <br><br><br> <br><br><br>\r\n");
      out.write("        <br><br><br> <br>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("        <form action=\"\" method=\"post\"  onsubmit=\"validarSumas1()\">\r\n");
      out.write("\r\n");
      out.write("            <img id=\"siguiente\" onclick=\"location = 'sumas2.jsp'\" src=\"sig.png\" width=\"90\" height=\"50\" />\r\n");
      out.write("\r\n");
      out.write("            <input type=\"text\" name=\"usuario\"  required id=\"sumas1\"> <br><br>\r\n");
      out.write("\r\n");
      out.write("            <!-- Contraseña:<input type=\"password\" name=\"contrasena\"  required><br><br> -->\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("            <input id=\"enviarsumas1\" type=\"submit\" value=\"Enviar\"/>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("            <input type=\"hidden\" name=\"bandera\" value=\"0\">\r\n");
      out.write("\r\n");
      out.write("        </form>   \r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    </head>\r\n");
      out.write("    <!-- <body background=\"./images/sumas1.jpg;\" background-size: 80px 60px>-->\r\n");
      out.write("    <!--<h1>Hello World!</h1> -->\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!--\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write(".textentry {\r\n");
      out.write("    positions  absolute;\r\n");
      out.write("    top:       50px;  /* I usually locate relative to top  */\r\n");
      out.write("    left:      100px; /* left corner of container (screen) */\r\n");
      out.write("    height:    80px;  /*  often useful to keep screen orderly */\r\n");
      out.write("  }\r\n");
      out.write("  <form>\r\n");
      out.write("    <input type=\"text\" class=\"textentry\" />\r\n");
      out.write("  <body>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("-->\r\n");
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
