package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.Collections;
import java.util.LinkedList;

public final class juegodivicion_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");


    String resp = "";
    int c = 0;
    LinkedList<Integer> list = new LinkedList<Integer>();

    for (int i = 0; i < 8; i++) {
        int n = (int) (Math.random() * 19 + 1);
        if (list.size() == 0) {
            list.add(n);
        } else {
            if (list.indexOf(n) < 0) {
                list.add(n);
            } else {
                i--;
            }
        }
    }

    int n1 = (int) (Math.random() * 19 + 1);
    int n2 = (int) (Math.random() * 19);
    while (n1 % n2 != 0) {
        n1 = (int) (Math.random() * 19 + 1);
        n2 = (int) (Math.random() * 19);
    }

    if (n2 == 0) {
        n2++;
    }
    int sum = n1 / n2;
    int cont = 0;
    list.add(8, sum);
    /* for (int i = 0; i < 8; i++) {
            list.add( 8, (int)list.get(8) + (int)list.get(i));
        }*/

    String suma = n1 + " " + "/" + " " + n2;

    Collections.shuffle(list);


      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"estilo.css\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <div id=\"marg3\">\n");
      out.write("            <div id=\"n1\">\n");
      out.write("                <center>\n");
      out.write("\n");
      out.write("                    <input style=\"background-color: transparent\" name =\"b1\"\n");
      out.write("                           type=\"button\" onclick= \"var selec = 0; checar(selec);\" \n");
      out.write("                           value=\"");
 out.println(list.get(0) + " " + resp); 
      out.write("\"/> </center> </div>\n");
      out.write("            <div id=\"n2\" ><center><input style=\"background-color: transparent\" name =\"b1\"\n");
      out.write("                                         type=\"button\" onclick=\"var selec = 1; checar(selec);\" \n");
      out.write("                                         value=\"");
 out.println(list.get(1)); 
      out.write("\"/> </center></div>\n");
      out.write("            <div id=\"n3\"><center><input style=\"background-color: transparent\" name =\"b1\"\n");
      out.write("                                        type=\"button\" onclick=\"var selec = 2; checar(selec);\" \n");
      out.write("                                        value=\"");
 out.println(list.get(2)); 
      out.write("\"/></center></div>\n");
      out.write("            <div id=\"n4\"><center><input style=\"background-color: transparent\" name =\"b1\"\n");
      out.write("                                        type=\"button\" onclick=\"var selec = 3; checar(selec);\" \n");
      out.write("                                        value=\"");
 out.println(list.get(3)); 
      out.write("\"/></center></div>\n");
      out.write("            <div id=\"n5\"><center><input style=\"background-color: transparent\" name =\"b1\"\n");
      out.write("                                        type=\"button\" onclick=\"var selec = 4; checar(selec);\" \n");
      out.write("                                        value=\"");
 out.println(list.get(4)); 
      out.write("\"/></center></div>\n");
      out.write("            <div id=\"n6\"><center><input style=\"background-color: transparent\" name =\"b1\"\n");
      out.write("                                        type=\"button\" onclick=\"var selec = 5; checar(selec);\" \n");
      out.write("                                        value=\"");
 out.println(list.get(5)); 
      out.write("\"/></center></div>\n");
      out.write("            <div id=\"n7\"><center><input style=\"background-color: transparent\" name =\"b1\"\n");
      out.write("                                        type=\"button\" onclick=\"var selec = 6; checar(selec);\" \n");
      out.write("                                        value=\"");
 out.println(list.get(6)); 
      out.write("\"/></center></div>\n");
      out.write("            <div id=\"n8\"><center><input style=\"background-color: transparent\" name =\"b1\"\n");
      out.write("                                        type=\"button\" onclick=\"var selec = 7; checar(selec);\" \n");
      out.write("                                        value=\"");
 out.println(list.get(7)); 
      out.write("\"/></center></div>\n");
      out.write("            <div id=\"n9\"><center><input style=\"background-color: transparent\" name =\"b1\"\n");
      out.write("                                        type=\"button\" onclick=\"var selec = 8; checar(selec);\" \n");
      out.write("                                        value=\"");
 out.println(list.get(8)); 
      out.write("\"/></center></div>\n");
      out.write("            <div id=\"n10\"><center>\n");
      out.write("                    ");
 out.println(suma);

                    
      out.write(" </center></div>\n");
      out.write("            <img id=\"siguiente\" onclick=\"location = 'juegodivicion2.jsp'\" src=\"sig.png\" width=\"90\" height=\"50\" >\n");
      out.write("        </div>\n");
      out.write("        <script>\n");
      out.write("            function WhichButton(event) {\n");
      out.write("            ");
String ho = "ho";
      out.write("\n");
      out.write("                alert(");
 out.println(ho); 
      out.write(");\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            function checar(sel) {\n");
      out.write("                switch (sel) {\n");
      out.write("                    case 0:\n");
      out.write("            ");
if (list.get(0) == sum) { 
      out.write("\n");
      out.write("                        alert(\"Correcto\");\n");
      out.write("                        document.getElementById(\"n10\").innerHTML = \"¡¡¡¡¡¡¡¡FELICIDADES!!!!!!!!\";\n");
      out.write("            ");

                                } else {
      out.write("\n");
      out.write("                        alert(\"vuelve a intentarlo\");");

                            }
      out.write("\n");
      out.write("                        break;\n");
      out.write("\n");
      out.write("                    case 1:\n");
      out.write("            ");
if (list.get(1) == sum) { 
      out.write("\n");
      out.write("                        alert(\"Correcto\");\n");
      out.write("                        document.getElementById(\"n10\").innerHTML = \"¡¡¡¡¡¡¡¡FELICIDADES!!!!!!!!\";");

                        } else {
      out.write("\n");
      out.write("                        alert(\"vuelve a intentarlo\");");

                            }
      out.write("\n");
      out.write("                        break;\n");
      out.write("\n");
      out.write("                    case 2:\n");
      out.write("            ");
if (list.get(2) == sum) { 
      out.write("\n");
      out.write("                        alert(\"Correcto\");\n");
      out.write("                        document.getElementById(\"n10\").innerHTML = \"¡¡¡¡¡¡¡¡FELICIDADES!!!!!!!!\";");

                        } else {
      out.write("\n");
      out.write("                        alert(\"vuelve a intentarlo\");");

                            }
      out.write("\n");
      out.write("                        break;\n");
      out.write("                    case 3:\n");
      out.write("            ");
if (list.get(3) == sum) { 
      out.write("\n");
      out.write("                        alert(\"Correcto\");\n");
      out.write("                        document.getElementById(\"n10\").innerHTML = \"¡¡¡¡¡¡¡¡FELICIDADES!!!!!!!!\";");

                        } else {
      out.write("\n");
      out.write("                        alert(\"vuelve a intentarlo\");");

                            }
      out.write("\n");
      out.write("                        break;\n");
      out.write("                    case 4:\n");
      out.write("            ");
if (list.get(4) == sum) { 
      out.write("\n");
      out.write("                        alert(\"Correcto\");\n");
      out.write("                        document.getElementById(\"n10\").innerHTML = \"¡¡¡¡¡¡¡¡FELICIDADES!!!!!!!!\";");

                        } else {
      out.write("\n");
      out.write("                        alert(\"vuelve a intentarlo\");");

                            }
      out.write("\n");
      out.write("                        break;\n");
      out.write("                    case 5:\n");
      out.write("            ");
if (list.get(5) == sum) { 
      out.write("\n");
      out.write("                        alert(\"Correcto\");\n");
      out.write("                        document.getElementById(\"n10\").innerHTML = \"¡¡¡¡¡¡¡¡FELICIDADES!!!!!!!!\";");

                        } else {
      out.write("\n");
      out.write("                        alert(\"vuelve a intentarlo\");");

                            }
      out.write("\n");
      out.write("                        break;\n");
      out.write("                    case 6:\n");
      out.write("            ");
if (list.get(6) == sum) { 
      out.write("\n");
      out.write("                        alert(\"Correcto\");\n");
      out.write("                        document.getElementById(\"n10\").innerHTML = \"¡¡¡¡¡¡¡¡FELICIDADES!!!!!!!!\";");

                        } else {
      out.write("\n");
      out.write("                        alert(\"vuelve a intentarlo\");");

                            }
      out.write("\n");
      out.write("                        break;\n");
      out.write("                    case 7:\n");
      out.write("            ");
if (list.get(7) == sum) { 
      out.write("\n");
      out.write("                        alert(\"Correcto\");\n");
      out.write("                        document.getElementById(\"n10\").innerHTML = \"¡¡¡¡¡¡¡¡FELICIDADES!!!!!!!!\";");

                        } else {
      out.write("\n");
      out.write("                        alert(\"vuelve a intentarlo\");");

                            }
      out.write("\n");
      out.write("                        break;\n");
      out.write("                    case 8:\n");
      out.write("            ");
if (list.get(8) == sum) { 
      out.write("\n");
      out.write("                        alert(\"Correcto\");\n");
      out.write("                        document.getElementById(\"n10\").innerHTML = \"¡¡¡¡¡¡¡¡FELICIDADES!!!!!!!!\";\n");
      out.write("\n");
      out.write("            ");

                             } else {
      out.write("\n");
      out.write("                        alert(\"vuelve a intentarlo\");");

                            }
      out.write("\n");
      out.write("                        break;\n");
      out.write("                }\n");
      out.write("\n");
      out.write("            }\n");
      out.write("\n");
      out.write("        </script>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("}\n");
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
