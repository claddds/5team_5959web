/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.76
 * Generated at: 2023-08-31 06:19:04 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views.education;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class edu_005fessential_005flist_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<title>Insert title here</title>\r\n");
      out.write("<style type=\"text/css\">\r\n");
      out.write("#eduform {\r\n");
      out.write("	font-family: 'Noto Sans KR', sans-serif;\r\n");
      out.write("	width: 1920px;\r\n");
      out.write("	margin: auto;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("#eduform li{\r\n");
      out.write("	list-style-type: none;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("#minibanner img {\r\n");
      out.write("	width: 1920px;\r\n");
      out.write("	height: 200px;\r\n");
      out.write("	display: flex;\r\n");
      out.write("	margin: auto;\r\n");
      out.write("	margin-top: 20px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("#menulist a {\r\n");
      out.write("	text-decoration: none;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("#edumenu {\r\n");
      out.write("	background-color: #FFA629;\r\n");
      out.write("	box-sizing: border;\r\n");
      out.write("	border-radius: 8px;\r\n");
      out.write("	width: 900px;\r\n");
      out.write("	margin: auto;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("#edumenu ul {\r\n");
      out.write("	display: flex;\r\n");
      out.write("	justify-content: center;\r\n");
      out.write("	margin: 30px;\r\n");
      out.write("	background-color: #ffa629;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("#edumenu li {\r\n");
      out.write("	list-style-type: none;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("#edumenu li:not(:first-child) a::before {\r\n");
      out.write("	content: \"|\";\r\n");
      out.write("	margin: 0 40px; /* 원하는 간격으로 설정 */\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("#edumenu a {\r\n");
      out.write("	color: #f8f8ff;\r\n");
      out.write("	font-size: 50px;\r\n");
      out.write("	text-decoration: none;\r\n");
      out.write("	font-family: 'Bagel Fat One', cursive;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".onecard{\r\n");
      out.write("	display:grid;\r\n");
      out.write("	grid-template-columns:70% 30%;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".edu-card {\r\n");
      out.write("	margin-left: 100px;\r\n");
      out.write("	border: none;\r\n");
      out.write("	border-radius: 5px;\r\n");
      out.write("	height: 400px;\r\n");
      out.write("	width: 1100px;\r\n");
      out.write("	padding: 5px;\r\n");
      out.write("	margin-botom: 10px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".card-img{\r\n");
      out.write("	float:left;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".edu_img img{\r\n");
      out.write("	height:360px;\r\n");
      out.write("	width:500px;\r\n");
      out.write("	border-radius:10px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".edu_menu_title {\r\n");
      out.write("	font-size: 40px;\r\n");
      out.write("	margin-left: 30px;\r\n");
      out.write("	margin-top:50px;\r\n");
      out.write("	margin-bottom:50px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".label_one {\r\n");
      out.write("	text-decoration: none;\r\n");
      out.write("	color: #ffa629;\r\n");
      out.write("	font-size:50px;\r\n");
      out.write("	font-weight: bold;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".label_two{\r\n");
      out.write("	font-size:50px;\r\n");
      out.write("	font-family: 'Bagel Fat One', cursive;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".edu_menu_title button{\r\n");
      out.write("	background-color: #FFA629;\r\n");
      out.write("	color:#f8f8ff;\r\n");
      out.write("	border-radius: 10px;\r\n");
      out.write("	border:1px solid #FFA629;\r\n");
      out.write("	width: 120px;\r\n");
      out.write("	height:30px;\r\n");
      out.write("	font-size: 20px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write(".cardList{\r\n");
      out.write("	display: grid;\r\n");
      out.write("	grid-template-rows:auto;\r\n");
      out.write("    gap: 20px; /* 간격 설정 */\r\n");
      out.write("    list-style: none;\r\n");
      out.write("    padding: 0;\r\n");
      out.write("    margin: 0;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".edutext button{\r\n");
      out.write("	background-color: #FFA629;\r\n");
      out.write("	color:#f8f8ff;\r\n");
      out.write("	border-radius: 10px;\r\n");
      out.write("	border:1px solid #FFA629;\r\n");
      out.write("	width: 70px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".edu_title{\r\n");
      out.write("	margin-bottom:20px;\r\n");
      out.write("	font-size:50px;\r\n");
      out.write("	white-space: nowrap;\r\n");
      out.write("	overflow: hidden;\r\n");
      out.write("    text-overflow: ellipsis;\r\n");
      out.write("    color:5E5958;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".edu_content{\r\n");
      out.write("	margin-right:30px;\r\n");
      out.write("	margin-top:30px;\r\n");
      out.write("	margin-bottom:30px;\r\n");
      out.write("	font-size:30px;\r\n");
      out.write("	text-overflow: ellipsis;\r\n");
      out.write("	overflow : hidden;\r\n");
      out.write("	display: -webkit-box;\r\n");
      out.write("		-webkit-line-clamp: 5;\r\n");
      out.write("        -webkit-box-orient: vertical;\r\n");
      out.write("    color:#868688;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".div_card{\r\n");
      out.write("	margin:30px;\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("<link rel=\"preconnect\" href=\"https://fonts.googleapis.com\">\r\n");
      out.write("<link rel=\"preconnect\" href=\"https://fonts.gstatic.com\" crossorigin>\r\n");
      out.write("<link\r\n");
      out.write("	href=\"https://fonts.googleapis.com/css2?family=Bagel+Fat+One&family=Noto+Sans+KR&display=swap\"\r\n");
      out.write("	rel=\"stylesheet\">\r\n");
      out.write("</head>\r\n");
      out.write("<!-- \r\n");
      out.write("	1. edumenu list(강아지,고양이,기타동물) 눌렀을 때 #edumenu a color:를 변경 할것\r\n");
      out.write("	2. 검색바 넣기\r\n");
      out.write("	3. label class one에 el 써서 초보 반려인들의 필수 상식!/반려 동물 잘 키우는 방법!/훈련 방법 모음집!으로 db에서 긁을수 있게\r\n");
      out.write("	4. label class two에 el 써서 강아지, 고양이, 기타동물 분류\r\n");
      out.write(" -->\r\n");
      out.write("<body>\r\n");
      out.write("	<header>\r\n");
      out.write("		");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../home/home_top.jsp", out, false);
      out.write("\r\n");
      out.write("	</header>\r\n");
      out.write("	<div id=\"eduform\">\r\n");
      out.write("		<div id=minibanner>\r\n");
      out.write("			<a href=\"\"><img src=\"resources/images/list_banner/listbanner_edu.png\"></a>\r\n");
      out.write("		</div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("			<div id=\"edumenu\">\r\n");
      out.write("				<ul id=\"\">\r\n");
      out.write("					<li><a href=\"\"># 강아지</a></li>\r\n");
      out.write("					<li><a href=\"\"># 고양이</a></li>\r\n");
      out.write("					<li><a href=\"\"># 기타동물</a></li>\r\n");
      out.write("				</ul>\r\n");
      out.write("			</div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("			\r\n");
      out.write("				<div class=\"edu_menu_title\">\r\n");
      out.write("					<label class=\"label_one\">필수 정보! 초보 반려인들의 필수 상식! >> </label>\r\n");
      out.write("					<label class=\"label_two\"> # 강아지</label>\r\n");
      out.write("				</div>\r\n");
      out.write("				\r\n");
      out.write("				<div class=\"div_card\">\r\n");
      out.write("				<ul class=\"cardList\">\r\n");
      out.write("					<li>\r\n");
      out.write("						<div class=\"onecard\">\r\n");
      out.write("							<div class=\"edu-card\">\r\n");
      out.write("								<div id=\"essential\">\r\n");
      out.write("									<div class=\"edutext\">\r\n");
      out.write("										<div class=\"edu_title\">안녕하세요 안녕하세요 안녕하세요 안녕하세요 안녕하세요 안녕하세요</div>\r\n");
      out.write("										<div class=\"edu_content\">\r\n");
      out.write("											안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요 안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요 안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요 안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요 안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요 안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요 안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요 안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요 안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요\r\n");
      out.write("										</div>\r\n");
      out.write("									</div>\r\n");
      out.write("								</div>\r\n");
      out.write("							</div>\r\n");
      out.write("							<div class=\"card-img\">\r\n");
      out.write("								<div class=\"edu_img\">\r\n");
      out.write("									<img src=\"resources/images/list_banner/minibanner_eduexplain.png\">\r\n");
      out.write("								</div>\r\n");
      out.write("							</div>\r\n");
      out.write("						</div>\r\n");
      out.write("					</li>\r\n");
      out.write("					<li>\r\n");
      out.write("						<div class=\"onecard\">\r\n");
      out.write("							<div class=\"edu-card\">\r\n");
      out.write("								<div id=\"essential\">\r\n");
      out.write("									<div class=\"edutext\">\r\n");
      out.write("										<div class=\"edu_title\">1231231231231231231</div>\r\n");
      out.write("										<div class=\"edu_content\">\r\n");
      out.write("											안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요 안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요 안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요 안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요 안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요 안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요 안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요 안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요 안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요\r\n");
      out.write("										</div>\r\n");
      out.write("									</div>\r\n");
      out.write("								</div>\r\n");
      out.write("							</div>\r\n");
      out.write("							<div class=\"card-img\">\r\n");
      out.write("								<div class=\"edu_img\">\r\n");
      out.write("									<img src=\"resources/images/list_banner/minibanner_eduexplain.png\">\r\n");
      out.write("								</div>\r\n");
      out.write("							</div>\r\n");
      out.write("						</div>\r\n");
      out.write("					</li>\r\n");
      out.write("					<li>\r\n");
      out.write("						<div class=\"onecard\">\r\n");
      out.write("							<div class=\"edu-card\">\r\n");
      out.write("									<div class=\"edutext\">\r\n");
      out.write("										<div class=\"edu_title\">1231231231231231231</div>\r\n");
      out.write("										<div class=\"edu_content\">\r\n");
      out.write("											안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요 안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요 안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요 안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요 안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요 안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요 안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요 안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요 안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요\r\n");
      out.write("										</div>\r\n");
      out.write("									</div>\r\n");
      out.write("							</div>\r\n");
      out.write("							<div class=\"card-img\">\r\n");
      out.write("								<div class=\"edu_img\">\r\n");
      out.write("									<img src=\"resources/images/list_banner/minibanner_eduexplain.png\">\r\n");
      out.write("								</div>\r\n");
      out.write("							</div>\r\n");
      out.write("						</div>\r\n");
      out.write("					</li>\r\n");
      out.write("					<li>\r\n");
      out.write("					<div class=\"onecard\">\r\n");
      out.write("						<div class=\"edu-card\">\r\n");
      out.write("								<div class=\"edutext\">\r\n");
      out.write("									<div class=\"edu_title\">1231231231231231231</div>\r\n");
      out.write("									<div class=\"edu_content\">\r\n");
      out.write("										안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요 안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요 안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요 안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요 안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요 안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요 안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요 안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요 안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요\r\n");
      out.write("									</div>\r\n");
      out.write("								</div>\r\n");
      out.write("						</div>\r\n");
      out.write("						<div class=\"card-img\">\r\n");
      out.write("							<div class=\"edu_img\">\r\n");
      out.write("								<img src=\"resources/images/list_banner/minibanner_eduexplain.png\">\r\n");
      out.write("							</div>\r\n");
      out.write("						</div>\r\n");
      out.write("					</div>\r\n");
      out.write("					</li>\r\n");
      out.write("					<li>\r\n");
      out.write("					<div class=\"onecard\">\r\n");
      out.write("						<div class=\"edu-card\">\r\n");
      out.write("								<div class=\"edutext\">\r\n");
      out.write("									<div class=\"edu_title\">1231231231231231231</div>\r\n");
      out.write("									<div class=\"edu_content\">\r\n");
      out.write("										안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요 안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요 안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요 안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요 안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요 안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요 안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요 안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요 안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요\r\n");
      out.write("									</div>\r\n");
      out.write("								</div>\r\n");
      out.write("						</div>\r\n");
      out.write("						<div class=\"card-img\">\r\n");
      out.write("							<div class=\"edu_img\">\r\n");
      out.write("								<img src=\"resources/images/list_banner/minibanner_eduexplain.png\">\r\n");
      out.write("							</div>\r\n");
      out.write("						</div>\r\n");
      out.write("					</div>\r\n");
      out.write("					</li>\r\n");
      out.write("				</ul>\r\n");
      out.write("				</div>\r\n");
      out.write("	</div>\r\n");
      out.write("	<div>\r\n");
      out.write("	<!-- 검색바 -->\r\n");
      out.write("	</div>\r\n");
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
