package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class admin_005fsettings_005fmenu_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("    <script>\n");
      out.write("         addEventListener(\"load\", function () {\n");
      out.write("         \tsetTimeout(hideURLbar, 0);\n");
      out.write("         }, false);\n");
      out.write("         \n");
      out.write("         function hideURLbar() {\n");
      out.write("         \twindow.scrollTo(0, 1);\n");
      out.write("         }\n");
      out.write("      </script>\n");
      out.write("      <!--//meta tags ends here-->\n");
      out.write("      <!--booststrap-->\n");
      out.write("      <link href=\"static/css/bootstrap.min.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\"/>\n");
      out.write("      <!--//booststrap end-->\n");
      out.write("      <!-- font-awesome icons -->\n");
      out.write("      <link href=\"static/css/fontawesome-all.min.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\"/>\n");
      out.write("      <!-- //font-awesome icons -->\n");
      out.write("      <!-- For Clients slider -->\n");
      out.write("      <link rel=\"stylesheet\" href=\"static/css/flexslider.css\" type=\"text/css\" media=\"all\" />\n");
      out.write("      <!--flexs slider-->\n");
      out.write("      <link href=\"static/css/JiSlider.css\" rel=\"stylesheet\">\n");
      out.write("      <!--Shoping cart-->\n");
      out.write("      <link rel=\"stylesheet\" href=\"static/css/shop.css\" type=\"text/css\" />\n");
      out.write("      <!--//Shoping cart-->\n");
      out.write("      <!--stylesheets-->\n");
      out.write("      <link href=\"static/css/style.css\" rel='stylesheet' type='text/css' media=\"all\"/>\n");
      out.write("      <!--//stylesheets-->\n");
      out.write("      <link href=\"//fonts.googleapis.com/css?family=Sunflower:500,700\" rel=\"stylesheet\"/>\n");
      out.write("      <link href=\"//fonts.googleapis.com/css?family=Open+Sans:400,600,700\" rel=\"stylesheet\"/>\n");
      out.write("\n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    <div class=\"container-fluid\" >\n");
      out.write("               <div class=\"hedder-up row\">\n");
      out.write("                  <div class=\"col-lg-3 col-md-3 logo-head\">\n");
      out.write("                      <a class=\"navbar-brand\" href=\"index.jsp\"><img src=\"static/images/login1.jpg\" alt=\"\"/></a>\n");
      out.write("                      \n");
      out.write("                  </div>\n");
      out.write("               </div>\n");
      out.write("            <nav class=\"navbar navbar-expand-lg navbar-light  \">\n");
      out.write("               <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarSupportedContent\" aria-controls=\"navbarSupportedContent\"  aria-label=\"Toggle navigation\">\n");
      out.write("               <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("               </button>\n");
      out.write("               <div class=\"collapse navbar-collapse justify-content-center\" id=\"navbarSupportedContent\">\n");
      out.write("                  <ul class=\"navbar-nav \">\n");
      out.write("<!--                     <li class=\"nav-item active\">\n");
      out.write("                        <a class=\"nav-link\" href=\"admin_home.jsp\">Home <span class=\"sr-only\">(current)</span></a>\n");
      out.write("                     </li>-->\n");
      out.write("                     <li class=\"nav-item\">\n");
      out.write("                        <a href=\"admin_courier_list.jsp\" class=\"nav-link\">Register courier service</a>\n");
      out.write("                     </li>\n");
      out.write("                     <li class=\"nav-item\">\n");
      out.write("                        <a href=\"admin_category_list.jsp\" class=\"nav-link\">Category</a>\n");
      out.write("                     </li> \n");
      out.write("                     <li class=\"nav-item\">\n");
      out.write("                        <a href=\"admin_sub_category_list.jsp\" class=\"nav-link\">Sub Category</a>\n");
      out.write("                     </li>\n");
      out.write("                     <li class=\"nav-item\">\n");
      out.write("                        <a href=\"admin_changepassword.jsp\" class=\"nav-link\">Password</a>\n");
      out.write("                     </li>\n");
      out.write("                     <li class=\"nav-item\">\n");
      out.write("                        <a href=\"admin_home.jsp\" class=\"nav-link\">Back</a>\n");
      out.write("                     </li>\n");
      out.write("                  </ul>\n");
      out.write("               </div>\n");
      out.write("            </nav>\n");
      out.write("\n");
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
