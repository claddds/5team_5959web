/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.76
 * Generated at: 2023-09-07 06:04:24 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views.home;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class home_005ftop_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<meta charset=\"UTF-8\">\n");
      out.write("<title>Insert title here</title>\n");
      out.write("<style type=\"text/css\">\n");
      out.write("\n");
      out.write(".header-ALink {\n");
      out.write("  text-decoration: none;\n");
      out.write("  color: #f8f8ff;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".top-nav {\n");
      out.write("  background-color: #FFA629;\n");
      out.write("  display: flex;\n");
      out.write("  align-items: center;\n");
      out.write("  padding: 20px 20px;\n");
      out.write("}\n");
      out.write("\n");
      out.write(" \n");
      out.write(".midmenu {\n");
      out.write("  list-style: none;\n");
      out.write("  font-family: 'Bagel Fat One', cursive;\n");
      out.write("  margin:auto;\n");
      out.write("}\n");
      out.write("	\n");
      out.write("\n");
      out.write("ul.midmenu > li{\n");
      out.write("	font-size: 30px;\n");
      out.write("	display: inline-block;\n");
      out.write("	width:200px;\n");
      out.write("	padding: 10px 5px;\n");
      out.write("	text-align: center;\n");
      out.write("	position: relative;\n");
      out.write("}\n");
      out.write("\n");
      out.write("ul.midmenu > li:hover ul.sub{\n");
      out.write("	display:block;\n");
      out.write("	border-radius:10px;\n");
      out.write("	padding:0;\n");
      out.write("}\n");
      out.write("\n");
      out.write("ul.midmenu > li ul.sub li:hover{\n");
      out.write("	background-color: tomato;\n");
      out.write("	border-radius:10px;\n");
      out.write("}\n");
      out.write("\n");
      out.write("ul.midmenu > li ul.sub{\n");
      out.write(" 	display: none; \n");
      out.write("	position: absolute;\n");
      out.write("	width:200px;\n");
      out.write("	text-align: center;\n");
      out.write("	background-color: #FFA629;\n");
      out.write("	color: #f8f8ff;\n");
      out.write(" 	list-style:none; \n");
      out.write("	margin : 10px 0 10px 0px;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".topmenu {\n");
      out.write("  text-align: left;\n");
      out.write("  display: flex;\n");
      out.write("  justify-content: flex-end; /* 오른쪽 정렬을 추가 */\n");
      out.write("  height: 50px;\n");
      out.write("  align-items: center; /* 수직 가운데 정렬 추가 */\n");
      out.write("  list-style: none;\n");
      out.write("  color: #FFA629;\n");
      out.write("  font-family: 'Bagel Fat One', cursive;\n");
      out.write("  margin-bottom: 20px;\n");
      out.write("}\n");
      out.write("\n");
      out.write("\n");
      out.write(".topmenu li {\n");
      out.write("  font-size: 25px;\n");
      out.write("  position: relative;\n");
      out.write("  padding: 0 15px;\n");
      out.write("}\n");
      out.write("\n");
      out.write("\n");
      out.write("/* 메인로고 꾸밈 */\n");
      out.write(".mainlogo {\n");
      out.write("  display: flex;\n");
      out.write("  justify-content: center;\n");
      out.write("  align-items: center;\n");
      out.write("  height: 100px;\n");
      out.write("  margin-bottom: 40px;\n");
      out.write("}\n");
      out.write("\n");
      out.write("</style>\n");
      out.write("\n");
      out.write("<!-- 메인화면에서 각각 화면이동할 수 있는 컨트롤러 스크립트 -->\n");
      out.write("<script type=\"text/javascript\">\n");
      out.write("	\n");
      out.write("</script>\n");
      out.write("<link rel=\"preconnect\" href=\"https://fonts.googleapis.com\">\n");
      out.write("<link rel=\"preconnect\" href=\"https://fonts.gstatic.com\" crossorigin>\n");
      out.write("<link href=\"https://fonts.googleapis.com/css2?family=Bagel+Fat+One&display=swap\" rel=\"stylesheet\">\n");
      out.write("</head>\n");
      out.write("<body style=\"font-family: 'Noto Sans KR', sans-serif;\">\n");
      out.write("\n");
      out.write("<header id=\"top_head\" style=\"width:1920px; position: relative; left: 50%; transform: translate(-50%);\">\n");
      out.write("\n");
      out.write("	\n");
      out.write("	<!-- 최상단 NOTICE,LOGIN,JOIN US -->\n");
      out.write("	<div>\n");
      out.write("	  <ul class=\"topmenu\">\n");
      out.write("	    <li><a href=\"\" style=\"color:tomato; display:none;\" class=\"header-ALink\">관리자 페이지</a></li><!-- id가 admin일 때 display:\"\" JS 처리  -->\n");
      out.write("	    <li><a href=\"/supdisplay.do\" style=\"color:#FFA629;\" class=\"header-ALink\">NOTICE </a></li>\n");
      out.write("	    <li><a href=\"/joindisplay.do\" style=\"color:#FFA629;\" class=\"header-ALink\">JOIN US</a></li>\n");
      out.write("	    <li><a href=\"/logindisplay.do\" style=\"color:#FFA629;\" class=\"header-ALink\">LOGIN</a></li><!-- 로그인 했을 때 LOGIN => LOGOUT 변경 -->\n");
      out.write("	  </ul>\n");
      out.write("	</div>\n");
      out.write("	<!-- 5959 메인 로고 -->\n");
      out.write("	<div class=\"mainlogo\">\n");
      out.write("	  <a href=\"/homedisplay.do\"><img src=\"resources/images/home/mainlogo.png\" width=\"200px\"></a>\n");
      out.write("	</div>\n");
      out.write("	<section class=\"top-nav\">\n");
      out.write("		   \n");
      out.write("		  <!-- 메뉴 -->\n");
      out.write("		  <ul class=\"midmenu\">\n");
      out.write("			    <li><a href=\"/homedisplay.do\" class=\"header-ALink\">HOME</a></li>\n");
      out.write("			    <li class=\"edu_main\"><a href=\"/alledudisplay.do\" class=\"header-ALink\">교육정보</a>\n");
      out.write("			    	<ul class=\"edu sub\">\n");
      out.write("			    		<li><a href=\"/essentialdisplay.do\" class=\"header-ALink\">필수 정보</a></li>\n");
      out.write("			    		<li><a href=\"/bringingdisplay.do\" class=\"header-ALink\">양육 정보</a></li>\n");
      out.write("			    		<li><a href=\"/trainingdisplay.do\" class=\"header-ALink\">훈련 정보</a></li>\n");
      out.write("			    	</ul>\n");
      out.write("			    </li>\n");
      out.write("			    <li class=\"ogu_main\"><a href=\"/ogudoctormaindisplay.do\" class=\"header-ALink\">오구닥터</a>\n");
      out.write("			        <ul class=\"ogu sub\">\n");
      out.write("			    		<li><a href=\"/ogudoctormaindisplay.do\" class=\"header-ALink\">건강 자가진단</a></li>\n");
      out.write("			    		<li><a href=\"/ogudoctorcaldisplay.do\" class=\"header-ALink\">건강 계산기</a></li>\n");
      out.write("			    	</ul>\n");
      out.write("			    </li>\n");
      out.write("			    <li><a href=\"/placemaindisplay.do\" class=\"header-ALink\">플레이스</a></li>\n");
      out.write("			    <li><a href=\"\" class=\"header-ALink\">모두의 포켓</a></li>\n");
      out.write("			    <li class=\"lounge_main\"><a href=\"/loungemaindisplay.do\" class=\"header-ALink\">라운지</a>\n");
      out.write("			   		<ul class=\"lounge sub\">\n");
      out.write("			    		<li><a href=\"/loungesharedisplay.do\" class=\"header-ALink\">일상 공유</a></li>\n");
      out.write("			    		<li><a href=\"/loungerecommdisplay.do\" class=\"header-ALink\">추천 탭</a></li>\n");
      out.write("			    		<li><a href=\"/loungeqnadisplay.do\" class=\"header-ALink\">유저간 질문</a></li>\n");
      out.write("			    	</ul>\n");
      out.write("			    </li>\n");
      out.write("			    <li class=\"food_main\"><a href=\"/dogfooddisplay.do\" class=\"header-ALink\">먹거리</a>\n");
      out.write("			    	<ul class=\"food sub\">\n");
      out.write("			    		<li><a href=\"/dogfooddisplay.do\" class=\"header-ALink\">#강아지</a></li>\n");
      out.write("			    		<li><a href=\"/catfooddisplay.do\" class=\"header-ALink\">#고양이</a></li>\n");
      out.write("			    	</ul>\n");
      out.write("			    </li>\n");
      out.write("			    <li class=\"support_main\"><a href=\"/supdisplay.do\" class=\"header-ALink\">고객지원</a>\n");
      out.write("			   		 <ul class=\"support sub\">\n");
      out.write("			    		<li><a href=\"/supdisplay.do\" class=\"header-ALink\">공지사항</a></li>\n");
      out.write("			    		<li><a href=\"/faqdisplay.do\" class=\"header-ALink\">문의사항</a></li>\n");
      out.write("			    		<li><a href=\"/repdisplay.do\" class=\"header-ALink\">신고</a></li>\n");
      out.write("			    	</ul>\n");
      out.write("			    </li>\n");
      out.write("		  </ul>\n");
      out.write("		  <div></div>\n");
      out.write("		  \n");
      out.write("	</section>\n");
      out.write("	</header>\n");
      out.write("</body>\n");
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
