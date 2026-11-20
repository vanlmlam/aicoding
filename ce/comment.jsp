<%@ page contentType="text/html;charset=utf-8" pageEncoding="utf-8"  language="java"%><%@ include file ="header_page.jsp" %>
<%
 String username = WebLib.getParameter(request,"username","");
%>
<!-- InstanceBeginEditable name="icon" --><!-- InstanceEndEditable -->
<table width="772" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="31" valign="bottom" background="images/bg_mid_top.gif"><!-- InstanceBeginEditable name="topic" -->
      <table width="94%" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td width="450">
  <% if (username == null || username.equals("")) { %>
    <img src="images/topic_comment_public.gif" alt="" />
<% } else { %>
    <img src="images/topic_comment_ricj.gif" alt="" />
<% } %>
          </td>
          <td>&nbsp;</td>
        </tr>
      </table>
    <!-- InstanceEndEditable --></td>
  </tr>
  <tr>
    <td bgcolor="#f9ffd1" class="content"><!-- InstanceBeginEditable name="main" -->
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">

        <tr>
          <td height="230" valign="top"><iframe name="iframetopic" id="iframetopic" frameborder="0" width="100%" height="500" marginheight="0" marginwidth="0" scrolling="no" src="https://portal.dsedj.gov.mo/mailsys/ricj/mailsys_main_page.jsp?langsel=C&username=<%=username%>" allowtransparency="true" ></iframe></td>
        </tr>

      </table>
      <!-- InstanceEndEditable --></td>
  </tr>
  <tr>
    <td><img src="images/bg_mid_bot.gif" width="772" height="31" /></td>
  </tr>
</table>

