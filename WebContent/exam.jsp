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
String pwd=request.getParameter("oldpwd");
String pass=request.getParameter("newpwd");
String usr=request.getParameter("usr");
Connection con=obj.connection();
Statement st= con.createStatement();
ResultSet rs=st.executeQuery("select * from users where userid='"+usr+"'"); 
if(rs.next()) 
{ 
	if(rs.getString(2).equals(pwd)) 
	{ 
		int m=st.executeUpdate("update users set pwd='"+pass+"'where userid='"+usr+"'");
		%>
		
		<script>
			confirm("Password successfully changed");
		</script>
		<%if(m==1){
			 out.println("<html>");
             out.println("<head>");
 out.println("<title>MeterDetailsPage</title>");
 out.println("</head>");
 out.println("<body>");
             out.println("<table align='center' color='red'>");
             out.println("<tr color='red'>");
             out.println("<td ><font size=4 color=red >Password Changed Successfully</font></td>");
             out.println("</tr>");
             out.println("</table>");
             out.println("<a href=Login.html>Login again!</a>");
             out.println("<a href=index.html>Go to home page!</a>");
             out.println("</body>");
             out.println("</html>");
		}
	}
	else
	{
		out.println("Password not matched.");
	}
}
	%>
	
</body>
</html>