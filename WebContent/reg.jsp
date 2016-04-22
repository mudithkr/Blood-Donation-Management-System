<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Regjsp</title>
</head>
<body>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@ page import ="com.bloodbank.*" %>
	<jsp:useBean id="reg" class="com.bloodbank.Register" scope="session" />
	<jsp:useBean id="obj" class="com.bloodbank.SqlCon" scope="session" />  
<%
String username=request.getParameter("userid");
session.putValue("userid",username);
Connection com=obj.connection(); 
Statement st= com.createStatement(); 
ResultSet rs=st.executeQuery("select distinct userid from users where userid='"+username+"'");

int count=0;
while(rs.next())
{
	count++;
}
if(count>0)
	{
            out.println("<html>");
                        out.println("<head>");
            out.println("<title>MeterDetailsPage</title>");
            out.println("</head>");
            out.println("<body>");
                        out.println("<table align='center' color='red'>");
                        out.println("<tr color='red'>");
                        out.println("<td ><font size=4 color=red >username  Already Exist</font></td>");
                        out.println("</tr>");
                        out.println("</table>");
                        out.println("<a href=Reg.html>Register again</a>");
                        out.println("</body>");
                        out.println("</html>");
                        
                       
	}

else
	{

	if(username!=null )

		{

			if(!username.equals(""))

				{

            //st.executeUpdate("insert into usernameexist(username) values('"+username+"')");
            out.println("<html>");
                        out.println("<head>");
            out.println("<title>username</title>");
            out.println("</head>");
            out.println("<body>");
                        out.println("<table align='center'>");
                        out.println("<tr>");
                        out.println("<td ><font size=4  color=green><b>available </b></font></td>");
            out.println("</table>");
                        out.println("</body>");
                        out.println("</html>");
                       reg.setUsername(request.getParameter("userid")); 
                        session.putValue("userid",reg.getUsername()); 
                        reg.setPassword(request.getParameter("pwd")); 
                        reg.setFirstName(request.getParameter("fname")); 
                        reg.setLastName(request.getParameter("lname"));
                        reg.setBloodGroup(request.getParameter("blood"));
                        reg.setmobile(request.getParameter("mobile_no"));
                        reg.setemail(request.getParameter("email"));
                        reg.setCity(request.getParameter("city"));
                        String DOBMonth=request.getParameter("DOBMonth");
                        String DOBDay=request.getParameter("DOBDay");
                        String DOBYear=request.getParameter("DOBYear");
                        reg.setDate(Integer.parseInt(request.getParameter("DOBDay")),Integer.parseInt(request.getParameter("DOBMonth")),Integer.parseInt(request.getParameter("DOBYear")));
                        int i=st.executeUpdate("insert into users values ('"+reg.getUsername()+"','"+reg.getPassword()+"','"+reg.getFirstName()+"',	'"+reg.getLastName()+"','"+reg.getBloodGroup()+"','"+reg.getmobile()+"','"+reg.getemail()+"','"+reg.getCity()+"','"+reg.getMonth()+"','"+reg.getDay()+"','"+reg.getDOBYear()+"')"); 
					
                        out.println("Registered"); 
					

				}
		}
}

%>
<a href ="Login.html">Login</a><br/><br/>
<a href="index.html">Home</a>
</body>
</html>