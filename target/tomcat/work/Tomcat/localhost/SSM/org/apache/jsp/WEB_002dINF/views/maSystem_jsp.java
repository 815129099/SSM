/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.47
 * Generated at: 2018-04-25 14:02:16 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class maSystem_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

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


String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

      out.write("\r\n");
      out.write("\r\n");
      out.write("  \r\n");
      out.write("           \r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("<head>\r\n");
      out.write("\t<meta charset=\"UTF-8\">\r\n");
      out.write("\t<title>后台系统管理</title>\r\n");
      out.write("\t<meta name=\"renderer\" content=\"webkit|ie-comp|ie-stand\">\r\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge,chrome=1\">\r\n");
      out.write("    <meta http-equiv=\"Cache-Control\" content=\"no-siteapp\" />\r\n");
      out.write("    <link rel=\"shortcut icon\" href=\"/favicon.ico\" type=\"image/x-icon\" />\r\n");
      out.write("\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"style/css/font.css\">\r\n");
      out.write("\t<link rel=\"stylesheet\" href=\"style/css/xadmin.css\">\r\n");
      out.write("\t<link rel=\"stylesheet\" href=\"style/css/datatables.min.css\">\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("    <!-- 顶部开始 -->\r\n");
      out.write("    <div class=\"container\">\r\n");
      out.write("        <div class=\"logo\"><a href=\"maSystem\">后台管理系统</a></div>\r\n");
      out.write("        <div class=\"left_open\">\r\n");
      out.write("            <i title=\"展开左侧栏\" class=\"iconfont\">&#xe699;</i>\r\n");
      out.write("        </div>\r\n");
      out.write("        <ul class=\"layui-nav right\" lay-filter=\"\">\r\n");
      out.write("          <li class=\"layui-nav-item\">\r\n");
      out.write("            <a href=\"javascript:;\">admin</a>\r\n");
      out.write("            <dl class=\"layui-nav-child\"> <!-- 二级菜单 -->\r\n");
      out.write("              <dd><a href=\"outLogin\">切换帐号</a></dd>\r\n");
      out.write("              <dd><a href=\"outLogin\">退出</a></dd>\r\n");
      out.write("            </dl>\r\n");
      out.write("          </li>\r\n");
      out.write("          <li class=\"layui-nav-item to-index\"><a href=\"index\">前台首页</a></li>\r\n");
      out.write("        </ul>\r\n");
      out.write("        \r\n");
      out.write("    </div>\r\n");
      out.write("    <!-- 顶部结束 -->\r\n");
      out.write("    <!-- 中部开始 -->\r\n");
      out.write("     <!-- 左侧菜单开始 -->\r\n");
      out.write("    <div class=\"left-nav\">\r\n");
      out.write("      <div id=\"side-nav\">\r\n");
      out.write("        <ul id=\"nav\">\r\n");
      out.write("            <li>\r\n");
      out.write("                <a href=\"javascript:;\">\r\n");
      out.write("                    <i class=\"iconfont\">&#xe6b8;</i>\r\n");
      out.write("                    <cite>用户管理</cite>\r\n");
      out.write("                    <i class=\"iconfont nav_right\">&#xe697;</i>\r\n");
      out.write("                </a>\r\n");
      out.write("                <ul class=\"sub-menu\">\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <a _href=\"meList\">\r\n");
      out.write("                            <i class=\"iconfont\">&#xe6a7;</i>\r\n");
      out.write("                            <cite>用户列表</cite>\r\n");
      out.write("                            \r\n");
      out.write("                        </a>\r\n");
      out.write("                    </li >\r\n");
      out.write("\r\n");
      out.write("                </ul>\r\n");
      out.write("            </li>\r\n");
      out.write("\r\n");
      out.write("            <li>\r\n");
      out.write("                <a href=\"javascript:;\">\r\n");
      out.write("                    <i class=\"iconfont\">&#xe726;</i>\r\n");
      out.write("                    <cite>申述管理</cite>\r\n");
      out.write("                    <i class=\"iconfont nav_right\">&#xe697;</i>\r\n");
      out.write("                </a>\r\n");
      out.write("                <ul class=\"sub-menu\">\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <a _href=\"allegeList\">\r\n");
      out.write("                            <i class=\"iconfont\">&#xe6a7;</i>\r\n");
      out.write("                            <cite>申述列表</cite>\r\n");
      out.write("                        </a>\r\n");
      out.write("                    </li >\r\n");
      out.write("                </ul>\r\n");
      out.write("            </li>\r\n");
      out.write("        </ul>\r\n");
      out.write("      </div>\r\n");
      out.write("    </div>\r\n");
      out.write("    <!-- <div class=\"x-slide_left\"></div> -->\r\n");
      out.write("    <!-- 左侧菜单结束 -->\r\n");
      out.write("    <!-- 右侧主体开始 -->\r\n");
      out.write("    <div class=\"page-content\">\r\n");
      out.write("        <div class=\"layui-tab tab\" lay-filter=\"xbs_tab\" lay-allowclose=\"false\">\r\n");
      out.write("          <ul class=\"layui-tab-title\">\r\n");
      out.write("            <li>我的桌面</li>\r\n");
      out.write("          </ul>\r\n");
      out.write("          <div class=\"layui-tab-content\">\r\n");
      out.write("            <div class=\"layui-tab-item layui-show\">\r\n");
      out.write("                <iframe src='meList' frameborder=\"0\" scrolling=\"yes\" class=\"x-iframe\"></iframe>\r\n");
      out.write("            </div>\r\n");
      out.write("          </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("    <div class=\"page-content-bg\"></div>\r\n");
      out.write("    <!-- 右侧主体结束 -->\r\n");
      out.write("    <!-- 中部结束 -->\r\n");
      out.write("    <!-- 底部开始 -->\r\n");
      out.write("    <div class=\"footer\">\r\n");
      out.write("        <div class=\"copyright\">Copyright ©2017 All Rights Reserved</div>  \r\n");
      out.write("    </div>\r\n");
      out.write("    <!-- 底部结束 -->\r\n");
      out.write("     <script type=\"text/javascript\" src=\"style/js/jquery.1.10.1.min.js\"></script>\r\n");
      out.write("        <script type=\"text/javascript\"  src=\"style/lib/layui/layui.js\" ></script>\r\n");
      out.write("        <script type=\"text/javascript\" src=\"style/js/xadmin.js\"></script>\r\n");
      out.write("\r\n");
      out.write("        <script src=\"style/js/service.ddlist.jquery.min.js\"></script>\r\n");
      out.write("        <script src=\"style/js/validate/jquery.validate.min.js\"></script>\r\n");
      out.write("        <script src=\"style/js/validate/additional-methods.js\"></script>\r\n");
      out.write("         <script type=\"text/javascript\" src=\"style/js/jquery.dataTables.min.js\"></script>\r\n");
      out.write("        <script type=\"text/javascript\" src=\"style/js/common1.js\"></script>\r\n");
      out.write("        <script src=\"style/js/jqPaginator/jqPaginator.min.js\"></script>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
