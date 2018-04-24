package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Astronautaresta_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html lang=\"en\">\n");
      out.write("    <head> \n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <title>astronauta</title>\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"style.css\">\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body background=\"images/Mesa de trabajo 6 copia 2mdpi.jpg\">\n");
      out.write("        <div id=\"counter\">1:00</div>\n");
      out.write("\n");
      out.write("        <div class=\"graph\">\n");
      out.write("            <img id=\"pierdo\" src=\"images/nada.png\">\n");
      out.write("            <img id=\"spaceman\" src=\"images/Recurso 25.png\" style=\"float: right;\">\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <!--<button onclick=\"move();\"> mover</button>-->\n");
      out.write("\n");
      out.write("        <div class=\"divAbajo\">\n");
      out.write("            <img id=\"resp\" src=\"images/writeplz.png\">\n");
      out.write("            <input type=\"text\" name=\"answer\" id=\"answer\"  onkeypress=\"handleKeyPress(event)\" autofocus>\n");
      out.write("            <div class=\"centro\" id=\"operation\"></div>\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("        <img id=\"siguiente\" onclick=\"location = 'fin1.jsp'\" src=\"sig.png\" width=\"90\" height=\"50\" />\n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("            var imag = [\"images/Recurso 22.png\", \"images/Recurso 23.png\", \"images/Recurso 24.png\"];\n");
      out.write("            var contIm = 0;\n");
      out.write("            var flag = false;\n");
      out.write("            var flag1 = false;\n");
      out.write("\n");
      out.write("            var op = document.getElementById(\"operation\");\n");
      out.write("            var result;\n");
      out.write("            var score = 0;\n");
      out.write("\n");
      out.write("            countdown();\n");
      out.write("            opera();\n");
      out.write("\n");
      out.write("            function countdown() {\n");
      out.write("                var traveler = document.getElementById(\"spaceman\");\n");
      out.write("                var ans = document.getElementById(\"answer\");\n");
      out.write("                var perder = document.getElementById(\"pierdo\");\n");
      out.write("                var seconds = 59;\n");
      out.write("                function tick() {\n");
      out.write("                    var counter = document.getElementById(\"counter\");\n");
      out.write("                    if (flag == false) {\n");
      out.write("                        seconds--;\n");
      out.write("                    }\n");
      out.write("                    counter.innerHTML = \"0:\" + (seconds < 10 ? \"0\" : \"\") + String(seconds);\n");
      out.write("                    if (seconds > 0 && flag == false) {\n");
      out.write("                        setTimeout(tick, 1000);\n");
      out.write("                    } else {\n");
      out.write("                        counter.innerHTML = \"Game over\";\n");
      out.write("                        flag = true;\n");
      out.write("\n");
      out.write("                        if (flag1 == false) {\n");
      out.write("                            traveler.src = \"images/Recurso 15.png\";\n");
      out.write("                            op.innerHTML = \"¡OH NO!\";\n");
      out.write("                            ans.disabled = true;\n");
      out.write("                            perder.src = \"images/Recurso 53.png\";\n");
      out.write("                            camina();\n");
      out.write("\n");
      out.write("                        }\n");
      out.write("                    }\n");
      out.write("                }\n");
      out.write("                tick();\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            function move() {\n");
      out.write("                var ans = document.getElementById(\"answer\");\n");
      out.write("                var traveler = document.getElementById(\"spaceman\");\n");
      out.write("                if (flag == false) {\n");
      out.write("                    traveler.src = imag[contIm];\n");
      out.write("                    contIm++;\n");
      out.write("                    if (contIm == 4) {\n");
      out.write("                        traveler.src = \"images/Recurso 15.png\"\n");
      out.write("                        op.innerHTML = \"¡Felicidades!\";\n");
      out.write("                        ans.disabled = true\n");
      out.write("                        flag = true;\n");
      out.write("                        flag1 = true;\n");
      out.write("                        camina();\n");
      out.write("                    }\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            function handleKeyPress(e) {\n");
      out.write("                var key = e.keyCode || e.which;\n");
      out.write("                if (key == 13) {\n");
      out.write("                    //alert(\"enter\");\n");
      out.write("                    checa();\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            function opera() {\n");
      out.write("                var num1 = Math.floor((Math.random() * 10) + 1);\n");
      out.write("                var num2 = Math.floor((Math.random() * 10) + 1);\n");
      out.write("                var choice = Math.floor((Math.random() * 3) + 1);\n");
      out.write("\n");
      out.write("\n");
      out.write("                while (num1 < num2) {\n");
      out.write("                    num1 = Math.floor((Math.random() * 10) + 1);\n");
      out.write("                }\n");
      out.write("                op.innerHTML = num1 + \" - \" + num2;\n");
      out.write("                result = num1 - num2;\n");
      out.write("\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            function checa() {\n");
      out.write("                var ans = document.getElementById(\"answer\");\n");
      out.write("                if (ans.value == result) {\n");
      out.write("                    move();\n");
      out.write("                    if (contIm != 4) {\n");
      out.write("                        opera();\n");
      out.write("                    }\n");
      out.write("                    ans.value = \"\";\n");
      out.write("                } else {\n");
      out.write("                    ans.style.backgroundColor = \"red\";\n");
      out.write("                    ans.value = \"\";\n");
      out.write("                    setTimeout(cambia, 250);\n");
      out.write("                    //ans.style.backgroundColor=\"#f4a727\";\n");
      out.write("                }\n");
      out.write("\n");
      out.write("                function cambia() {\n");
      out.write("                    var ans = document.getElementById(\"answer\");\n");
      out.write("                    ans.style.backgroundColor = \"#f4a727\";\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            function camina() {\n");
      out.write("                var traveler = document.getElementById(\"spaceman\");\n");
      out.write("                let start = Date.now();\n");
      out.write("\n");
      out.write("                let timer = setInterval(function () {\n");
      out.write("                    let timePassed = Date.now() - start;\n");
      out.write("\n");
      out.write("                    traveler.style.bottom = timePassed / 5 + 'px';\n");
      out.write("\n");
      out.write("                    if (timePassed > 2000)\n");
      out.write("                        clearInterval(timer);\n");
      out.write("\n");
      out.write("                }, 20);\n");
      out.write("            }\n");
      out.write("\n");
      out.write("        </script>\n");
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
