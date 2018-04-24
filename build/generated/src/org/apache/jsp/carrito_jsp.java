package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.ArrayList;
import clases.Productos;

public final class carrito_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");

    float subtotal=0;
    float descuento=0;
    ArrayList <Productos> carrito=new ArrayList();
    HttpSession sesion=request.getSession();
    if(sesion.getAttribute("carrito")!=null){
        carrito=(ArrayList)sesion.getAttribute("carrito");
    }
    ArrayList <Integer> cantidadProductos=new ArrayList();
    if(sesion.getAttribute("cantidadProductos")!=null){
        cantidadProductos=(ArrayList)sesion.getAttribute("cantidadProductos");
    }
    

      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("  <title>Proyecto</title>\n");
      out.write("  <meta charset=\"utf-8\">\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("  <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\">\n");
      out.write("  <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js\"></script>\n");
      out.write("  <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js\"></script>\n");
      out.write("  <link href=\"Estilos/Estilo.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("</head>\n");
      out.write("<body data-spy=\"scroll\" data-target=\".navbar\" data-offset=\"50\">\n");
      out.write("<div class=\"container\">\n");
      out.write("<nav class=\"navbar navbar-inverse navbar-fixed-top\" >\n");
      out.write("  <div class=\"container-fluid\">\n");
      out.write("    <div class=\"navbar-header\">\n");
      out.write("                    <span class=\"navbar-brand\">JaltoSports</span>\n");
      out.write("                    </div>\n");
      out.write("      <div class=\"collapse navbar-collapse\" id=\"myNavbar\">\n");
      out.write("    <ul class=\"nav navbar-nav\">\n");
      out.write("      <li class=\"active\"><a href=\"index.html\">Inicio</a></li>\n");
      out.write("      <li class=\"dropdown\">\n");
      out.write("            <a class=\"dropdown-toggle\" data-toggle=\"dropdown\" href=\"#\">Tienda<span class=\"caret\"></span></a>\n");
      out.write("                <ul class=\"dropdown-menu\">\n");
      out.write("                <li><a href=\"checaUsuario.jsp\">Productos</a></li>\n");
      out.write("                <li class=\"divider\"></li>\n");
      out.write("                <li><a href=\"#\">Bats</a></li>\n");
      out.write("                <li class=\"divider\"></li>\n");
      out.write("                <li><a href=\"#\">Jerseys</a></li>\n");
      out.write("                <li class=\"divider\"></li>\n");
      out.write("                <li><a href=\"#\">Ofertas</a></li>\n");
      out.write("                </ul>\n");
      out.write("                            </li>\n");
      out.write("      <li><a href=\"index.html#acercaDe\">Acerca De</a></li>\n");
      out.write("      <li><a href=\"index.html#vision\">Visión-Misión-Objetivo</a></li>\n");
      out.write("      <li><a href=\"index.html#preguntas\">Ayuda</a></li>\n");
      out.write("      <li><a href=\"index.html#contacto\">Contáctanos</a></li>\n");
      out.write("    </ul>\n");
      out.write("          <ul class=\"nav navbar-nav navbar-right\">\n");
      out.write("                                \n");
      out.write("                                <li>\n");
      out.write("                                <button type=\"button\" class=\"btn btn-default collapsed\" data-toggle=\"collapse\" data-target=\"#logger\">\n");
      out.write("                                    <span class=\"glyphicon glyphicon-log-in\"></span> Inicia Sesión\n");
      out.write("                                </button>\n");
      out.write("                                </li>\n");
      out.write("                                <li>\n");
      out.write("                                    <a href=\"#\"><span class=\"glyphicon glyphicon-shopping-cart\"></span> Carrito <span class=\"badge\">0</span></a>\n");
      out.write("                                </li>\n");
      out.write("                                \n");
      out.write("                            \n");
      out.write("                          \n");
      out.write("                        </ul>\n");
      out.write("      </div>\n");
      out.write("  </div>\n");
      out.write("    \n");
      out.write("    <div style=\"height:100px\">\n");
      out.write("        \n");
      out.write("    </div>\n");
      out.write("        <div class=\"container\">\n");
      out.write("    <div class=\"row\">\n");
      out.write("        <div class=\"col-sm-12 col-md-10 col-md-offset-1\">\n");
      out.write("            <table class=\"table table-hover\">\n");
      out.write("                <thead>\n");
      out.write("                    <tr>\n");
      out.write("                        <th>Producto</th>\n");
      out.write("                        <th>Cantidad</th>\n");
      out.write("                        <th class=\"text-center\">Precio</th>\n");
      out.write("                        <th class=\"text-center\">Total</th>\n");
      out.write("                        <th> </th>\n");
      out.write("                    </tr>\n");
      out.write("                </thead>\n");
      out.write("                <tbody>\n");
      out.write("                    ");
 for(int i=0;i<carrito.size();i++) { 
      out.write("\n");
      out.write("                    <tr>\n");
      out.write("                        <td class=\"col-sm-8 col-md-6\">\n");
      out.write("                        <div class=\"media\">\n");
      out.write("                            <a class=\"thumbnail pull-left\" href=\"#\"> <img class=\"media-object\" src=\"Imagenes/bat.png\" style=\"width: 72px; height: 72px;\"> </a>\n");
      out.write("                            <div class=\"media-body\">\n");
      out.write("                                <h4 class=\"media-heading\"><a href=\"#\">");
      out.print( carrito.get(i).getNombre() );
      out.write("</a></h4>\n");
      out.write("                                <span>Status: </span><span class=\"text-success\"><strong>Quedan ");
      out.print( carrito.get(i).getExistencia() );
      out.write(" disponibles</strong></span>\n");
      out.write("                            </div>\n");
      out.write("                        </div></td>\n");
      out.write("                        <td class=\"col-sm-1 col-md-1\" style=\"text-align: center\">\n");
      out.write("                            \n");
      out.write("                                    <label class=\"form-control\" id=\"exampleInputEmail1\">");
      out.print( cantidadProductos.get(i) );
      out.write("</label>\n");
      out.write("                        </td>\n");
      out.write("                        <td class=\"col-sm-1 col-md-1 text-center\"><strong>$");
      out.print( carrito.get(i).getPrecio() );
      out.write("</strong></td>\n");
      out.write("                        ");
 
                            float totalP=0;
                            totalP=cantidadProductos.get(i)*carrito.get(i).getPrecio();
                            subtotal+=totalP;
                        
      out.write("\n");
      out.write("                        <td class=\"col-sm-1 col-md-1 text-center\"><strong>$");
      out.print( totalP );
      out.write("</strong></td>\n");
      out.write("                        <td class=\"col-sm-1 col-md-1\">\n");
      out.write("                        <button type=\"button\" class=\"btn btn-danger\">\n");
      out.write("                            <span class=\"glyphicon glyphicon-remove\"></span> Quitar\n");
      out.write("                        </button></td>\n");
      out.write("                    </tr>\n");
      out.write("                    ");
 } 
      out.write("\n");
      out.write("                    <tr>\n");
      out.write("                        <td>   </td>\n");
      out.write("                        <td>   </td>\n");
      out.write("                        <td>   </td>\n");
      out.write("                        <td><h5>Subtotal</h5></td>\n");
      out.write("                        <td class=\"text-right\"><h5><strong>$");
      out.print( subtotal );
      out.write("</strong></h5></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>   </td>\n");
      out.write("                        <td>   </td>\n");
      out.write("                        <td>   </td>\n");
      out.write("                        <td><h5>Descuento</h5></td>\n");
      out.write("                        <td class=\"text-right\"><h5><strong>$");
      out.print( descuento );
      out.write("</strong></h5></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>   </td>\n");
      out.write("                        <td>   </td>\n");
      out.write("                        <td>   </td>\n");
      out.write("                        <td><h3>Total</h3></td>\n");
      out.write("                        <td class=\"text-right\"><h3><strong>$");
      out.print( subtotal-descuento );
      out.write("</strong></h3></td>\n");
      out.write("                        ");

                            sesion.setAttribute("subtotal", subtotal);
                            sesion.setAttribute("descuento", descuento);
                        
      out.write("\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>   </td>\n");
      out.write("                        <td>   </td>\n");
      out.write("                        <td>   </td>\n");
      out.write("                        <td>\n");
      out.write("                        <button type=\"button\" class=\"btn btn-default\">\n");
      out.write("                            <span class=\"glyphicon glyphicon-shopping-cart\"></span> Continuar comprando\n");
      out.write("                        </button></td>\n");
      out.write("                        <td>\n");
      out.write("                                <a href=\"pagar.html\" class=\"btn btn-success\" >\n");
      out.write("                            Pagar <span class=\"glyphicon glyphicon-play\"></span>\n");
      out.write("                        </a>\n");
      out.write("                            </td>\n");
      out.write("                    </tr>\n");
      out.write("                </tbody>\n");
      out.write("            </table>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</div>\n");
      out.write("    <div id=\"footer\" class=\"container-fluid\">\n");
      out.write("      <div class=\"container\">\n");
      out.write("           <div class='col-md-4'>\n");
      out.write("          </div>\n");
      out.write("          <div class=\"col-md-4\">\n");
      out.write("        <p class=\"text-muted credit\">Todos los derechos reservados 2016 JaltoSports</p>\n");
      out.write("        </div>\n");
      out.write("         <div class=\"col-md-4\">\n");
      out.write("              <a href=http://www.facebook.com//><img id=\"face\" src=\"Imagenes/facebook.png\" alt=\"facebook\"></a>\n");
      out.write("          </div>\n");
      out.write("      </div>\n");
      out.write("    </div>    \n");
      out.write("</body>\n");
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
