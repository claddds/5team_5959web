/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.76
 * Generated at: 2023-09-06 12:05:15 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views.ogudoctor.self;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class ogu_005fdog_005fcategory_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<title>오구닥터 간단체크-강아지</title> \r\n");
      out.write("<!-- Font Awesome Icons -->\r\n");
      out.write("<link\r\n");
      out.write("	rel=\"stylesheet\"\r\n");
      out.write("	href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css\"\r\n");
      out.write("/>\r\n");
      out.write("<link rel=\"preconnect\" href=\"https://fonts.googleapis.com\">\r\n");
      out.write("<link rel=\"preconnect\" href=\"https://fonts.gstatic.com\" crossorigin>\r\n");
      out.write("<link href=\"https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;500&display=swap\" rel=\"stylesheet\">\r\n");
      out.write("<style type=\"text/css\">\r\n");
      out.write("	body{\r\n");
      out.write("		\r\n");
      out.write("	}\r\n");
      out.write("	\r\n");
      out.write("	#minibanner img{\r\n");
      out.write("		width:1920px;\r\n");
      out.write("		height:200px;\r\n");
      out.write("		display:flex;\r\n");
      out.write("		margin:auto;\r\n");
      out.write("		margin-top:20px;\r\n");
      out.write("		margin-bottom: 20px;\r\n");
      out.write("    }\r\n");
      out.write("    \r\n");
      out.write("	.category_check{\r\n");
      out.write("   \r\n");
      out.write("	}\r\n");
      out.write("	\r\n");
      out.write("	.category_explain{\r\n");
      out.write("		width: 1920px;\r\n");
      out.write("		text-align: center;\r\n");
      out.write("		margin: 0 auto;\r\n");
      out.write("		margin-bottom: 30px;\r\n");
      out.write("	}\r\n");
      out.write("	.wrapper{\r\n");
      out.write("		width: 1600px;\r\n");
      out.write("		text-align: center;\r\n");
      out.write("		margin: 0 auto;\r\n");
      out.write("		display: grid;\r\n");
      out.write("		place-items: center;\r\n");
      out.write("		gap:15px;\r\n");
      out.write("		\r\n");
      out.write("	}\r\n");
      out.write("	.container{\r\n");
      out.write("		width: 180px;\r\n");
      out.write("		height: 180px;\r\n");
      out.write("		background-color: #ffffff;\r\n");
      out.write("		position: relative;\r\n");
      out.write("		cursor: pointer;\r\n");
      out.write("	}\r\n");
      out.write("	.container img{\r\n");
      out.write("		width: 70%;\r\n");
      out.write("		height: 70%;\r\n");
      out.write("  		position: absolute;\r\n");
      out.write("  		margin: auto;\r\n");
      out.write("  		left: 0;\r\n");
      out.write("  		right: 0;\r\n");
      out.write("  		top: 0;\r\n");
      out.write("  		bottom: 0;\r\n");
      out.write("  		cursor: pointer;\r\n");
      out.write("	}\r\n");
      out.write("	input[type=\"checkbox\"]{\r\n");
      out.write("		-webkit-appearance: none;\r\n");
      out.write("		position: relative;\r\n");
      out.write("		width: 100%;\r\n");
      out.write("		cursor:pointer;\r\n");
      out.write("	}\r\n");
      out.write("	input[type=\"checkbox\"]:after {\r\n");
      out.write("  		position: absolute;\r\n");
      out.write("  		font-family: \"Font Awesome 5 Free\";\r\n");
      out.write("  		font-weight: 400;\r\n");
      out.write("  		content: \"\\f111\";\r\n");
      out.write("  		font-size: 18px;\r\n");
      out.write("  		color: #ffa234;\r\n");
      out.write("  		right: 10px;\r\n");
      out.write("  		top: -5px;\r\n");
      out.write("	}\r\n");
      out.write("	\r\n");
      out.write("	input[type=\"checkbox\"]:checked:after {\r\n");
      out.write("  		font-weight: 900;\r\n");
      out.write("  		content: \"\\f058\";\r\n");
      out.write("  		color: #ffa234;\r\n");
      out.write("	}\r\n");
      out.write("	\r\n");
      out.write("	@media screen and (min-width: 950px) {\r\n");
      out.write("		.wrapper{\r\n");
      out.write("			grid-template-columns: repeat(4, 1fr);\r\n");
      out.write("    		gap: 10px;\r\n");
      out.write("		}\r\n");
      out.write("		.container {\r\n");
      out.write("    		height: 300px;\r\n");
      out.write("    		width: 300px;\r\n");
      out.write("  		}\r\n");
      out.write("  		input[type=\"checkbox\"]:after {\r\n");
      out.write("   			font-size: 22px;\r\n");
      out.write("  		}\r\n");
      out.write("	}\r\n");
      out.write("	\r\n");
      out.write("	/* 버튼 스타일 */\r\n");
      out.write("	.button {\r\n");
      out.write("  		display: inline-block;\r\n");
      out.write("  		border-radius: 4px;\r\n");
      out.write("  		background-color: #ffa234;\r\n");
      out.write("  		border: none;\r\n");
      out.write("  		color: #FFFFFF;\r\n");
      out.write("  		text-align: center;\r\n");
      out.write("  		font-size: 25px;\r\n");
      out.write("  		border-radius: 15px;\r\n");
      out.write("  		\r\n");
      out.write("  		padding: 20px;\r\n");
      out.write("  		margin: 0 auto;\r\n");
      out.write("  		width: 200px;\r\n");
      out.write("  		transition: all 0.5s;\r\n");
      out.write("  		cursor: pointer;\r\n");
      out.write("  		align-items: center;\r\n");
      out.write("	}\r\n");
      out.write("	.button_location{\r\n");
      out.write("		width: 1920px;\r\n");
      out.write("		text-align: center;\r\n");
      out.write("		margin: 0 auto;\r\n");
      out.write("		margin-top: 30px;\r\n");
      out.write("	}\r\n");
      out.write("	.button span {\r\n");
      out.write("	  	cursor: pointer;\r\n");
      out.write("  		display: inline-block;\r\n");
      out.write("  		position: relative;\r\n");
      out.write("	  	transition: 0.5s;\r\n");
      out.write("	}\r\n");
      out.write("\r\n");
      out.write("	.button span:after {\r\n");
      out.write("		content: '\\00bb';\r\n");
      out.write("		position: absolute;\r\n");
      out.write("		opacity: 0;\r\n");
      out.write("		top: 0;\r\n");
      out.write("		right: -20px;\r\n");
      out.write("		transition: 0.5s;\r\n");
      out.write("	}\r\n");
      out.write("\r\n");
      out.write("	.button:hover span {\r\n");
      out.write("		padding-right: 25px;\r\n");
      out.write("	}\r\n");
      out.write("\r\n");
      out.write("	.button:hover span:after {\r\n");
      out.write("		opacity: 1;\r\n");
      out.write("		right: 0;\r\n");
      out.write("	}\r\n");
      out.write("	footer{\r\n");
      out.write("		width:1920px;\r\n");
      out.write("		display:flex;\r\n");
      out.write("		margin:auto;\r\n");
      out.write("		margin-top:20px;\r\n");
      out.write("		margin-bottom: 20px;\r\n");
      out.write("	}\r\n");
      out.write("	\r\n");
      out.write("</style>\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("	// 체크박스의 개수가 3개가 안넘어가게 막아주는 함수\r\n");
      out.write("	function count_check(obj) {\r\n");
      out.write("		var chkBox = document.getElementsByName(\"bodypart_dog\");\r\n");
      out.write("		var chkCnt = 0;\r\n");
      out.write("		for (var i = 0; i < chkBox.length; i++) {\r\n");
      out.write("			if(chkBox[i].checked){\r\n");
      out.write("				chkCnt++;\r\n");
      out.write("			}\r\n");
      out.write("		}\r\n");
      out.write("		if(chkCnt > 3){\r\n");
      out.write("			alert(\"3개까지만 체크 가능합니다.\");\r\n");
      out.write("			obj.checked = false;\r\n");
      out.write("			return false;\r\n");
      out.write("		}\r\n");
      out.write("	}\r\n");
      out.write("	\r\n");
      out.write("	// 다음으로 버튼 클릭 시 체크박스 확인 및 액션 수행\r\n");
      out.write("    function onNextButtonClick() {\r\n");
      out.write("        var chkBox = document.getElementsByName(\"bodypart_dog\");\r\n");
      out.write("        var selectedvalues = [];	// 배열 초기화\r\n");
      out.write("        \r\n");
      out.write("        for (var i = 0; i < chkBox.length; i++) {\r\n");
      out.write("            if (chkBox[i].checked) {\r\n");
      out.write("            	selectedvalues.push(chkBox[i].value);\r\n");
      out.write("            }\r\n");
      out.write("        }\r\n");
      out.write("        if (selectedvalues.length === 0) {\r\n");
      out.write("            alert(\"증상을 최소 하나 선택해야 합니다.\");\r\n");
      out.write("            return;\r\n");
      out.write("        } else{\r\n");
      out.write("        	$.ajax({\r\n");
      out.write("                url: \"/oguselfnextbt.do\",\r\n");
      out.write("                method: \"POST\",\r\n");
      out.write("                data: {selectedvalues:selectedvalues},\r\n");
      out.write("                dataType: \"text\",\r\n");
      out.write("                success: function (response) {\r\n");
      out.write("                    // 성공적으로 요청이 처리된 후 실행되는 로직\r\n");
      out.write("                    console.log(\"성공:\", response);\r\n");
      out.write("                    // 페이지 리다이렉트 등 다른 작업 수행 가능\r\n");
      out.write("                    // 예: window.location.href = \"/새로운페이지.do\";\r\n");
      out.write("                    location.href = \"/oguselfnextbt.do\"\r\n");
      out.write("                }\r\n");
      out.write("            });\r\n");
      out.write("        } \r\n");
      out.write("   		\r\n");
      out.write("    }\r\n");
      out.write("</script>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("	<header>\r\n");
      out.write("		");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "/WEB-INF/views/home/home_top.jsp", out, false);
      out.write("\r\n");
      out.write("	</header>\r\n");
      out.write("	<div id=minibanner>\r\n");
      out.write("        <a href=\"/ogudoctormaindisplay.do\"><img src=\"resources/images/page_banner/listbanner_ogudoctor.png\"></a>\r\n");
      out.write("    </div>\r\n");
      out.write("	<div class=\"category_check\">\r\n");
      out.write("		<div class=\"category_explain\">\r\n");
      out.write("			<h2 style=\"font-family:'Noto Sans KR', sans-serif;\">유형 선택</h2>\r\n");
      out.write("			<br>\r\n");
      out.write("			<h3 style=\"font-family: 'Noto Sans KR', sans-serif;\">반려견의 증상 유형을 선택해주세요</h3>\r\n");
      out.write("			<h4 style=\"font-family: 'Noto Sans KR', sans-serif; color: gray;\"><p>최대 3개까지 가능합니다.</h4>\r\n");
      out.write("		</div>\r\n");
      out.write("		<div class=\"wrapper\">\r\n");
      out.write("			<div class=\"container\">\r\n");
      out.write("				<input type=\"checkbox\" name=\"bodypart_dog\" onclick=\"count_check(this);\" id=\"stool\" value=\"stool\">\r\n");
      out.write("				<label for=\"stool\">\r\n");
      out.write(" 					<img src=\"resources/images/ogudoctor/self_category/stool.png\" />\r\n");
      out.write(" 				</label>\r\n");
      out.write("			</div>\r\n");
      out.write("			<div class=\"container\">\r\n");
      out.write("				<input type=\"checkbox\" name=\"bodypart_dog\" onclick=\"count_check(this);\" id=\"urine\" value=\"urine\">\r\n");
      out.write("				<label for=\"urine\">\r\n");
      out.write(" 					<img src=\"resources/images/ogudoctor/self_category/urine.png\" />\r\n");
      out.write(" 				</label>\r\n");
      out.write("			</div>\r\n");
      out.write("			<div class=\"container\">\r\n");
      out.write("				<input type=\"checkbox\" name=\"bodypart_dog\" onclick=\"count_check(this);\" id=\"meal\" value=\"meal\">\r\n");
      out.write("				<label for=\"meal\">\r\n");
      out.write(" 					<img src=\"resources/images/ogudoctor/self_category/meal.png\" />\r\n");
      out.write(" 				</label>\r\n");
      out.write("			</div>\r\n");
      out.write("			<div class=\"container\">\r\n");
      out.write("				<input type=\"checkbox\" name=\"bodypart_dog\" onclick=\"count_check(this);\" id=\"vomit\" value=\"vomit\">\r\n");
      out.write("				<label for=\"vomit\">\r\n");
      out.write(" 					<img src=\"resources/images/ogudoctor/self_category/vomit.png\" />\r\n");
      out.write(" 				</label>\r\n");
      out.write("			</div>\r\n");
      out.write("			<div class=\"container\">\r\n");
      out.write("				<input type=\"checkbox\" name=\"bodypart_dog\" onclick=\"count_check(this);\" id=\"ear\" value=\"ear\">\r\n");
      out.write("				<label for=\"ear\">\r\n");
      out.write(" 					<img src=\"resources/images/ogudoctor/self_category/ear.png\" />\r\n");
      out.write(" 				</label>\r\n");
      out.write("			</div>\r\n");
      out.write("			<div class=\"container\">\r\n");
      out.write("				<input type=\"checkbox\" name=\"bodypart_dog\" onclick=\"count_check(this);\" id=\"face_dog\" value=\"face\">\r\n");
      out.write("				<label for=\"face_dog\">\r\n");
      out.write(" 					<img src=\"resources/images/ogudoctor/self_category/face_dog.png\" />\r\n");
      out.write(" 				</label>\r\n");
      out.write("			</div>\r\n");
      out.write("			<div class=\"container\">\r\n");
      out.write("				<input type=\"checkbox\" name=\"bodypart_dog\" onclick=\"count_check(this);\" id=\"eye\" value=\"eye\">\r\n");
      out.write("				<label for=\"eye\">\r\n");
      out.write(" 					<img src=\"resources/images/ogudoctor/self_category/eye.png\" />\r\n");
      out.write(" 				</label>\r\n");
      out.write("			</div>\r\n");
      out.write("			<div class=\"container\">\r\n");
      out.write("				<input type=\"checkbox\" name=\"bodypart_dog\" onclick=\"count_check(this);\" id=\"paw\" value=\"paw\">\r\n");
      out.write("				<label for=\"paw\">\r\n");
      out.write(" 					<img src=\"resources/images/ogudoctor/self_category/paw.png\" />\r\n");
      out.write(" 				</label>\r\n");
      out.write("			</div>\r\n");
      out.write("			<div class=\"container\">\r\n");
      out.write("				<input type=\"checkbox\" name=\"bodypart_dog\" onclick=\"count_check(this);\" id=\"joint\" value=\"joint\">\r\n");
      out.write("				<label for=\"joint\">\r\n");
      out.write(" 					<img src=\"resources/images/ogudoctor/self_category/joint.png\" />\r\n");
      out.write(" 				</label>\r\n");
      out.write("			</div>\r\n");
      out.write("			<div class=\"container\">\r\n");
      out.write("				<input type=\"checkbox\" name=\"bodypart_dog\" onclick=\"count_check(this);\" id=\"skin\" value=\"skin\">\r\n");
      out.write("				<label for=\"skin\">\r\n");
      out.write(" 					<img src=\"resources/images/ogudoctor/self_category/skin.png\" />\r\n");
      out.write(" 				</label>\r\n");
      out.write("			</div>\r\n");
      out.write("			<div class=\"container\">\r\n");
      out.write("				<input type=\"checkbox\" name=\"bodypart_dog\" onclick=\"count_check(this);\" id=\"tooth\" value=\"tooth\">\r\n");
      out.write("				<label for=\"tooth\">\r\n");
      out.write(" 					<img src=\"resources/images/ogudoctor/self_category/tooth.png\" />\r\n");
      out.write(" 				</label>\r\n");
      out.write("			</div>\r\n");
      out.write("			<div class=\"container\">\r\n");
      out.write("				<input type=\"checkbox\" name=\"bodypart_dog\" onclick=\"count_check(this);\" id=\"breath\" value=\"breath\">\r\n");
      out.write("				<label for=\"breath\">\r\n");
      out.write(" 					<img src=\"resources/images/ogudoctor/self_category/breath.png\" />\r\n");
      out.write(" 				</label>\r\n");
      out.write("			</div>\r\n");
      out.write("			<div class=\"container\">\r\n");
      out.write("				<input type=\"checkbox\" name=\"bodypart_dog\" onclick=\"count_check(this);\" id=\"genitals_dog\" value=\"genitals\">\r\n");
      out.write("				<label for=\"genitals_dog\">\r\n");
      out.write(" 					<img src=\"resources/images/ogudoctor/self_category/genitals_dog.png\" />\r\n");
      out.write(" 				</label>\r\n");
      out.write("			</div>\r\n");
      out.write("			<div class=\"container\">\r\n");
      out.write("				<input type=\"checkbox\" name=\"bodypart_dog\" onclick=\"count_check(this);\" id=\"behavior_dog\" value=\"behavior\">\r\n");
      out.write("				<label for=\"behavior_dog\">\r\n");
      out.write(" 					<img src=\"resources/images/ogudoctor/self_category/behavior_dog.png\" />\r\n");
      out.write(" 				</label>\r\n");
      out.write("			</div>\r\n");
      out.write("			<div class=\"container\">\r\n");
      out.write("				<input type=\"checkbox\" name=\"bodypart_dog\" onclick=\"count_check(this);\" id=\"abdomen_dog\" value=\"abdomen\">\r\n");
      out.write("				<label for=\"abdomen_dog\">\r\n");
      out.write(" 					<img src=\"resources/images/ogudoctor/self_category/abdomen_dog.png\" />\r\n");
      out.write(" 				</label>\r\n");
      out.write("			</div>\r\n");
      out.write("			<div class=\"container\">\r\n");
      out.write("				<input type=\"checkbox\" name=\"bodypart_dog\" onclick=\"count_check(this);\" id=\"waist_dog\" value=\"waist\">\r\n");
      out.write("				<label for=\"waist_dog\">\r\n");
      out.write(" 					<img src=\"resources/images/ogudoctor/self_category/waist_dog.png\" />\r\n");
      out.write(" 				</label>\r\n");
      out.write("			</div>\r\n");
      out.write("		</div>\r\n");
      out.write("		<div class=\"button_location\">\r\n");
      out.write("			<button class=\"button\" style=\"vertical-align: middle\" onclick=\"onNextButtonClick()\">\r\n");
      out.write("				<span>다음으로</span>\r\n");
      out.write("			</button>	\r\n");
      out.write("		</div>\r\n");
      out.write("	</div>\r\n");
      out.write("	<footer>\r\n");
      out.write("		");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "/WEB-INF/views/home/home_bottom.jsp", out, false);
      out.write("\r\n");
      out.write("	</footer>\r\n");
      out.write("	<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js\"></script>\r\n");
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
