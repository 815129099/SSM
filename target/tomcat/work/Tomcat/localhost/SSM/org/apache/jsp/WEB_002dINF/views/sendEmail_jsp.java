/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.47
 * Generated at: 2018-04-15 07:03:22 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class sendEmail_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write(' ');

String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

      out.write("\r\n");
      out.write("\r\n");
      out.write("  \r\n");
      out.write("           \r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("<title>发送邮件</title>\r\n");
      out.write("<script src=\"js/jquery-1.10.2.js\"></script>\r\n");
      out.write("<script src=\"js/bootstrap.min.js\"></script>\r\n");
      out.write("<script src=\"js/jqPaginator.min.js\"></script>\r\n");
      out.write("<link href=\"css/bootstrap.min.css\" rel=\"stylesheet\">\r\n");
      out.write("</head>\r\n");
      out.write("<!-- 发送邮件 -->\r\n");
      out.write("    <script type=\"text/javascript\">\r\n");
      out.write("//发送\r\n");
      out.write("function sendEm(){\r\n");
      out.write("\r\n");
      out.write("    if($(\"#TYPE\").val()==\"1\"){\r\n");
      out.write("        $(\"#CONTENT\").val(getContentTxt());\r\n");
      out.write("    }else{\r\n");
      out.write("        $(\"#CONTENT\").val(getContent());\r\n");
      out.write("    }\r\n");
      out.write("    if($(\"#EMAIL\").val()==\"\"){\r\n");
      out.write("        $(\"#EMAIL\").tips({\r\n");
      out.write("            side:3,\r\n");
      out.write("            msg:'请输入邮箱',\r\n");
      out.write("            bg:'#AE81FF',\r\n");
      out.write("            time:2\r\n");
      out.write("        });\r\n");
      out.write("        $(\"#EMAIL\").focus();\r\n");
      out.write("        return false;\r\n");
      out.write("    }\r\n");
      out.write("    if($(\"#TITLE\").val()==\"\"){\r\n");
      out.write("        $(\"#TITLE\").tips({\r\n");
      out.write("            side:3,\r\n");
      out.write("            msg:'请输入标题',\r\n");
      out.write("            bg:'#AE81FF',\r\n");
      out.write("            time:2\r\n");
      out.write("        });\r\n");
      out.write("        $(\"#TITLE\").focus();\r\n");
      out.write("        return false;\r\n");
      out.write("    }\r\n");
      out.write("    if($(\"#CONTENT\").val()==\"\"){\r\n");
      out.write("\r\n");
      out.write("        $(\"#nr\").tips({\r\n");
      out.write("            side:1,\r\n");
      out.write("            msg:'请输入内容',\r\n");
      out.write("            bg:'#AE81FF',\r\n");
      out.write("            time:3\r\n");
      out.write("        });\r\n");
      out.write("        return false;\r\n");
      out.write("    }\r\n");
      out.write("\r\n");
      out.write("    var EMAIL = $(\"#EMAIL\").val();\r\n");
      out.write("    var TYPE  = $(\"#TYPE\").val();\r\n");
      out.write("    var TITLE = $(\"#TITLE\").val();\r\n");
      out.write("    var CONTENT = $(\"#CONTENT\").val();\r\n");
      out.write("\r\n");
      out.write("    $(\"#zhongxin\").hide();\r\n");
      out.write("    $(\"#zhongxin2\").show();\r\n");
      out.write("\r\n");
      out.write("    $.ajax({\r\n");
      out.write("        type: \"POST\",\r\n");
      out.write("        url: 'retroaction/sendEmail.do?tm='+new Date().getTime(),\r\n");
      out.write("        data: {EMAIL:EMAIL,TITLE:TITLE,CONTENT:CONTENT},\r\n");
      out.write("        dataType:'json',\r\n");
      out.write("        //beforeSend: validateData,\r\n");
      out.write("        cache: false,\r\n");
      out.write("        success: function(data){\r\n");
      out.write("            if(\"ok\" == data.result){\r\n");
      out.write("                $(\"#msg\").tips({\r\n");
      out.write("                        side:3,\r\n");
      out.write("                        msg:'发送成功！',\r\n");
      out.write("                        bg:'#68B500',\r\n");
      out.write("                        time:5\r\n");
      out.write("                      });\r\n");
      out.write("                setTimeout(\"showdiv()\",1000);\r\n");
      out.write("            }else{\r\n");
      out.write("                $(\"#msg\").tips({\r\n");
      out.write("                        side:3,\r\n");
      out.write("                        msg:'发送失败!',\r\n");
      out.write("                        bg:'#68B500',\r\n");
      out.write("                        time:5\r\n");
      out.write("                      });\r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("        }\r\n");
      out.write("    });\r\n");
      out.write("\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("</script>\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write(" <div>\r\n");
      out.write("        <table style=\"width:98%;\" >\r\n");
      out.write("            <tr>\r\n");
      out.write("                <td style=\"margin-top:0px;\">\r\n");
      out.write("                     <div style=\"float: left;\" style=\"width:81%\"><textarea name=\"EMAIL\" id=\"EMAIL\" rows=\"1\" cols=\"50\" style=\"width:600px;height:20px;\" placeholder=\"请选输入对方邮箱,多个请用(;)分号隔开\" title=\"请选输入对方邮箱,多个请用(;)分号隔开\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${email}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("</textarea></div>\r\n");
      out.write("                     <div style=\"float: right;\" style=\"width:19%\"><a class='btn btn-mini btn-info' title=\"编辑邮箱\" onclick=\"dialog_open();\">编辑邮箱</i></a></div>\r\n");
      out.write("                </td>\r\n");
      out.write("            </tr>\r\n");
      out.write("            <tr>\r\n");
      out.write("                <td>\r\n");
      out.write("                     <input type=\"text\" name=\"TITLE\" id=\"TITLE\" value=\"\" placeholder=\"请选输入邮件标题\" style=\"width:98%\"/>\r\n");
      out.write("                </td>\r\n");
      out.write("            </tr>\r\n");
      out.write("            <tr>\r\n");
      out.write("                <td id=\"nr\">\r\n");
      out.write("                     <script id=\"editor\" type=\"text/plain\" style=\"width:650px;height:259px;\"></script>\r\n");
      out.write("                </td>\r\n");
      out.write("            </tr>\r\n");
      out.write("            <tr>\r\n");
      out.write("                <td style=\"text-align: center;\">\r\n");
      out.write("                    <a class=\"btn btn-mini btn-primary\" onclick=\"sendEm();\">发送</a>\r\n");
      out.write("                    <a class=\"btn btn-mini btn-danger\" onclick=\"top.Dialog.close();\">取消</a>\r\n");
      out.write("                </td>\r\n");
      out.write("            </tr>\r\n");
      out.write("        </table>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div id=\"zhongxin2\" class=\"center\" style=\"display:none\"><br/><img src=\"\" id='msg' /><br/><h4 class=\"lighter block green\" id='msg'>正在发送...</h4></div>\r\n");
      out.write("\r\n");
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
