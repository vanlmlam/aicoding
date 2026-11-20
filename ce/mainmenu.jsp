<%@ page contentType="text/html;charset=utf-8" pageEncoding="utf-8"  language="java"%><%@ include file ="header_page.jsp" %>
<% if(Lang.getLang().equals("P")) {%>

<table border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td width="20">&nbsp;</td>
        <td width="100" align="center" nowrap="nowrap"><a href="intro-p.html" class="item">Apresentação <br />
          do Conselho</a></td>
        <td nowrap="nowrap">｜</td>
        <td width="100" align="center" nowrap="nowrap"><a href="grp-p.html?v=12" class="item">Comissão <br />
          Especializada</a></td>
        <td nowrap="nowrap">｜</td>
        <td width="130" align="center" nowrap="nowrap"><a href="edup-p.html?v=11" class="item">Pessoas Colectivas do<br /> 
          Sector Educativo</a></td>
        <td nowrap="nowrap">｜</td>
        <td width="100" align="center" nowrap="nowrap"><a href="data-p.html" class="item">Consulta de<br /> 
          Informações</a></td>
        <td nowrap="nowrap">｜</td>
        <td width="90" align="center" nowrap="nowrap"><a href="link-p.html" class="item">Ligações Úteis</a></td>
      </tr>
    </table>


<% } else  {%>

<table border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td width="20">&nbsp;</td>
        <td nowrap="nowrap"><a href="intro.html" class="item">委員會簡介</a></td>
        <td nowrap="nowrap">｜</td>
        <td nowrap="nowrap"><a href="grp.html?v=11" class="item">專責小組</a></td>
        <td nowrap="nowrap">｜</td>
        <td nowrap="nowrap"><a href="edup.html?v=11" class="item">教育界別法人</a></td>
        <td nowrap="nowrap">｜</td>
        <td nowrap="nowrap"><a href="data.html" class="item">參考資訊</a></td>
        <td nowrap="nowrap">｜</td>
        <td nowrap="nowrap"><a href="link.html" class="item">常用連結</a></td>
      </tr>
    </table>

<% }//endif%>


