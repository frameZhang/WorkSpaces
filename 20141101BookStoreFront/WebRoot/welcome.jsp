<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>welocme</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body>
  <h1>��½�ɹ�</h1>
  <input id="search_info" placeholder="������Ϣ��ѯ"> <span><input
						type="button" value="GO">
						
						<a id="user" href="#">������</a> <span><img id="user_head"
						src="head.jpg">
  <script language="JavaScript" type="text/javascript">
function delayURL(url) {
var delay = document.getElementById("time").innerHTML;
if(delay > 0) {
delay--;
document.getElementById("time").innerHTML = delay;
} else {
window.top.location.href = url;
}
setTimeout("delayURL('" + url + "')", 1000);
}
</script>
<span id="time" style="background: #00BFFF">3</span>���Ӻ��Զ���ת���������ת���������������<a href="http://www.baidu.com">�ҵİٶ�</a>
<script type="text/javascript">
delayURL("http://www.baidu.com");
</script>
  </body>
</html>
