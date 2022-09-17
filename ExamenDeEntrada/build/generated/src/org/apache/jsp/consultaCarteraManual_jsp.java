package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import DAO.carteras;
import java.util.ArrayList;
import EMPRESA.PATRONDAO.BEAN.TipoCarteraBean;

public final class consultaCarteraManual_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

ArrayList<carteras> listaregion; 
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <link   href=\"");
      out.print(request.getContextPath());
      out.write("/css/screen.css\"  rel=\"stylesheet\"  type=\"text/css\"   >\n");
      out.write("        <title>Documento sin t&iacute;tulo</title>\n");
      out.write("\n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("\n");
      out.write("            function regresar() {\n");
      out.write("                document.form.action = \"");
      out.print(request.getContextPath());
      out.write("/CarteraServlet\";\n");
      out.write("                document.form.method = \"GET\";\n");
      out.write("                document.form.opcion.value = \"REGRESAR2\";\n");
      out.write("                document.form.submit();\n");
      out.write("            }\n");
      out.write("\n");
      out.write("\n");
      out.write("            function buscar() {\n");
      out.write("                var txttipocartera1 = document.form.txttipocartera.value;\n");
      out.write("\n");
      out.write("\n");
      out.write("                if (txttipocartera1.length == 0) {\n");
      out.write("                    alert(\"Elige el tipo de Cartera por Favor\");\n");
      out.write("                    document.form.txttipocartera.focus();\n");
      out.write("                    return;\n");
      out.write("                } else {\n");
      out.write("                    document.form.action = \"");
      out.print(request.getContextPath());
      out.write("/CarteraServlet\";\n");
      out.write("                    document.form.method = \"GET\";\n");
      out.write("                    document.form.opcion.value = \"COMBOXBUSCAR\";\n");
      out.write("                    document.form.submit();\n");
      out.write("\n");
      out.write("                }\n");
      out.write("\n");
      out.write("            }\n");
      out.write("\n");
      out.write("\n");
      out.write("        </script>\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("        <form name=\"form\">\n");
      out.write("            <input type=\"hidden\"   name=\"opcion\" value=\"\">\n");
      out.write("            <table  align=\"center\" class=\"FondoTabla\" >\n");
      out.write("                <tr>\n");
      out.write("                    <td colspan=\"5\"    class=\"tituloTabla\">Listado de Carteras Hechas a Mano</td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("          \n");
      out.write("\n");
      out.write("                    <td class=\"tituloFormulario\">Tipo :</td>\n");
      out.write("                    <td  class=\"tituloFormulario\"><select name=\"txttipocartera\"  class=\"input_text\" >\n");
      out.write("\n");
      out.write("\n");
      out.write("                            <option  value=\"\"  selected >------------------------</option>\n");
      out.write("\n");
      out.write("\n");
      out.write("                            ");
   for (int i = 0; i <= 20; i++) {                
      out.write("\n");
      out.write("                            <option  value=\"\">Datos</option>\n");
      out.write("\n");
      out.write("                            ");
          }         
      out.write("\n");
      out.write("                        </select>    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td colspan=\"3\"  align=\"center\">\n");
      out.write("                        <input type=\"button\"  value=\"Buscar\"  class=\"boton\"   onclick=\"buscar()\"/>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("\n");
      out.write("            </table >\n");
      out.write("            <table  class=\"FondoTabla\"  align=\"center\">\n");
      out.write("                <tr   >\n");
      out.write("                    <td  class=\"tituloTabla\">C&oacute;digo Cartera   </td>\n");
      out.write("                    <td class=\"tituloTabla\">Descripcion</td>\n");
      out.write("                    <td class=\"tituloTabla\">Tipo  Cartera</td>\n");
      out.write("                    <td class=\"tituloTabla\">Precio</td>\n");
      out.write("                    <td class=\"tituloTabla\">Fecha de Registro</td>\n");
      out.write("                </tr>\n");
      out.write("\n");
      out.write("                ");
   if (request.getAttribute("BUSCAR") != null) {


                
      out.write("\n");
      out.write("                ");
 for (int i = 0; i <= 20; i++) {     
      out.write("\n");
      out.write("                <tr>\n");
      out.write("\n");
      out.write("                    <td>xxxxxxxxxxxxxxxxxxxx</td>\n");
      out.write("                    <td>xxxxxxxxxxxxxxxxxxxx</td>\n");
      out.write("                    <td>xxxxxxxxxxxxxxxxxxxx</td>\n");
      out.write("                    <td>xxxxxxxxxxxxxxxxxxxx</td>\n");
      out.write("                    <td>xxxxxxxxxxxxxxxxxxxx</td>\n");
      out.write("\n");
      out.write("\n");
      out.write("                </tr>\n");
      out.write("                ");
 i++;
           }
       }
      out.write(" \n");
      out.write("                <tr>\n");
      out.write("                    <td colspan=\"5\"  align=\"center\">\n");
      out.write("                        <input type=\"button\"  value=\"Regresar\"  class=\"boton\"   onclick=\"regresar()\"/>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("\n");
      out.write("            </table >\n");
      out.write("\n");
      out.write("\n");
      out.write("        </form>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
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
