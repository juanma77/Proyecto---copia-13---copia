package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class finalizarcompra_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>Finalizar Compra</title>\n");
      out.write("        \n");
      out.write("        <style>\n");
      out.write("            \n");
      out.write("            input{\n");
      out.write("                border-radius: 5px; \n");
      out.write("                \n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            form{\n");
      out.write("                font-family: corbel; \n");
      out.write("                border: 5px solid black;\n");
      out.write("                text-align: center; \n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            div{\n");
      out.write("                background-color: lightseagreen; \n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            h1,h4{\n");
      out.write("                font-family: arial; \n");
      out.write("                color: white; \n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("    </head>\n");
      out.write("    <body style=\"background-color: darkcyan;\">\n");
      out.write("        \n");
      out.write("       <div> \n");
      out.write("        <h1>Finalizar tu compra</h1>\n");
      out.write("        <form action=\"#\" method=\"post\">\n");
      out.write("            \n");
      out.write("            <h4>Forma de pago:</h4> \n");
      out.write("            Tarjeta de crédito <br>\n");
      out.write("            \n");
      out.write("            <input type=\"radio\" name=\"pago\" value=\"visa\">Visa \n");
      out.write("            <input type=\"radio\" name=\"pago\" value=\"mastercard\">MasterCard \n");
      out.write("            <input type=\"radio\" name=\"pago\" value=\"american\">American Express<br> <br>\n");
      out.write("            \n");
      out.write("            PayPal <br>\n");
      out.write("            \n");
      out.write("            Número de cuenta : <input type=\"text\" name=\"paypal\" value=\"\"><br><br>\n");
      out.write("            \n");
      out.write("            Completa la siguiente información <br><br>\n");
      out.write("            \n");
      out.write("            Nombre completo: <input type=\"text\" name=\"nombre\" value=\"\"><br> <br>\n");
      out.write("            Dirección de email: <input type=\"text\" name=\"correo\" value=\"\"><br> <br>\n");
      out.write("            Dirección: <input type=\"text\" name=\"direccion\" value=\"\"><br> <br>\n");
      out.write("            Ciudad: <input type=\"text\" name=\"ciudad\" value=\"\"><br> <br>  \n");
      out.write("            País: <input type=\"text\" name=\"pais\" value=\"\"><br> <br>\n");
      out.write("            Código postal: <input type=\"text\" name=\"postal\" value=\"\"><br> <br>\n");
      out.write("            Número telefónico: <input type=\"text\" name=\"telefono\" value=\"\"><br> <br>\n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("\n");
      out.write("            <input type=\"submit\" value=\"enviar\" />\n");
      out.write("            \n");
      out.write("        </form>\n");
      out.write("     </div>   \n");
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
