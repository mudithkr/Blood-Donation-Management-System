<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Change last donation date</title>
</head>
<body>
<%@ page import="java.sql.*"%>
	<%@ page import="javax.sql.*"%>
		<jsp:useBean id="reg" class="com.bloodbank.Register" scope="application" />
	<jsp:useBean id="obj" class="com.bloodbank.SqlCon" scope="application" />  
	<%
	String DOBDaytemp=request.getParameter("DOBDay");
	String DOBMonthtemp=request.getParameter("DOBMonth");
	String DOBYeartemp=request.getParameter("DOBYear");
	String user=request.getParameter("usr");
	String pass=request.getParameter("pwd");
	if(DOBDaytemp==null || DOBMonthtemp==null || DOBYeartemp==null){
		
		 out.println("<html>");
         out.println("<head>");
         
out.println("<title>BloodDateChange</title>");
out.println("</head>");
out.println("<body>");
	out.println("<form method=post>");
	out.println("Last Date of donating blood : ");
	out.println("<select name=DOBMonth>");
	out.println("<option> - Month - </option>");
	out.println("<option value=1>January</option>");
	out.println("<option value=2>February</option>");
	out.println("<option value=3>March</option>");
	out.println("<option value=4>April</option>");
	out.println("<option value=5>May</option>");
	out.println("<option value=6>June</option>");
	out.println("<option value=7>July</option>");
out.println("</select>");

out.println("<select name=DOBDay>");
out.println("<option> - Day - </option>");
out.println("<option value=1>1</option>");
out.println("<option value=2>2</option>");
out.println("<option value=3>3</option>");
out.println("<option value=4>4</option>");
out.println("</select>");

	out.println("<select name=DOBYear>");
	out.println("<option> - Year - </option>");
	out.println("<option value=2016>2016</option>");
	out.println("<option value=2015>2015</option>");
	
	
	out.println("</select>");
	out.println("<input type=submit />");
	out.println("</form>");
	out.println("<br/>");
	out.println("<form method=post action=passwordchange.html>");
	out.println("<input type=submit value=ChangePassword name=ChangePassword />");
	out.println("</form>");
	out.println("<body>");
	out.println("</html>");
	}
	else{
	int DOBDay=Integer.parseInt(DOBDaytemp);
	int DOBMonth=Integer.parseInt(DOBMonthtemp);
	int DOBYear=Integer.parseInt(DOBYeartemp);
		Connection con=obj.connection();
		Statement st= con.createStatement();
		int m=st.executeUpdate("update users set DOBDay='"+DOBDay+"',DOBMonth='"+DOBMonth+"',DOBYear='"+DOBYear+"'where userid='"+user+"'and pwd='"+pass+"'");
		if(m==1)
		{%>
		<script>
		confirm("Last date of blood donation changed!");
		</script>
		<%
		out.println("<a href=index.html>Logout</a>");	
		}
		else{
			out.println("Not changed!");
		}
	}
	%>
</body>
</html>