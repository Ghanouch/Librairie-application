package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class ReservationList_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("         <link href=\"assets/css/bootstrap.css\" rel=\"stylesheet\" />\n");
      out.write("     <!-- FONTAWESOME STYLES-->\n");
      out.write("    <link href=\"assets/css/font-awesome.css\" rel=\"stylesheet\" />\n");
      out.write("     <!-- MORRIS CHART STYLES-->\n");
      out.write("   \n");
      out.write("        <!-- CUSTOM STYLES-->\n");
      out.write("    <link href=\"assets/css/custom.css\" rel=\"stylesheet\" />\n");
      out.write("     <!-- GOOGLE FONTS-->\n");
      out.write("   <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />\n");
      out.write("     <!-- TABLE STYLES-->\n");
      out.write("    <link href=\"assets/js/dataTables/dataTables.bootstrap.css\" rel=\"stylesheet\" />\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("        <div class=\"panel panel-default\">\n");
      out.write("                        <div class=\"panel-heading\">\n");
      out.write("                             Advanced Tables\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"panel-body\">\n");
      out.write("                            <div class=\"table-responsive\">\n");
      out.write("                                <div id=\"dataTables-example_wrapper\" class=\"dataTables_wrapper form-inline\" role=\"grid\"><div class=\"row\"><div class=\"col-sm-6\"><div class=\"dataTables_length\" id=\"dataTables-example_length\"><label><select name=\"dataTables-example_length\" aria-controls=\"dataTables-example\" class=\"form-control input-sm\"><option value=\"10\">10</option><option value=\"25\">25</option><option value=\"50\">50</option><option value=\"100\">100</option></select> records per page</label></div></div><div class=\"col-sm-6\"><div id=\"dataTables-example_filter\" class=\"dataTables_filter\"><label>Search:<input type=\"search\" class=\"form-control input-sm\" aria-controls=\"dataTables-example\"></label></div></div></div><table class=\"table table-striped table-bordered table-hover dataTable no-footer\" id=\"dataTables-example\" aria-describedby=\"dataTables-example_info\">\n");
      out.write("                                    <thead>\n");
      out.write("                                        <tr role=\"row\"><th class=\"sorting_asc\" tabindex=\"0\" aria-controls=\"dataTables-example\" rowspan=\"1\" colspan=\"1\" aria-sort=\"ascending\" aria-label=\"Rendering engine: activate to sort column ascending\" style=\"width: 148px;\">Rendering engine</th><th class=\"sorting\" tabindex=\"0\" aria-controls=\"dataTables-example\" rowspan=\"1\" colspan=\"1\" aria-label=\"Browser: activate to sort column ascending\" style=\"width: 230px;\">Browser</th><th class=\"sorting\" tabindex=\"0\" aria-controls=\"dataTables-example\" rowspan=\"1\" colspan=\"1\" aria-label=\"Platform(s): activate to sort column ascending\" style=\"width: 209px;\">Platform(s)</th><th class=\"sorting\" tabindex=\"0\" aria-controls=\"dataTables-example\" rowspan=\"1\" colspan=\"1\" aria-label=\"Engine version: activate to sort column ascending\" style=\"width: 125px;\">Engine version</th><th class=\"sorting\" tabindex=\"0\" aria-controls=\"dataTables-example\" rowspan=\"1\" colspan=\"1\" aria-label=\"CSS grade: activate to sort column ascending\" style=\"width: 88px;\">CSS grade</th></tr>\n");
      out.write("                                    </thead>\n");
      out.write("                                    <tbody>\n");
      out.write("                                        \n");
      out.write("                                    <tr class=\"gradeA odd\">\n");
      out.write("                                            <td class=\"sorting_1\">Gecko</td>\n");
      out.write("                                            <td class=\" \">Firefox 1.0</td>\n");
      out.write("                                            <td class=\" \">Win 98+ / OSX.2+</td>\n");
      out.write("                                            <td class=\"center \">1.7</td>\n");
      out.write("                                            <td class=\"center \">A</td>\n");
      out.write("                                        </tr><tr class=\"gradeA even\">\n");
      out.write("                                            <td class=\"sorting_1\">Gecko</td>\n");
      out.write("                                            <td class=\" \">Firefox 1.5</td>\n");
      out.write("                                            <td class=\" \">Win 98+ / OSX.2+</td>\n");
      out.write("                                            <td class=\"center \">1.8</td>\n");
      out.write("                                            <td class=\"center \">A</td>\n");
      out.write("                                        </tr><tr class=\"gradeA odd\">\n");
      out.write("                                            <td class=\"sorting_1\">Gecko</td>\n");
      out.write("                                            <td class=\" \">Firefox 2.0</td>\n");
      out.write("                                            <td class=\" \">Win 98+ / OSX.2+</td>\n");
      out.write("                                            <td class=\"center \">1.8</td>\n");
      out.write("                                            <td class=\"center \">A</td>\n");
      out.write("                                        </tr><tr class=\"gradeA even\">\n");
      out.write("                                            <td class=\"sorting_1\">Gecko</td>\n");
      out.write("                                            <td class=\" \">Firefox 3.0</td>\n");
      out.write("                                            <td class=\" \">Win 2k+ / OSX.3+</td>\n");
      out.write("                                            <td class=\"center \">1.9</td>\n");
      out.write("                                            <td class=\"center \">A</td>\n");
      out.write("                                        </tr><tr class=\"gradeA odd\">\n");
      out.write("                                            <td class=\"sorting_1\">Gecko</td>\n");
      out.write("                                            <td class=\" \">Camino 1.0</td>\n");
      out.write("                                            <td class=\" \">OSX.2+</td>\n");
      out.write("                                            <td class=\"center \">1.8</td>\n");
      out.write("                                            <td class=\"center \">A</td>\n");
      out.write("                                        </tr><tr class=\"gradeA even\">\n");
      out.write("                                            <td class=\"sorting_1\">Gecko</td>\n");
      out.write("                                            <td class=\" \">Camino 1.5</td>\n");
      out.write("                                            <td class=\" \">OSX.3+</td>\n");
      out.write("                                            <td class=\"center \">1.8</td>\n");
      out.write("                                            <td class=\"center \">A</td>\n");
      out.write("                                        </tr><tr class=\"gradeA odd\">\n");
      out.write("                                            <td class=\"sorting_1\">Gecko</td>\n");
      out.write("                                            <td class=\" \">Netscape 7.2</td>\n");
      out.write("                                            <td class=\" \">Win 95+ / Mac OS 8.6-9.2</td>\n");
      out.write("                                            <td class=\"center \">1.7</td>\n");
      out.write("                                            <td class=\"center \">A</td>\n");
      out.write("                                        </tr><tr class=\"gradeA even\">\n");
      out.write("                                            <td class=\"sorting_1\">Gecko</td>\n");
      out.write("                                            <td class=\" \">Netscape Browser 8</td>\n");
      out.write("                                            <td class=\" \">Win 98SE+</td>\n");
      out.write("                                            <td class=\"center \">1.7</td>\n");
      out.write("                                            <td class=\"center \">A</td>\n");
      out.write("                                        </tr><tr class=\"gradeA odd\">\n");
      out.write("                                            <td class=\"sorting_1\">Gecko</td>\n");
      out.write("                                            <td class=\" \">Netscape Navigator 9</td>\n");
      out.write("                                            <td class=\" \">Win 98+ / OSX.2+</td>\n");
      out.write("                                            <td class=\"center \">1.8</td>\n");
      out.write("                                            <td class=\"center \">A</td>\n");
      out.write("                                        </tr><tr class=\"gradeA even\">\n");
      out.write("                                            <td class=\"sorting_1\">Gecko</td>\n");
      out.write("                                            <td class=\" \">Mozilla 1.0</td>\n");
      out.write("                                            <td class=\" \">Win 95+ / OSX.1+</td>\n");
      out.write("                                            <td class=\"center \">1</td>\n");
      out.write("                                            <td class=\"center \">A</td>\n");
      out.write("                                        </tr></tbody>\n");
      out.write("                                </table><div class=\"row\"><div class=\"col-sm-6\"><div class=\"dataTables_info\" id=\"dataTables-example_info\" role=\"alert\" aria-live=\"polite\" aria-relevant=\"all\">Showing 1 to 10 of 57 entries</div></div><div class=\"col-sm-6\"><div class=\"dataTables_paginate paging_simple_numbers\" id=\"dataTables-example_paginate\"><ul class=\"pagination\"><li class=\"paginate_button previous disabled\" aria-controls=\"dataTables-example\" tabindex=\"0\" id=\"dataTables-example_previous\"><a href=\"#\">Previous</a></li><li class=\"paginate_button active\" aria-controls=\"dataTables-example\" tabindex=\"0\"><a href=\"#\">1</a></li><li class=\"paginate_button \" aria-controls=\"dataTables-example\" tabindex=\"0\"><a href=\"#\">2</a></li><li class=\"paginate_button \" aria-controls=\"dataTables-example\" tabindex=\"0\"><a href=\"#\">3</a></li><li class=\"paginate_button \" aria-controls=\"dataTables-example\" tabindex=\"0\"><a href=\"#\">4</a></li><li class=\"paginate_button \" aria-controls=\"dataTables-example\" tabindex=\"0\"><a href=\"#\">5</a></li><li class=\"paginate_button \" aria-controls=\"dataTables-example\" tabindex=\"0\"><a href=\"#\">6</a></li><li class=\"paginate_button next\" aria-controls=\"dataTables-example\" tabindex=\"0\" id=\"dataTables-example_next\"><a href=\"#\">Next</a></li></ul></div></div></div></div>\n");
      out.write("                            </div>\n");
      out.write("                            \n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("        \n");
      out.write("         <script src=\"assets/js/jquery-1.10.2.js\"></script>\n");
      out.write("      <!-- BOOTSTRAP SCRIPTS -->\n");
      out.write("      <script src=\"assets/js/bootstrap.min.js\"></script>\n");
      out.write("    <!-- METISMENU SCRIPTS -->\n");
      out.write("    <script src=\"assets/js/jquery.metisMenu.js\"></script>\n");
      out.write("     <!-- DATA TABLE SCRIPTS -->\n");
      out.write("    <script src=\"assets/js/dataTables/jquery.dataTables.js\"></script>\n");
      out.write("    <script src=\"assets/js/dataTables/dataTables.bootstrap.js\"></script>\n");
      out.write("        <script>\n");
      out.write("            $(document).ready(function () {\n");
      out.write("                $('#dataTables-example').dataTable();\n");
      out.write("            });\n");
      out.write("    </script>\n");
      out.write("         <!-- CUSTOM SCRIPTS -->\n");
      out.write("    <script src=\"assets/js/custom.js\"></script>\n");
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
