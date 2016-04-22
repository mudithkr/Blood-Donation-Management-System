<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Searchjsp</title>
</head>
<body>
<%@ page import="java.sql.*"%>
	<%@ page import="javax.sql.*"%>
	<%@ page import="javax.lang.*"%>
	<%@ page import="com.bloodbank.*"%>
	<jsp:useBean id="search" class="com.bloodbank.Search" scope="application" />
	<jsp:useBean id="reg" class="com.bloodbank.Register" scope="application" />
	<jsp:useBean id="obj" class="com.bloodbank.SqlCon" scope="application" /> 
	<%
	reg.setCity(request.getParameter("city"));
	reg.setBloodGroup(request.getParameter("blood"));
	session.putValue("city",reg.getCity());
	java.sql.Connection con=obj.connection();
	Statement st= con.createStatement(); 
	ResultSet rs=st.executeQuery("select * from users where city='"+reg.getCity()+"'and blood='"+reg.getBloodGroup()+"'");
	
		%>    <TABLE BORDER="1">
            <TR>
               <TH>First Name</TH>
               <TH>Last Name</TH>
               <TH>EmailState</TH>
               <TH>Mobile No</TH>
           </TR>
           <TR>
           	<% 
           		while(rs.next()){
           			reg.setDate(rs.getInt("DOBDay"),rs.getInt("DOBMonth"),rs.getInt("DOBYear"));
           			boolean status=false;
           			status=search.BloodDonateEligible(reg);
           			if(status){%>
               <TD> <%= rs.getString("fname") %> </TD>
               <TD> <%= rs.getString("lname") %> </TD>
               <TD> <%= rs.getString("email") %> </TD>
                <TD> <%= rs.getString("mobile_no") %> </TD>
           </TR>
      <%     
           			}
	}
	%>
       </TABLE>
       <BR>
		
<a href="index.html">Register yourself too</a>
</body>
</html>