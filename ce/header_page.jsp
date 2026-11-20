<%@ page contentType="text/html;charset=utf-8" pageEncoding="utf-8" language="java"%><%@ include file ="../inc/header_page.jsp" %>
<%
String siteid = "718350";
String sitevar = "ce";
String sitename = Lang.get("青年事務委員會資訊網"); 
String sitedescription = "";
String shareimg = "share.png";
String assetsPath = "/assets/"+sitevar;
String mirrorPath = "https://mirror1.dsedj.gov.mo";

String server = "portal"; //推出時改成portal
String nolangp = "";
String nolange = "";
String threelang = "";
String septhreelang = "";
String htmlPage = "";

String con = WebLib.getParameter(request,"con","");
//String con=request.getParameter("con");
String conori= "";
String suffix = "";
String fileType = ".jsp";
if (con != null && !con.isEmpty() && htmlPage.contains("," + con + ",")){
  fileType = ".html";
}

/*
  if( SERVERROOT.equals("portal.dsedj.gov.mo") || !MsgListBean.checkMsgRelease(siteid)) {  
      out.print(WebLib.getMsgBox(sitename+"<br>"+Lang.get("建設中")+"!"));
      out.flush();
	  return;
  }
 */

  if ("P".equals(Lang.getLang()) || "E".equals(Lang.getLang())) {
      suffix = "-" + Lang.getLang().toLowerCase();
  } 

  if(con==null || con.isEmpty() || con.indexOf("http")!=-1) { 
  	conori="main";
	  con="main.jsp";
  } else if ( (nolangp.indexOf(con)!=-1 && "P".equals(Lang.getLang())) || (nolange.indexOf(con)!=-1 && "E".equals(Lang.getLang()))){ 
	  conori=con;
	  con="nodata.jsp";
  } else if (septhreelang.indexOf(con)!=-1) {
    conori=con;
    con=con+suffix+fileType;
  // } else if (con.length() > 5) {
  //   conori=con;
  //   con=con+suffix+".jsp";
	//   if (con.substring(0,5).equals("award")) {
	//     //con="award/"+con.substring(5,9)+suffix+".html";
	//     con="award/"+con.substring(5,9)+".html";
	//   }
  } else {
    conori=con;
    con=con+fileType;
  }
%>
