<%@ page contentType="text/html;charset=utf-8" pageEncoding="utf-8"  language="java"%><%@ include file ="header_page.jsp" %>
<% if(Lang.getLang().equals("P")) {%>

<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" style="background:url(images/menu_bg.gif) top repeat-x;">
  <tr>
    <td><table width="772" border="0" align="center" cellpadding="0" cellspacing="0" style="margin-top:5px">
      <tr>
        <td width="10">&nbsp;</td>
        <td width="70"><a href="main-p.html" target="mainFrame" onclick="MM_nbGroup('down','group1','buthome','',1)" onmouseover="MM_nbGroup('over','buthome','images/but_home_o-p.gif','',1)" onmouseout="MM_nbGroup('out')"><img src="images/but_home-p.gif" alt="Página Principal" name="buthome" width="133" height="26" vspace="3" border="0" /></a></td>
        <td width="104"><a href="contact-p.html" target="mainFrame" onclick="MM_nbGroup('down','group1','butcontact','',1)" onmouseover="MM_nbGroup('over','butcontact','images/but_contact_o-p.gif','',1)" onmouseout="MM_nbGroup('out')"><img src="images/but_contact-p.gif" alt="Contacte Connosco" name="butcontact" width="151" height="26" border="0" /></a></td>
        <td width="101"><a href="comment-p.php" target="mainFrame" onclick="MM_nbGroup('down','group1','butcomment','',1)" onmouseover="MM_nbGroup('over','butcomment','images/but_comment_o-p.gif','',1)" onmouseout="MM_nbGroup('out')"><img src="images/but_comment-p.gif" alt="Envio de Opiniões" name="butcomment" width="140" height="26" border="0" /></a></td>
        <td width="103"><a href="https://portal.dsedj.gov.mo/www/dsejspace/discuz/logging.php?action=login&amp;styleid=20" target="mainFrame" onclick="MM_nbGroup('down','group1','butforum','',1)" onmouseover="MM_nbGroup('over','butforum','images/but_forum_o-p.gif','',1)" onmouseout="MM_nbGroup('out')"><img src="images/but_forum-p.gif" alt="Área Reservada" name="butforum" width="134" height="26" border="0" /></a></td>
        
        <td>&nbsp;</td>
        <td width="80" align="center"><a href="index.html" target="_parent"><img src="images/but_chi.gif" alt="中文" width="32" height="20" border="0" /></a></td>
      </tr>
    </table></td>
  </tr>
</table>


<% } else  {%>

<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" style="background:url(images/menu_bg.gif) top repeat-x;">
  <tr>
    <td><table width="772" border="0" align="center" cellpadding="0" cellspacing="0" style="margin-top:5px">
      <tr>
        <td width="10">&nbsp;</td>
        <td width="70"><a href="main.html" target="mainFrame" onclick="MM_nbGroup('down','group1','buthome','',1)" onmouseover="MM_nbGroup('over','buthome','images/but_home_o.gif','',1)" onmouseout="MM_nbGroup('out')"><img src="images/but_home.gif" alt="首頁" name="buthome" width="69" height="26" vspace="3" border="0" /></a></td>
        <td width="104"><a href="contact.html" target="mainFrame" onclick="MM_nbGroup('down','group1','butcontact','',1)" onmouseover="MM_nbGroup('over','butcontact','images/but_contact_o.gif','',1)" onmouseout="MM_nbGroup('out')"><img src="images/but_contact.gif" alt="聯絡我們" name="butcontact" width="102" height="26" border="0" /></a></td>
        <td width="101"><a href="comment.php" target="mainFrame" onclick="MM_nbGroup('down','group1','butcomment','',1)" onmouseover="MM_nbGroup('over','butcomment','images/but_comment_o.gif','',1)" onmouseout="MM_nbGroup('out')"><img src="images/but_comment.gif" alt="公眾意見發表" name="butcomment" width="104" height="26" border="0" /></a></td>
        <td width="103"><a href="https://portal.dsedj.gov.mo/www/dsejspace/discuz/logging.php?action=login&amp;styleid=16" target="mainFrame" onclick="MM_nbGroup('down','group1','butforum','',1)" onmouseover="MM_nbGroup('over','butforum','images/but_forum_o.gif','',1)" onmouseout="MM_nbGroup('out')"><img src="images/but_forum.gif" alt="會員專區" name="butforum" width="103" height="26" border="0" /></a></td>
        
        <td>&nbsp;</td>
        <td width="90" align="center"><a href="index-p.html" target="_parent"><img src="images/but_port.gif" alt="Português" width="58" height="20" border="0" /></a></td>
      </tr>
    </table></td>
  </tr>
</table>

<% }//endif%>


