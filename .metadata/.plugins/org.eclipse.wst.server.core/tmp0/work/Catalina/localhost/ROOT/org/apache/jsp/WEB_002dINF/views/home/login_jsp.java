/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.76
 * Generated at: 2023-08-31 10:11:43 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views.home;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<title>Insert title here</title>\r\n");
      out.write("<style type=\"text/css\">\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write(".login-wrapper{\r\n");
      out.write("    font-family: 'Roboto', sans-serif;\r\n");
      out.write("    width: 500px;\r\n");
      out.write("    padding: 40px;\r\n");
      out.write("    box-sizing: border-box;\r\n");
      out.write("    margin: auto;\r\n");
      out.write("    font-size: 20px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".login-wrapper > h1{\r\n");
      out.write("    font-size: 60px;\r\n");
      out.write("    color: #FFA629;\r\n");
      out.write("    margin-bottom: 40px;\r\n");
      out.write("}\r\n");
      out.write("#login-form > input{\r\n");
      out.write("    width: 100%;\r\n");
      out.write("    height: 50px;\r\n");
      out.write("    padding: 0 10px;\r\n");
      out.write("    box-sizing: border-box;\r\n");
      out.write("    margin-bottom: 16px;\r\n");
      out.write("    border-radius: 6px;\r\n");
      out.write("    background-color: #B2B1AD;\r\n");
      out.write("    border:none;\r\n");
      out.write("}\r\n");
      out.write("#login-form > input::placeholder{\r\n");
      out.write("    color: #D2D2D2;\r\n");
      out.write("}\r\n");
      out.write("#login-form > input[type=\"submit\"]{\r\n");
      out.write("    color: #fff;\r\n");
      out.write("    font-size: 16px;\r\n");
      out.write("    background-color: #FFA629;\r\n");
      out.write("    margin-top: 20px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("#login-form input[type=\"button\"]{\r\n");
      out.write("    border:none;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".social-login-img{\r\n");
      out.write("	display: flex;\r\n");
      out.write("	justify-content: center;\r\n");
      out.write("	align-items: center;\r\n");
      out.write("	margin-top:10px;\r\n");
      out.write("}\r\n");
      out.write(".social-login-img > img{\r\n");
      out.write("	width:200px; \r\n");
      out.write("	height:50px;\r\n");
      out.write("	margin:5px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</style>\r\n");
      out.write("<!-- 구글 폰트 -->\r\n");
      out.write("<link rel=\"preconnect\" href=\"https://fonts.googleapis.com\">\r\n");
      out.write("<link rel=\"preconnect\" href=\"https://fonts.gstatic.com\" crossorigin>\r\n");
      out.write("<link href=\"https://fonts.googleapis.com/css2?family=Bagel+Fat+One&display=swap\" rel=\"stylesheet\">\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("	<header>\r\n");
      out.write("	");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "home_top.jsp", out, false);
      out.write("\r\n");
      out.write("	</header>\r\n");
      out.write("    <div class=\"login-wrapper\">\r\n");
      out.write("        <h1 style=\"text-align: center;font-family: 'Bagel Fat One', cursive;\">LogIn</h1>\r\n");
      out.write("        <form method=\"post\" action=\"\" id=\"login-form\">\r\n");
      out.write("            <input type=\"text\" name=\"user_id\" placeholder=\"아이디\">\r\n");
      out.write("            <input type=\"password\" name=\"pw\" placeholder=\"비밀번호\">\r\n");
      out.write("            <div style=\"display:flex; justify-content: flex-end;\">\r\n");
      out.write("            	<input type=\"button\" value=\"회원가입\" style=\"width:60px;height:20px;border-radius: 6px; color: #585652;\"> &nbsp;&nbsp;&nbsp;\r\n");
      out.write("            	<input type=\"button\" value=\"ID찾기, 비밀번호 찾기\" style=\"width:140px;height:20px;border-radius: 6px; color: #585652;\">\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("            <input type=\"submit\" value=\"Login\">\r\n");
      out.write("            <hr>\r\n");
      out.write("			<div class=\"social-login-img\">\r\n");
      out.write("				<img src=\"resources/images/kakao_login.png\">\r\n");
      out.write("			</div>\r\n");
      out.write("			<div class=\"social-login-img\">\r\n");
      out.write("				<img src=\"resources/images/naver_login.png\">\r\n");
      out.write("			</div>\r\n");
      out.write("        </form>\r\n");
      out.write("    </div>\r\n");
      out.write("    \r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}