<%@ page contentType="text/html;charset=utf-8" pageEncoding="utf-8"  language="java"%><%@ include file ="header_page.jsp" %>
<!doctype html>
<% if ("P".equals(Lang.getLang())) { %>
<html lang="pt">
<% } else if ("E".equals(Lang.getLang())) { %>
<html lang="en">
<% } else  {%>
<html lang="zh">
<% }//endif%>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=780">
<meta property="og:url" content="index.jsp" />
<meta property="og:type" content="website" />
<meta property="og:title" content="<%=sitename%>｜<%=Lang.get("DSEDJ_s")%>" />
<meta property="og:description" content="" />
<meta property="og:image" content="images/share.png" />
<title><%=sitename%>｜<%=Lang.get("DSEDJ_s")%></title>
<jsp:include page="gtag.jsp" />
<%@ include file="javascript_page.jsp" %>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.14.0/css/all.css">
<link rel="stylesheet" href="css/style.css?v=12">
<link rel="stylesheet" href="css/style-c.css?v=11">
<link rel="stylesheet" href="css/daisyui-tokens.css?v=1">
<link rel="stylesheet" href="css/media-card.css?v=1">
</head>
<body>
<jsp:include page="topmenu.jsp" />
<div id="wrap">
<table width="772" border="0" align="center" cellpadding="0" cellspacing="0" class="top">
  <tr >
    <td height="139" valign="top" background="images/bg_top.jpg?v=11">&nbsp;</td>
  </tr>
</table>

<table width="772" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="35" id="nav">
<jsp:include page="mainmenu.jsp" />
    </td>
  </tr>
  <tr>
    <td class="content">
<jsp:include page="<%=con%>" />
    </td>
  </tr>
  <tr>
    <td><img src="images/bg_mid_bot.gif" width="772" height="31" /></td>
  </tr>
</table>
</div>

<!-- BEGIN GO TO TOP --> 
<a href="#." class="back-to-top" id="back-to-top"><i class="fa fa-angle-up"></i></a> 
<!-- END GO TO TOP --> 
<!-- Bootstrap4 JS -->
<%@ include file="../inc/bs_js_page.jsp" %>
<%@ include file ="Inter_javascript_page.jsp" %>
</body>
</html>
<%@ include file ="footer_page.jsp" %>
</body>
</html>
