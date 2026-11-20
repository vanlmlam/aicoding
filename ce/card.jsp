<%@ page contentType="text/html;charset=utf-8" pageEncoding="utf-8"  language="java"%><%@ include file ="header_page.jsp" %>
<%
String cardPageTitle;
String cardPageIntro;
String cardTitle;
String cardDescription;
String cardButton1;
String cardButton2;

if (Lang.getLang().equals("P")) {
  cardPageTitle   = "Cartão com imagem no topo";
  cardPageIntro   = "Componente do sistema de design DaisyUI, construído com Bootstrap 4 e variáveis do Figma.";
  cardTitle       = "Título do cartão";
  cardDescription = "Texto descritivo do cartão, apresentado na cor neutra do tema.";
  cardButton1     = "Saber mais";
  cardButton2     = "Contactos";
} else {
  cardPageTitle   = "媒體置頂卡片";
  cardPageIntro   = "DaisyUI 設計系統元件，以 Bootstrap 4 排版，樣式全部取自 Figma 變數。";
  cardTitle       = "卡片標題";
  cardDescription = "卡片內容描述文字，以主題中性色呈現。";
  cardButton1     = "了解更多";
  cardButton2     = "聯絡我們";
}

request.setAttribute("cardTitle", cardTitle);
request.setAttribute("cardDescription", cardDescription);
request.setAttribute("cardButton1", cardButton1);
request.setAttribute("cardButton2", cardButton2);
%>

<!-- InstanceBeginEditable name="main" -->
<div class="container">
  <div class="row">
    <div class="col-12">
      <h2 class="dc-card__title mb-3"><%=cardPageTitle%></h2>
      <p class="dc-card__description mb-4"><%=cardPageIntro%></p>
    </div>
  </div>
  <div class="row justify-content-center">
    <div class="col-12 col-md-6">
      <%@ include file="card_component.jsp" %>
    </div>
  </div>
</div>
<!-- InstanceEndEditable -->
