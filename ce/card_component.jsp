<%--
  可重用的卡片元件：DaisyUI「Media position=Top」（Figma node 335:31753）
  用法：在頁面中先設定 request attribute，再 include 本檔。
      request.setAttribute("cardTitle", "標題");
      request.setAttribute("cardDescription", "內容描述");
      request.setAttribute("cardImage", "images/media-card-image.png");
      request.setAttribute("cardAlt", "替代文字");
      request.setAttribute("cardButton1", "按鈕一");
      request.setAttribute("cardButton2", "按鈕二");
  所有顏色／間距／圓角取自 css/daisyui-tokens.css 的變數。
--%>
<%
String cImage = (String) request.getAttribute("cardImage");
if (cImage == null) cImage = "images/media-card-image.png";

String cAlt = (String) request.getAttribute("cardAlt");
if (cAlt == null) cAlt = "";

String cTitle = (String) request.getAttribute("cardTitle");
if (cTitle == null) cTitle = "Card title";

String cDescription = (String) request.getAttribute("cardDescription");
if (cDescription == null) cDescription = "Card text content";

String cButton1 = (String) request.getAttribute("cardButton1");
if (cButton1 == null) cButton1 = "Button";

String cButton2 = (String) request.getAttribute("cardButton2");
if (cButton2 == null) cButton2 = "";
%>
<div class="dc-card">
  <div class="dc-media">
    <img class="dc-media__img" src="<%=cImage%>" alt="<%=cAlt%>">
  </div>
  <div class="dc-card__body">
    <div class="dc-card__text">
      <h3 class="dc-card__title"><%=cTitle%></h3>
      <p class="dc-card__description"><%=cDescription%></p>
    </div>
    <div class="dc-card__actions">
      <a href="#" class="dc-button"><span class="dc-button__label"><%=cButton1%></span></a>
      <% if (!cButton2.equals("")) { %>
      <a href="#" class="dc-button"><span class="dc-button__label"><%=cButton2%></span></a>
      <% } %>
    </div>
  </div>
</div>
