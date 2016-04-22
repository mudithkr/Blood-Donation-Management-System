<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Logging in</title>
</head>
<body>
<%@ page import="java.sql.*"%>
	<%@ page import="javax.sql.*"%>
	<jsp:useBean id="obj" class="com.bloodbank.SqlCon" scope="application" />
	<%
		String user=request.getParameter("usr");
		String password=request.getParameter("pwd");
		String showalldatabase=request.get
		if(user==null || password==null){
		out.println("<html>");
        out.println("<head>");
		out.println("<title>Admin Panel</title>");
		out.println("</head>");
		out.println("<body>");
	out.println("<form method=post>");
	out.println
		Connection con=obj.connection();
		Statement st= con.createStatement();
		ResultSet rs=st.executeQuery("select * from users where city='"+reg.getCity()+"'and blood='"+reg.getBloodGroup()+"'");
	
	
	%>
</body>
</html>