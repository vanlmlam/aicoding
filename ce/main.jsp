<%@ page contentType="text/html;charset=utf-8" pageEncoding="utf-8"  language="java"%><%@ include file ="header_page.jsp" %>
<% if(Lang.getLang().equals("P")) {%>

<!-- InstanceBeginEditable name="main" -->
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="65%" valign="top">
        <div class="round_8" style="background-color:#fff">
        <div style="background-color:#039;color:#fff; font-weight:700;font-size:1.2rem; padding:5px 10px;margin:5px 8px 10px 8px">Notícias</div>
<iframe frameborder="0" width="100%" height="300" marginheight="0" marginwidth="0" scrolling=no src="//portal.dsedj.gov.mo/webdsejspace/addon/msglistnews2/MsgListNews2_ce_view_page.jsp?langsel=p" allowtransparency="true"></iframe>
              </div>  
          </td>
          <td width="3%" valign="top">&nbsp;</td>
          <td valign="top">
          
<div class="round_8" style="background-color:#fff"><div class="hotlink-mid">
                    <div class="title">Destaques</div>
                    <table width="100%" border="0" cellspacing="0" cellpadding="3">
                      <tr>
                        <td valign="top"><img src="images/1.gif" alt="ico" width="16" height="16" /></td>
                        <td valign="top"><a href="https://www.dsedj.gov.mo/pdac/2020/index-p.php" target="_blank">Programa de Desenvolvimento e Aperfeiçoamento Contínuo</a></td>
                      </tr>
                      <tr>
                        <td width="16" valign="top"><img src="images/1.gif" alt="ico" width="16" height="16" /></td>
                        <td valign="top"><a href="https://portal.dsedj.gov.mo/webdsejspace/internet/Inter_main_page.jsp?id=21332&langsel=P" target="_blank">	Suspensão de aulas em situações de tempestade tropical, chuva intensa e condições meteorológicas adversas</a></td>
                      </tr>
                    </table>
                </div></div>
          
            </td>
        </tr>
      </table>
    <!-- InstanceEndEditable -->


<% } else  {%>

<!-- InstanceBeginEditable name="main" -->
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="65%" valign="top">
        <div class="round_8" style="background-color:#fff">
        <div style="background-color:#039;color:#fff; font-weight:700;font-size:1.2rem; padding:5px 10px;margin:5px 8px 10px 8px">最新消息</div>
<iframe frameborder="0" width="100%" height="300" marginheight="0" marginwidth="0" scrolling=no src="//portal.dsedj.gov.mo/webdsejspace/addon/msglistnews2/MsgListNews2_ce_view_page.jsp?langsel=c" allowtransparency="true"></iframe>
              </div>  
          </td>
          <td width="3%" valign="top">&nbsp;</td>
          <td valign="top">
          
          <div class="round_8" style="background-color:#fff"><div class="hotlink-mid">
                    <div class="title">熱門資訊</div>
                    <table width="100%" border="0" cellspacing="0" cellpadding="3">
                      <tr>
                        <td width="16" valign="top"><img src="images/1.gif" alt="ico" width="16" height="16" /></td>
                        <td valign="top"><a href="https://www.dsedj.gov.mo/pdac/2020/index.php" target="_blank">持續進修發展計劃</a></td>
                      </tr>
                      <tr>
                        <td valign="top"><img src="images/1.gif" alt="ico" width="16" height="16" /></td>
                        <td valign="top"><a href="https://portal.dsedj.gov.mo/webdsejspace/internet/Inter_main_page.jsp?id=21332&langsel=C" target="_blank"> 熱帶氣旋、暴雨及特殊天氣情況指引</a></td>
                      </tr>
                    </table>
                </div></div>
          
            </td>
        </tr>
      </table>
    <!-- InstanceEndEditable -->



<% }//endif%>

