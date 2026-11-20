// JavaScript Document
var url = document.location.href;
var len = url.length;
var http = url.substring(0,5);
if (http != "https") {
var url = "https://" + url.substring(7,len);
window.location.replace(url);
}
