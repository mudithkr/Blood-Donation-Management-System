<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>loginjsp</title>
</head>
<body>
	<%@ page import="java.sql.*"%>
	<%@ page import="javax.sql.*"%>
		<jsp:useBean id="reg" class="com.bloodbank.Register" scope="application" />
	<jsp:useBean id="obj" class="com.bloodbank.SqlCon" scope="application" />  
	<%
	int j=0;
	reg.setUsername(request.getParameter("usr")); 
	session.putValue("usr",reg.getUsername()); 
	reg.setPassword(request.getParameter("pwd")); 
	Connection con=obj.connection();  
	Statement st= con.createStatement(); 
	ResultSet rs=st.executeQuery("select * from users where userid='"+reg.getUsername()+"'"); 
	if(rs.next()) 
	{ 
		if(rs.getString(2).equals(reg.getPassword())) 
		{ 
			String usr=reg.getUsername();
			String pwd=reg.getPassword();
			response.sendRedirect("doblastdonation.jsp?usr="+usr+"&pwd="+pwd);
			
		} 
		else 
		{ 
			%>
			<script>
				alert("Wrong password!Login again.");
			</script>

		<%
		} 
	
	}	 	
%>
<a href="index.html">Home</a>
</body>
</html>