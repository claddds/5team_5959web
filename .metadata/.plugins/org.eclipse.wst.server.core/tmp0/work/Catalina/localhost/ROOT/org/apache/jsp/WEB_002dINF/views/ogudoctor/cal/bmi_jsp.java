/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.76
 * Generated at: 2023-09-01 08:35:14 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views.ogudoctor.cal;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class bmi_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<script\r\n");
      out.write("	src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js\"></script>\r\n");
      out.write("<style type=\"text/css\">\r\n");
      out.write("<style type=\"text/css\">\r\n");
      out.write("div {\r\n");
      out.write("	display: block;\r\n");
      out.write("}\r\n");
      out.write(".ccSDWw {\r\n");
      out.write("	display: flex;\r\n");
      out.write("	-webkit-box-pack: center;\r\n");
      out.write("	justify-content: center;\r\n");
      out.write("	-webkit-box-align: center;\r\n");
      out.write("	align-items: center;\r\n");
      out.write("	height: 35px;\r\n");
      out.write("	border-bottom: 1px solid rgb(228, 228, 230);\r\n");
      out.write("	background-color: white;\r\n");
      out.write("}\r\n");
      out.write(".huFlcW {\r\n");
      out.write("	position: relative;\r\n");
      out.write("	z-index: 1;\r\n");
      out.write("	height: 30px;\r\n");
      out.write("	padding: 0px 25px;\r\n");
      out.write("	font-size: 13px;\r\n");
      out.write("	line-height: 16px;\r\n");
      out.write("	text-decoration: none;\r\n");
      out.write("	color: rgb(9, 9, 9);\r\n");
      out.write("	background-color: rgb(255, 255, 255);\r\n");
      out.write("	font-weight: bold;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("/* a:-webkit-any-link {\r\n");
      out.write("	color: -webkit-link;\r\n");
      out.write("	cursor: pointer;\r\n");
      out.write("	text-decoration: underline;\r\n");
      out.write("}\r\n");
      out.write(" */\r\n");
      out.write(".gWFIhC {\r\n");
      out.write("	position: relative;\r\n");
      out.write("	z-index: 1;\r\n");
      out.write("	height: 30px;\r\n");
      out.write("	padding: 0px 25px;\r\n");
      out.write("	font-size: 13px;\r\n");
      out.write("	line-height: 16px;\r\n");
      out.write("	font-weight: 500;\r\n");
      out.write("	text-decoration: none;\r\n");
      out.write("	color: rgb(134, 134, 136);\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("/* a:-webkit-any-link {\r\n");
      out.write("	color: -webkit-link;\r\n");
      out.write("	cursor: pointer;\r\n");
      out.write("	text-decoration: underline;\r\n");
      out.write("} */\r\n");
      out.write("\r\n");
      out.write(".dDWxH {\r\n");
      out.write("	display: flex;\r\n");
      out.write("	-webkit-box-pack: end;\r\n");
      out.write("	justify-content: flex-end;\r\n");
      out.write("	margin: 0px auto;\r\n");
      out.write("	max-width: 620px;\r\n");
      out.write("	position: relative;\r\n");
      out.write("	height: 400px;\r\n");
      out.write("	z-index:-1;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".gmQRFo {\r\n");
      out.write("	padding-top: 93px;\r\n");
      out.write("	display: flex;\r\n");
      out.write("	flex-direction: column;\r\n");
      out.write("	position: absolute;\r\n");
      out.write("	top: 0px;\r\n");
      out.write("	left: 0px;\r\n");
      out.write("	z-index: 1;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".cFMBsW {\r\n");
      out.write("	margin: 0px;\r\n");
      out.write("	white-space: nowrap;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".iCJkkn {\r\n");
      out.write("	color: rgb(9, 9, 9);\r\n");
      out.write("	font-size: 38px;\r\n");
      out.write("	line-height: 1.315em;\r\n");
      out.write("	font-family: JalnanOTF;\r\n");
      out.write("	margin: 0px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("h1 {\r\n");
      out.write("	display: block;\r\n");
      out.write("	font-size: 2em;\r\n");
      out.write("	margin-block-start: 0.67em;\r\n");
      out.write("	margin-block-end: 0.67em;\r\n");
      out.write("	margin-inline-start: 0px;\r\n");
      out.write("	margin-inline-end: 0px;\r\n");
      out.write("	font-weight: bold;\r\n");
      out.write("}\r\n");
      out.write(".ejZDiW {\r\n");
      out.write("	color: rgb(59, 116, 200);\r\n");
      out.write("	font-size: inherit;\r\n");
      out.write("	line-height: inherit;\r\n");
      out.write("	white-space: nowrap;\r\n");
      out.write("}\r\n");
      out.write(".iRdXUj {\r\n");
      out.write("	font-size: 16px;\r\n");
      out.write("	margin: 0px;\r\n");
      out.write("	white-space: nowrap;\r\n");
      out.write("	color: rgb(134, 134, 136);\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".bFEDlq {\r\n");
      out.write("	color: rgb(9, 9, 9);\r\n");
      out.write("	font-size: 16px;\r\n");
      out.write("	line-height: 1.75em;\r\n");
      out.write("	font-family: \"Apple SD Gothic Neo\";\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("p {\r\n");
      out.write("	display: block;\r\n");
      out.write("	margin-block-start: 1em;\r\n");
      out.write("	margin-block-end: 1em;\r\n");
      out.write("	margin-inline-start: 0px;\r\n");
      out.write("	margin-inline-end: 0px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".hofxzw {\r\n");
      out.write("	padding: 60px 50px;\r\n");
      out.write("	width: 620px;\r\n");
      out.write("	background-color: rgb(255, 255, 255);\r\n");
      out.write("	border-radius: 14px;\r\n");
      out.write("	box-sizing: border-box;\r\n");
      out.write("	box-shadow: rgba(222, 222, 224, 0.65) 0px 12px 25px -20px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("form {\r\n");
      out.write("	display: block;\r\n");
      out.write("	margin-top: 0em;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".jjmNcZ {\r\n");
      out.write("	display: flex;\r\n");
      out.write("	flex-direction: column;\r\n");
      out.write("	align-items: flex-end;\r\n");
      out.write("	margin-bottom: 32px;\r\n");
      out.write("}\r\n");
      out.write(".sXbo {\r\n");
      out.write("	display: flex;\r\n");
      out.write("	flex-direction: row;\r\n");
      out.write("	width: 100%;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".bnlRbj {\r\n");
      out.write("	width: 160px;\r\n");
      out.write("	font-weight: bold;\r\n");
      out.write("	padding: 10px 0px;\r\n");
      out.write("	white-space: pre-line;\r\n");
      out.write("	font-family: JalnanOTF;\r\n");
      out.write("	font-size: 16px;\r\n");
      out.write("	line-height: 1.75;\r\n");
      out.write("	letter-spacing: -0.32px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("label {\r\n");
      out.write("	cursor: default;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".jGNyzc {\r\n");
      out.write("	display: flex;\r\n");
      out.write("	flex-wrap: wrap;\r\n");
      out.write("	max-width: 360px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".iempoK {\r\n");
      out.write("	border-radius: 10px;\r\n");
      out.write("	background-color: rgb(246, 247, 248);\r\n");
      out.write("	border: 5px solid rgb(246, 247, 248);\r\n");
      out.write("	display: flex;\r\n");
      out.write("	-webkit-box-pack: center;\r\n");
      out.write("	justify-content: center;\r\n");
      out.write("	-webkit-box-align: center;\r\n");
      out.write("	align-items: center;\r\n");
      out.write("	flex-direction: column;\r\n");
      out.write("	width: 170px;\r\n");
      out.write("	height: 150px;\r\n");
      out.write("	box-sizing: border-box;\r\n");
      out.write("	color: rgb(207, 206, 206);\r\n");
      out.write("	margin-right: 20px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".lbTxgq {\r\n");
      out.write("	width: 110px;\r\n");
      out.write("	height: 110px;\r\n");
      out.write("	background: transparent;\r\n");
      out.write("	opacity: 0.35;\r\n");
      out.write("	mix-blend-mode: multiply;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".gqcnzR {\r\n");
      out.write("	text-align: center;\r\n");
      out.write("	font-weight: bold;\r\n");
      out.write("	font-family: JalnanOTF;\r\n");
      out.write("	margin: 0px;\r\n");
      out.write("	color: inherit;\r\n");
      out.write("}\r\n");
      out.write(".iempoK:last-child {\r\n");
      out.write("	margin-right: 0px;\r\n");
      out.write("}\r\n");
      out.write(".jrTReh {\r\n");
      out.write("	margin: 60px 70px 0px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".xWwDG {\r\n");
      out.write("	width: 100%;\r\n");
      out.write("	height: 48px;\r\n");
      out.write("	border-radius: 14px;\r\n");
      out.write("	border: none;\r\n");
      out.write("	outline: none;\r\n");
      out.write("	font-family: JalnanOTF;\r\n");
      out.write("	color: rgb(9, 9, 9);\r\n");
      out.write("	background-color: rgb(252, 209, 30);\r\n");
      out.write("}\r\n");
      out.write(".jyMFKB {\r\n");
      out.write("	display: flex;\r\n");
      out.write("	-webkit-box-pack: center;\r\n");
      out.write("	justify-content: center;\r\n");
      out.write("	padding: 80px 0px;\r\n");
      out.write("	background-color: rgb(246, 247, 248);\r\n");
      out.write("}\r\n");
      out.write("label {\r\n");
      out.write("    cursor: default;\r\n");
      out.write("}\r\n");
      out.write(".fgqvrq {\r\n");
      out.write("    border-radius: 10px;\r\n");
      out.write("    border: 5px solid rgb(252, 209, 30);\r\n");
      out.write("    display: flex;\r\n");
      out.write("    -webkit-box-pack: center;\r\n");
      out.write("    justify-content: center;\r\n");
      out.write("    -webkit-box-align: center;\r\n");
      out.write("    align-items: center;\r\n");
      out.write("    flex-direction: column;\r\n");
      out.write("    width: 110px;\r\n");
      out.write("    height: 110px;\r\n");
      out.write("    box-sizing: border-box;\r\n");
      out.write("    margin-right: 15px;\r\n");
      out.write("    background-color: rgb(255, 255, 255);\r\n");
      out.write("    color: rgb(9, 9, 9);\r\n");
      out.write("}\r\n");
      out.write(".fgqvrq img {\r\n");
      out.write("    opacity: 1;\r\n");
      out.write("}\r\n");
      out.write("img {\r\n");
      out.write("    overflow-clip-margin: content-box;\r\n");
      out.write("    overflow: clip;\r\n");
      out.write("}\r\n");
      out.write(".fVepBC {\r\n");
      out.write("    border-radius: 10px;\r\n");
      out.write("    background-color: rgb(246, 247, 248);\r\n");
      out.write("    border: 5px solid rgb(246, 247, 248);\r\n");
      out.write("    display: flex;\r\n");
      out.write("    -webkit-box-pack: center;\r\n");
      out.write("    justify-content: center;\r\n");
      out.write("    -webkit-box-align: center;\r\n");
      out.write("    align-items: center;\r\n");
      out.write("    flex-direction: column;\r\n");
      out.write("    width: 110px;\r\n");
      out.write("    height: 110px;\r\n");
      out.write("    box-sizing: border-box;\r\n");
      out.write("    color: rgb(207, 206, 206);\r\n");
      out.write("    margin-right: 15px;\r\n");
      out.write("}\r\n");
      out.write(".fVepBC:nth-child(3n) {\r\n");
      out.write("    margin-right: 0px;\r\n");
      out.write("}\r\n");
      out.write(".fVepBC:nth-child(4), .fVepBC:nth-child(5) {\r\n");
      out.write("    margin-top: 15px;\r\n");
      out.write("}\r\n");
      out.write(".fVepBC:last-child {\r\n");
      out.write("    margin-right: 0px;\r\n");
      out.write("}\r\n");
      out.write(".liyBtK {\r\n");
      out.write("    border-radius: 10px;\r\n");
      out.write("    border: 5px solid rgb(252, 209, 30);\r\n");
      out.write("    display: flex;\r\n");
      out.write("    -webkit-box-pack: center;\r\n");
      out.write("    justify-content: center;\r\n");
      out.write("    -webkit-box-align: center;\r\n");
      out.write("    align-items: center;\r\n");
      out.write("    flex-direction: column;\r\n");
      out.write("    width: 170px;\r\n");
      out.write("    height: 150px;\r\n");
      out.write("    box-sizing: border-box;\r\n");
      out.write("    margin-right: 20px;\r\n");
      out.write("    background-color: rgb(255, 255, 255);\r\n");
      out.write("    color: rgb(9, 9, 9);\r\n");
      out.write("}\r\n");
      out.write("sc-fbJfA {\r\n");
      out.write("	z-index: -1;\r\n");
      out.write("}\r\n");
      out.write(".liyBtK:last-child {\r\n");
      out.write("    margin-right: 0px;\r\n");
      out.write("}\r\n");
      out.write(".fgqvrq:nth-child(3n) {\r\n");
      out.write("    margin-right: 0px;\r\n");
      out.write("}\r\n");
      out.write(".fgqvrq:last-child {\r\n");
      out.write("    margin-right: 0px;\r\n");
      out.write("}\r\n");
      out.write(".fgqvrq:nth-child(4), .fgqvrq:nth-child(5) {\r\n");
      out.write("    margin-top: 15px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("	<header>\r\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "/WEB-INF/views/home/home_top.jsp", out, false);
      out.write("\r\n");
      out.write("    </header>\r\n");
      out.write("	<main class=\"sc-bCDidY kZZDuN bmiJsp\">\r\n");
      out.write("		<div>\r\n");
      out.write("			<div class=\"sc-jMAIzZ fNDbMx\">\r\n");
      out.write("				<ul class=\"sc-dQelHR kYqwoU\">\r\n");
      out.write("				</ul>\r\n");
      out.write("			</div>\r\n");
      out.write("		</div>\r\n");
      out.write("		<div>\r\n");
      out.write("			<div class=\"sc-ehsgIH ccSDWw\" >\r\n");
      out.write("				<div>\r\n");
      out.write("					<a class=\"sc-fbJfA gWFIhC\" href=\"/food.do\">사료칼로리</a><a\r\n");
      out.write("						class=\"sc-fbJfA gWFIhC\" href=\"/recommend.do\">권장칼로리</a><a\r\n");
      out.write("						class=\"sc-fbJfA huFlcW\" href=\"/bmi.do\">비만도</a><a\r\n");
      out.write("						class=\"sc-fbJfA gWFIhC\" href=\"/age.do\">나이</a>\r\n");
      out.write("				</div>\r\n");
      out.write("			</div>\r\n");
      out.write("		</div>\r\n");
      out.write("		<div class=\"sc-ldFCYb dDWxH\">\r\n");
      out.write("			<div class=\"sc-gHyekI gmQRFo\">\r\n");
      out.write("				<h1 class=\"sc-cPlDXj sc-cmEail iCJkkn cFMBsW\">\r\n");
      out.write("					<span color=\"#3b74c8\" class=\"sc-hjsqBZ ejZDiW\">비만도계산기</span>란?\r\n");
      out.write("				</h1>\r\n");
      out.write("				<p class=\"sc-kZGvTt sc-eZYOHW bFEDlq iRdXUj\">\r\n");
      out.write("					우리 아이의 비만도를 시각적으로<br>볼 수 있는 도구입니다.\r\n");
      out.write("				</p>\r\n");
      out.write("			</div>\r\n");
      out.write("			<img src=\"/resources/images/bmiMain.png\" class=\"sc-FeKFz dZVjNB\">\r\n");
      out.write("		</div>\r\n");
      out.write("		<div class=\"sc-jOQpHc jyMFKB\">\r\n");
      out.write("			<form class=\"sc-ftWlEF hofxzw\">\r\n");
      out.write("				<div class=\"sc-dskThN jjmNcZ\">\r\n");
      out.write("					<div class=\"sc-cYRmzm sXbo\">\r\n");
      out.write("						<label class=\"sc-hNeXkk bnlRbj\">반려동물 종류</label>\r\n");
      out.write("						<div class=\"sc-fGjrnr jGNyzc\">\r\n");
      out.write("							<div class=\"sc-dsInJy iempoK selPet\">\r\n");
      out.write("								<img src=\"/resources/images/dog.png\" alt=\"Option Image\"\r\n");
      out.write("									class=\"sc-dlUsjx lbTxgq\">\r\n");
      out.write("								<p class=\"sc-YtoFE gqcnzR\">강아지</p>\r\n");
      out.write("							</div>\r\n");
      out.write("							<div class=\"sc-dsInJy iempoK selPet\">\r\n");
      out.write("								<img src=\"/resources/images/cat.png\" alt=\"Option Image\"\r\n");
      out.write("									class=\"sc-dlUsjx lbTxgq\">\r\n");
      out.write("								<p class=\"sc-YtoFE gqcnzR\">고양이</p>\r\n");
      out.write("							</div>\r\n");
      out.write("						</div>\r\n");
      out.write("					</div>\r\n");
      out.write("				</div>\r\n");
      out.write("				<div class=\"sc-dskThN jjmNcZ petImage\" style=\"display:none;\">\r\n");
      out.write("					<div class=\"sc-cYRmzm sXbo\">\r\n");
      out.write("						<label class=\"sc-hNeXkk bnlRbj\">우리 아이와 닮은 사진을 골라주세요.</label>\r\n");
      out.write("						<div class=\"sc-fGjrnr jGNyzc\">\r\n");
      out.write("							<div class=\"sc-dsInJy fVepBC selImg\">\r\n");
      out.write("								<img src=\"/resources/images/dog-fat-1.png\"\r\n");
      out.write("									alt=\"Option Image\" class=\"sc-dlUsjx lbTxgq\">\r\n");
      out.write("							</div>\r\n");
      out.write("							<div class=\"sc-dsInJy fVepBC selImg\">\r\n");
      out.write("								<img src=\"/resources/images/dog-fat-2.png\"\r\n");
      out.write("									alt=\"Option Image\" class=\"sc-dlUsjx lbTxgq\">\r\n");
      out.write("							</div>\r\n");
      out.write("							<div class=\"sc-dsInJy fVepBC selImg\">\r\n");
      out.write("							<img src=\"/resources/images/dog-fat-3.png\"\r\n");
      out.write("									alt=\"Option Image\" class=\"sc-dlUsjx lbTxgq\">\r\n");
      out.write("							</div>\r\n");
      out.write("							<div class=\"sc-dsInJy fVepBC selImg\">\r\n");
      out.write("								<img src=\"/resources/images/dog-fat-4.png\"\r\n");
      out.write("									alt=\"Option Image\" class=\"sc-dlUsjx lbTxgq\">\r\n");
      out.write("							</div>\r\n");
      out.write("							<div class=\"sc-dsInJy fVepBC selImg\">\r\n");
      out.write("								<img src=\"/resources/images/dog-fat-5.png\"\r\n");
      out.write("									alt=\"Option Image\" class=\"sc-dlUsjx lbTxgq\">\r\n");
      out.write("							</div>\r\n");
      out.write("						</div>\r\n");
      out.write("					</div>\r\n");
      out.write("				</div>\r\n");
      out.write("				<div class=\"sc-faCEWe jrTReh\">\r\n");
      out.write("					<button type=\"button\"sc-fYdXmn xWwDG getResult\" >결과보기</button>\r\n");
      out.write("				</div>\r\n");
      out.write("			</form>\r\n");
      out.write("		</div>\r\n");
      out.write("	</main>\r\n");
      out.write("</body>\r\n");
      out.write("<script>\r\n");
      out.write("$(document).ready(function(){\r\n");
      out.write("	init();\r\n");
      out.write("});\r\n");
      out.write("\r\n");
      out.write("function init() {\r\n");
      out.write("	var $jsp = $('.bmiJsp');\r\n");
      out.write("	\r\n");
      out.write("	$jsp.find('.selPet').on('click',function() {\r\n");
      out.write("		$jsp.find('.sc-dsInJy').removeClass('liyBtK').addClass('iempoK');\r\n");
      out.write("		$jsp.find('.petImage').show();\r\n");
      out.write("		if ($(this).find('.sc-YtoFE').text() == '고양이' && $(this).hasClass('liyBtK')) {\r\n");
      out.write("			$(this).removeClass('liyBtK').addClass('iempoK');\r\n");
      out.write("		} else if ($(this).find('.sc-YtoFE').text() == '고양이' && $(this).hasClass('iempoK')) {\r\n");
      out.write("			$jsp.find('.petImage').find('img').each(function(idx,inp){\r\n");
      out.write("			    ++idx;\r\n");
      out.write("				$(inp).attr('src','/resources/images/cat-fat-'+idx+'.png');\r\n");
      out.write("			});\r\n");
      out.write("			$(this).removeClass('iempoK').addClass('liyBtK');\r\n");
      out.write("		}\r\n");
      out.write("		if ($(this).find('.sc-YtoFE').text() == '강아지' && $(this).hasClass('liyBtK')) {\r\n");
      out.write("			$(this).removeClass('liyBtK').addClass('iempoK');\r\n");
      out.write("		} else if ($(this).find('.sc-YtoFE').text() == '강아지' && $(this).hasClass('iempoK')) {\r\n");
      out.write("			$jsp.find('.petImage').find('img').each(function(idx,inp){\r\n");
      out.write("				++idx;\r\n");
      out.write("				$(inp).attr('src','/resources/images/dog-fat-'+idx+'.png');\r\n");
      out.write("			});\r\n");
      out.write("			$(this).removeClass('iempoK').addClass('liyBtK');\r\n");
      out.write("		}\r\n");
      out.write("	});\r\n");
      out.write("	\r\n");
      out.write("	$jsp.find('.selImg').on('click',function(){\r\n");
      out.write("		$jsp.find('.petImage').find('.selImg').each(function(idx, inp){\r\n");
      out.write("				$(inp).addClass('fVepBC').removeClass('fgqvrq');\r\n");
      out.write("		});\r\n");
      out.write("		$(this).addClass('fgqvrq').removeClass('fVepBC');\r\n");
      out.write("	});\r\n");
      out.write("	\r\n");
      out.write("	// 결과보기 버튼 이벤트\r\n");
      out.write("	$jsp.find('.getResult').on('click',function(){\r\n");
      out.write("		location.replace('/bmi_result.do')\r\n");
      out.write("	});\r\n");
      out.write("};\r\n");
      out.write("</script>\r\n");
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
