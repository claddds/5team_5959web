/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.76
 * Generated at: 2023-09-07 11:06:32 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views.rep;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class rep_005fwrite_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(2);
    _jspx_dependants.put("/WEB-INF/lib/jstl-1.2.jar", Long.valueOf(1690189569877L));
    _jspx_dependants.put("jar:file:/D:/JHY/oguogu/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/oguogu/WEB-INF/lib/jstl-1.2.jar!/META-INF/c.tld", Long.valueOf(1153352682000L));
  }

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
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<title>rep_write</title>\r\n");
      out.write("<link rel=\"stylesheet\" href=\"resources/css/summernote-lite.css\">\r\n");
      out.write("<script src=\"//cdn.ckeditor.com/4.7.3/standard/ckeditor.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("\r\n");
      out.write("</script>\r\n");
      out.write("<style type=\"text/css\">\r\n");
      out.write("/* 등록 | 뒤로가기 버튼은 가운데 정렬 */\r\n");
      out.write(".button{\r\n");
      out.write("	text-align: center;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("#repWrapper{\r\n");
      out.write("        text-align: center;\r\n");
      out.write("        padding:10px;\r\n");
      out.write("        margin:auto;\r\n");
      out.write("        font-family: 'Noto Sans KR', sans-serif;\r\n");
      out.write("    }\r\n");
      out.write("#repWrapper > ul > li:first-child {\r\n");
      out.write("        text-align: center;\r\n");
      out.write("        font-size:14pt;\r\n");
      out.write("        height:40px;\r\n");
      out.write("        vertical-align:middle;\r\n");
      out.write("        line-height:30px;\r\n");
      out.write("}\r\n");
      out.write("#title {\r\n");
      out.write("    width: 600px;\r\n");
      out.write("    height: 100px;\r\n");
      out.write("    background-color: white;\r\n");
      out.write("    text-align: center;\r\n");
      out.write("    margin : auto;\r\n");
      out.write("    margin-top:60px;\r\n");
      out.write("    color: #FFA629;\r\n");
      out.write("    font-family: 'Bagel Fat One', cursive;        \r\n");
      out.write("    text-shadow: 1px 1px 2px #D1D1D1;\r\n");
      out.write("    font-size: 60pt;\r\n");
      out.write("    border: none;\r\n");
      out.write("    padding-top: 10px;\r\n");
      out.write("    justify-content: center; /* 가로 가운데 정렬 */\r\n");
      out.write("    align-items: center; /* 세로 가운데 정렬 */\r\n");
      out.write("    display: flex; /* Flexbox 사용 */\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("#sup_write table{\r\n");
      out.write("	width:1200px;\r\n");
      out.write("	margin:0 auto;\r\n");
      out.write("	margin-top:100px;\r\n");
      out.write("	border:1px solid black;\r\n");
      out.write("	border-collapse:collapse;\r\n");
      out.write("	font-size:20px;\r\n");
      out.write("}\r\n");
      out.write(".sidebar {\r\n");
      out.write("	width: 15%;\r\n");
      out.write("	background-color: white;\r\n");
      out.write("	font-size: 15pt;\r\n");
      out.write("	float: left;\r\n");
      out.write("	text-align: left;\r\n");
      out.write("	padding: 20px;\r\n");
      out.write("	box-sizing: border-box;\r\n");
      out.write("	margin-top: 160px;\r\n");
      out.write("	margin-right: 10px;\r\n");
      out.write("}\r\n");
      out.write(".sidebar-menu li {\r\n");
      out.write("  margin-bottom: 10px;\r\n");
      out.write("  list-style-type: none; \r\n");
      out.write("  text-align: left;\r\n");
      out.write("}\r\n");
      out.write(".sidebar-menu a {\r\n");
      out.write("  text-decoration: none;\r\n");
      out.write("  color: #333;\r\n");
      out.write("}	\r\n");
      out.write(".not_content{\r\n");
      out.write("	width: 100%;\r\n");
      out.write("	float:right;\r\n");
      out.write("	margin-left: -215px;          \r\n");
      out.write("    padding-left: 215px;          \r\n");
      out.write("    box-sizing: border-box;\r\n");
      out.write("    \r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("<link rel=\"preconnect\" href=\"https://fonts.googleapis.com\">\r\n");
      out.write("<link rel=\"preconnect\" href=\"https://fonts.gstatic.com\" crossorigin>\r\n");
      out.write("<link href=\"https://fonts.googleapis.com/css2?family=Bagel+Fat+One&display=swap\" rel=\"stylesheet\">\r\n");
      out.write("<link href=\"https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap\" rel=\"stylesheet\">\r\n");
      out.write("<script type=\"text/javascript\"\r\n");
      out.write("	src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ pageContext.servletContext.contextPath }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/js/jquery-3.6.3.min.js\"></script>\r\n");
      out.write("\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("	function list_go(f) {\r\n");
      out.write("		f.action=\"/rep_list.do\";\r\n");
      out.write("		f.submit();\r\n");
      out.write("	}\r\n");
      out.write("	function save_go(f) {\r\n");
      out.write("		\r\n");
      out.write("	}\r\n");
      out.write("</script>\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("		<!-- 헤더 구역 -->\r\n");
      out.write("		<header>\r\n");
      out.write("			");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../home/home_top.jsp", out, false);
      out.write("\r\n");
      out.write("		</header>\r\n");
      out.write("		\r\n");
      out.write("	<div id=\"repWrapper\" style=\"width: 1920px;\">\r\n");
      out.write("	\r\n");
      out.write("	<!-- 사이드바 구역 -->      \r\n");
      out.write(" <div class=\"sidebar\">\r\n");
      out.write("      <ul class=\"sidebar-menu\">\r\n");
      out.write("      <li class=\"notice\"><a href=\"/sup_list.do\">공지사항</a></li>\r\n");
      out.write("      <hr>\r\n");
      out.write("      <li class=\"faq\"><a href=\"/faq_list.do\">문의사항</a></li>\r\n");
      out.write("      <hr>\r\n");
      out.write("      <li class=\"report\" style=\"font-weight: bold;\"><a href=\"/rep_list.do\">신고</a></li>\r\n");
      out.write("     </ul>\r\n");
      out.write("  </div>      \r\n");
      out.write("  \r\n");
      out.write("	<!-- 게시판 글쓰기 구역 -->\r\n");
      out.write("	<div>\r\n");
      out.write("		<p id=\"title\">신고하기</p>\r\n");
      out.write("	</div>\r\n");
      out.write("	\r\n");
      out.write("	<div id=\"sup_write\">\r\n");
      out.write("		<form action=\"qinsert.do\" method=\"post\"\r\n");
      out.write("			enctype=\"multipart/form-data\" name=\"boardform\">\r\n");
      out.write("			<table width=\"1200px;\"  border=\"1px solid\" cellpadding=\"0\"\r\n");
      out.write("				cellspacing=\"0\">\r\n");
      out.write("				<tr height=\"50\">\r\n");
      out.write("					<th>신고 제목</th>\r\n");
      out.write("					<td style=\"padding: 8px; text-align: left;\"><input name=\"rep_title\" type=\"text\" style=\"width: 90%; height: 30px;\" /></td>\r\n");
      out.write("				</tr>\r\n");
      out.write("				<tr height=\"50\">\r\n");
      out.write("					<th>신고자 이름</th>\r\n");
      out.write("					<td style=\"padding: 8px; text-align: left;\"><input name=\"user_id\" style=\"width: 90%; height: 30px;\"\r\n");
      out.write("						value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ sessionScope.loginMember.user_id }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("\" readonly /></td>\r\n");
      out.write("				</tr>\r\n");
      out.write("				<tr>\r\n");
      out.write("					<th>내용</th>\r\n");
      out.write("					<td style=\"padding: 8px; text-align: left;\"><textarea id=\"rep_content\" name=\"rep_write\"\r\n");
      out.write("							style=\"width: 90%; height: 200px;\"></textarea>\r\n");
      out.write("					</td>\r\n");
      out.write("				</tr>\r\n");
      out.write("				<tr height=\"50\">\r\n");
      out.write("					<th>첨부파일</th>\r\n");
      out.write("					<td style=\"padding: 8px; text-align: left;\"><input name=\"rep_fname\" type=\"file\" style=\"font-size: 20px;\"/></td>\r\n");
      out.write("				</tr>\r\n");
      out.write("				<tr height=\"50\">\r\n");
      out.write("					<th>비밀번호</th>\r\n");
      out.write("					<td><input type=\"password\" name=\"pwd\" size=\"20\" style=\"width: 90%; height: 30px;\"/></td>\r\n");
      out.write("				</tr>\r\n");
      out.write("				<tr height=\"50\">\r\n");
      out.write("					<td class=\"button\" colspan=\"2\" align=\"center\">\r\n");
      out.write("						<input type=\"button\" value=\"저장\" style=\"font-size: 20px;\" onclick=\"save_go(this.form)\">\r\n");
      out.write("				\r\n");
      out.write("						<input type=\"button\" value=\"목록\" style=\"font-size: 20px;\"\r\n");
      out.write("						onclick=\"list_go(this.form)\">\r\n");
      out.write("					</td>						\r\n");
      out.write("				</tr>\r\n");
      out.write("			</table>\r\n");
      out.write("		</form>\r\n");
      out.write("	</div>\r\n");
      out.write("	<br>\r\n");
      out.write("	</div>\r\n");
      out.write("	<script src=\"https://code.jquery.com/jquery-3.6.0.min.js\" crossorigin=\"anonymous\"></script>\r\n");
      out.write("    	<script src=\"resources/js/summernote-lite.js\"></script>\r\n");
      out.write("    	<script src=\"resources/js/lang/summernote-ko-KR.js\"></script>\r\n");
      out.write("    	<script type=\"text/javascript\">\r\n");
      out.write("    	$(function(){\r\n");
      out.write("    		$('#not_content').summernote({\r\n");
      out.write("    			lang : 'ko-KR',\r\n");
      out.write("    			height : 300,\r\n");
      out.write("    			focus : true,\r\n");
      out.write("    			callbacks : {\r\n");
      out.write("    				onImageUpload :  function(files, editor){\r\n");
      out.write("    					for (var i = 0; i < files.length; i++) {\r\n");
      out.write("							sendImage(files[i], editor);\r\n");
      out.write("						}\r\n");
      out.write("    				}\r\n");
      out.write("    			}\r\n");
      out.write("			});\r\n");
      out.write("    	});\r\n");
      out.write("    	function sendImage(file, editor) {\r\n");
      out.write("			var frm = new FormData();\r\n");
      out.write("			frm.append(\"s_file\",file);\r\n");
      out.write("			$.ajax({\r\n");
      out.write("				url : \"/saveImage.do\",\r\n");
      out.write("				data : frm,\r\n");
      out.write("				type : \"post\",\r\n");
      out.write("				contentType : false,\r\n");
      out.write("				processData : false,\r\n");
      out.write("				dataType : \"json\",\r\n");
      out.write("			}).done(function(data) {\r\n");
      out.write("				var path = data.path;\r\n");
      out.write("				var fname = data.fname;\r\n");
      out.write("				$(\"#content\").summernote(\"editor.insertImage\",path+\"/\"+fname);\r\n");
      out.write("			});\r\n");
      out.write("		}\r\n");
      out.write("    </script>\r\n");
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
