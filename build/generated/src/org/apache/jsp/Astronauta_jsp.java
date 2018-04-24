package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Astronauta_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html lang=\"en\">\n");
      out.write("<head> \n");
      out.write("\t<meta charset=\"UTF-8\">\n");
      out.write("\t<title>astronauta</title>\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"style.css\">\n");
      out.write("\t\n");
      out.write("</head>\n");
      out.write("<body background=\"images/Mesa de trabajo 6 copia 2mdpi.jpg\">\n");
      out.write("\t<div id=\"counter\">1:00</div>\n");
      out.write("\t\n");
      out.write("\t<div class=\"graph\">\n");
      out.write("\t\t<img id=\"pierdo\" src=\"images/nada.png\">\n");
      out.write("\t\t<img id=\"spaceman\" src=\"images/Recurso 25.png\" style=\"float: right;\">\n");
      out.write("\t</div>\n");
      out.write("\n");
      out.write("\t<!--<button onclick=\"move();\"> mover</button>-->\n");
      out.write("\n");
      out.write("\t<div class=\"divAbajo\">\n");
      out.write("\t\t<img id=\"resp\" src=\"images/writeplz.png\">\n");
      out.write("\t\t<input type=\"text\" name=\"answer\" id=\"answer\"  onkeypress=\"handleKeyPress(event)\" autofocus>\n");
      out.write("\t\t<div class=\"centro\" id=\"operation\"></div>\n");
      out.write("\n");
      out.write("\t</div>\n");
      out.write("<img id=\"siguiente\" onclick=\"location = 'fin1.jsp'\" src=\"sig.png\" width=\"90\" height=\"50\" />\n");
      out.write("\t<script type=\"text/javascript\">\n");
      out.write("\t\tvar imag= [\"images/Recurso 22.png\",\"images/Recurso 23.png\", \"images/Recurso 24.png\"];\n");
      out.write("\t\tvar contIm=0;\n");
      out.write("\t\tvar flag=false;\n");
      out.write("\t\tvar flag1=false;\n");
      out.write("\t\t\n");
      out.write("\t\tvar op=document.getElementById(\"operation\");\n");
      out.write("\t\tvar result;\n");
      out.write("\t\tvar score=0;\n");
      out.write("\n");
      out.write("\t\tcountdown();\n");
      out.write("\t\topera(); \n");
      out.write("\n");
      out.write("\t\tfunction countdown() {\n");
      out.write("\t\t\tvar traveler=document.getElementById(\"spaceman\");\n");
      out.write("\t\t\tvar ans= document.getElementById(\"answer\");\n");
      out.write("\t\t\tvar perder= document.getElementById(\"pierdo\");\n");
      out.write("    \t\tvar seconds = 59;\n");
      out.write("    \t\tfunction tick() {\n");
      out.write("        \t\tvar counter = document.getElementById(\"counter\");\n");
      out.write("        \t\tif(flag==false){\n");
      out.write("        \t\t\tseconds--;}\n");
      out.write("        \t\t\tcounter.innerHTML = \"0:\" + (seconds < 10 ? \"0\" : \"\") + String(seconds);\n");
      out.write("        \t\t\tif( seconds > 0 && flag==false ) {\n");
      out.write("            \t\t\tsetTimeout(tick, 1000);\n");
      out.write("        \t\t\t} else {\n");
      out.write("            \t\t\tcounter.innerHTML=\"Game over\";\n");
      out.write("            \t\t\tflag=true;\n");
      out.write("            \t\t\t\n");
      out.write("            \t\t\tif(flag1==false){\n");
      out.write("            \t\t\ttraveler.src=\"images/Recurso 15.png\";\n");
      out.write("            \t\t\top.innerHTML=\"¡OH NO!\";\n");
      out.write("            \t\t\tans.disabled=true;\n");
      out.write("            \t\t\tperder.src=\"images/Recurso 53.png\";\n");
      out.write("            \t\t\tcamina();\n");
      out.write("\n");
      out.write("            \t\t}\n");
      out.write("        \t\t\t}\n");
      out.write("    \t\t\t}\n");
      out.write("    \t\ttick();\n");
      out.write("\t\t}\n");
      out.write("\n");
      out.write("\t\tfunction move(){\n");
      out.write("\t\t\tvar ans= document.getElementById(\"answer\");\n");
      out.write("\t\t\tvar traveler=document.getElementById(\"spaceman\");\n");
      out.write("\t\t\tif(flag==false){\n");
      out.write("\t\t\t\ttraveler.src=imag[contIm];\n");
      out.write("\t\t\t\tcontIm++;\n");
      out.write("\t\t\t\tif(contIm==4){\n");
      out.write("\t\t\t\t\ttraveler.src=\"images/Recurso 15.png\"\n");
      out.write("\t\t\t\t\top.innerHTML=\"¡Felicidades!\";\n");
      out.write("\t\t\t\t\tans.disabled=true\n");
      out.write("\t\t\t\t\tflag=true;\n");
      out.write("\t\t\t\t\tflag1=true;\n");
      out.write("\t\t\t\t\tcamina();\n");
      out.write("\t\t\t\t}\n");
      out.write("\t\t\t}\t\n");
      out.write("\t\t}\n");
      out.write("\n");
      out.write("\t\tfunction handleKeyPress(e){\n");
      out.write(" \t\t\tvar key=e.keyCode || e.which;\n");
      out.write("  \t\t\tif (key==13){\n");
      out.write("     \t\t\t//alert(\"enter\");\n");
      out.write("     \t\t\tcheca();\n");
      out.write("  \t\t\t}\n");
      out.write("\t\t}\n");
      out.write("\n");
      out.write("\t\tfunction opera (){\n");
      out.write("\t\t\tvar num1= Math.floor((Math.random() * 10) + 1);\n");
      out.write("\t\t\tvar num2=Math.floor((Math.random() * 10) + 1);\n");
      out.write("\t\t\tvar choice=Math.floor((Math.random() * 3) + 1);\n");
      out.write("\t\t\t\n");
      out.write("\t\t\t\t\top.innerHTML= num1 +\" + \"+ num2;\n");
      out.write("\t\t\t\t\tresult= num1+num2;\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t}\n");
      out.write("\n");
      out.write("\t\tfunction checa(){\n");
      out.write("\t\t\tvar ans= document.getElementById(\"answer\");\n");
      out.write("\t\t\tif(ans.value==result){\n");
      out.write("\t\t\t\tmove();\n");
      out.write("\t\t\t\tif(contIm!=4){\n");
      out.write("\t\t\t\t\topera();\n");
      out.write("\t\t\t\t}\n");
      out.write("\t\t\t\tans.value=\"\";\n");
      out.write("\t\t\t}\n");
      out.write("\t\t\telse{\n");
      out.write("\t\t\t\tans.style.backgroundColor=\"red\";\n");
      out.write("\t\t\t\tans.value=\"\";\n");
      out.write("\t\t\t\tsetTimeout(cambia,250);\n");
      out.write("\t\t\t\t//ans.style.backgroundColor=\"#f4a727\";\n");
      out.write("\t\t\t}\n");
      out.write("\n");
      out.write("\t\tfunction cambia(){\n");
      out.write("\t\t\tvar ans= document.getElementById(\"answer\");\n");
      out.write("\t\t\tans.style.backgroundColor=\"#f4a727\";\n");
      out.write("\t\t}\n");
      out.write("\t\t}\n");
      out.write("\n");
      out.write("\t\tfunction camina() {\n");
      out.write("\t\t\tvar traveler=document.getElementById(\"spaceman\");\n");
      out.write("      \t\tlet start = Date.now();\n");
      out.write("\n");
      out.write("      \t\tlet timer = setInterval(function() {\n");
      out.write("        \t\tlet timePassed = Date.now() - start;\n");
      out.write("\n");
      out.write("        \t\ttraveler.style.bottom = timePassed / 5 + 'px';\n");
      out.write("\n");
      out.write("        \t\tif (timePassed > 2000) clearInterval(timer);\n");
      out.write("\n");
      out.write("      \t\t}, 20);\n");
      out.write("    \t}\n");
      out.write("\n");
      out.write("\t</script>\n");
      out.write("</body>\n");
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
