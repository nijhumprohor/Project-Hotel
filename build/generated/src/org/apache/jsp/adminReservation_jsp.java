package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSetMetaData;
import java.util.ArrayList;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.Connection;

public final class adminReservation_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
 Class.forName("oracle.jdbc.driver.OracleDriver").newInstance();  
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"CSS/style.css\"/>\r\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"CSS/navigation.css\"/>            \r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        <h1>Banana Hotel</h1>\r\n");
      out.write("        ");
 if ((session.getAttribute("username") == null) && (session.getAttribute("username") == "")) {
                response.sendRedirect("reservation.jsp");
            }
        
      out.write("  \r\n");
      out.write("        <div class=\"navigation\">\r\n");
      out.write("            <li><a href=\"index.jsp\"> Home</a></li>\r\n");
      out.write("            <li><a id=\"id\" href=\"reservation.jsp\">Reservations</a></li>\r\n");
      out.write("            <li><a href=\"gallery.jsp\">Gallery</a></li>\r\n");
      out.write("            <li><a href=\"contact.jsp\"> Contact</a></li>\r\n");
      out.write("                ");
 if ((session.getAttribute("username") == null) || (session.getAttribute("username") == "")) { 
      out.write("\r\n");
      out.write("            <li><a  href=\"login.jsp\"> Login/Signup</a></li>\r\n");
      out.write("                ");
 } else { 
      out.write("\r\n");
      out.write("            <li><a  href=\"logout.jsp\"> Logout</a></li>\r\n");
      out.write("                ");
}
      out.write("\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("                <div class=\"desk\">\r\n");
      out.write("                    1 Bed $ 60 per night\r\n");
      out.write("                    2 Bed $ 80 per night\r\n");
      out.write("                    complimentary Tea in Lobby\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("                ");

                    Class.forName("oracle.jdbc.driver.OracleDriver").newInstance();
                    Connection connection = DriverManager.getConnection("jdbc:oracle:thin:@dilbert.humber.ca:1521:grok", "n01068251", "oracle");
                    Statement st = connection.createStatement();
                    ArrayList desc = new ArrayList();
                    ArrayList price = new ArrayList();
                    ArrayList id = new ArrayList();
                    ArrayList roomNumber = new ArrayList();

                    String query = "select ID, room#, description, price from ROOMS";
                    ResultSet rs = st.executeQuery(query);

                    while (rs.next()) {
                        id.add(rs.getLong("ID"));
                        roomNumber.add(rs.getString("room#"));
                        desc.add(rs.getString("description"));
                        price.add(rs.getString("price"));

                    }
                
      out.write(" \r\n");
      out.write("        <p>\r\n");
      out.write("\r\n");
      out.write("        </p>\r\n");
      out.write("\r\n");
      out.write("        <fieldset>\r\n");
      out.write("\r\n");
      out.write("            ");
 for (int i = 0; i < desc.size(); ++i) {

            
      out.write("\r\n");
      out.write("            <input type=\"hidden\" name=\"id\" value=\"");
id.get(i);
      out.write("\" />\r\n");
      out.write("            ");
 out.println(roomNumber.get(i) + "-------" + desc.get(i) + "-------" + price.get(i));
      out.write("\r\n");
      out.write("            <a href=\"delete.jsp\">delete</a>\r\n");
      out.write("            <br />\r\n");
      out.write("            ");

                }
            
      out.write("\r\n");
      out.write("            <div name=\"button\">\r\n");
      out.write("                <form action=\"add.jsp\">\r\n");
      out.write("                    <input type=\"submit\" name=\"submit\" value=\"add room\">                   \r\n");
      out.write("                </form>                \r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("        </fieldset>\r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");
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
