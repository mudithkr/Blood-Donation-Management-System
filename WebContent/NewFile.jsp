<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@ page import ="com.bloodbank.*" %> 
<jsp:useBean id="reg" class="com.bloodbank.Register" scope="session" />
	<jsp:useBean id="obj" class="com.bloodbank.SqlCon" scope="session" /> 
<%
out.println("<form method=get action=exam.jsp>");
out.println("Update password : ");
out.println("New Password : <input type=password name=pass />");
out.println("<input type=submit value=submit />");
out.println("</form>");

	String usr=request.getParameter("usr");
	String pass=request.getParameter("pass");
	String pwd=request.getParameter("pwd");
	if(usr!=null && pass!=null && pwd!=null)
		response.sendRedirect("exam.jsp?usr="+usr+"&pass="+pass+"&pwd="+pwd);
	
%>
</body>
</html>


