<%@ page import="java.sql.*,databaseconnection.*"%>
<%@ include file="uheader.jsp"%>
		  <head>
<style>
table, th, td {
}
th, td {
    padding: 15px;
    text-align: left;
}
</style>
</head>

<h2>Your Files are</h1><br>
<table cellspacing="10">
<tr><td><h3>File Id<td><h3>File<td><h3>User Group<td><h3>Action




<%
Connection con1 = databasecon.getconnection();
try
{
	String ss=null;
	Statement st1 = con1.createStatement();
	String sss1 = " select * from files where user='"+session.getAttribute("user")+"' and status='done' ";
	System.out.println(sss1);
	ResultSet rs=st1.executeQuery(sss1);
	while(rs.next()){
	%>
		 <tr><td><h3><font size="3" color="#ff2020"><%=rs.getString(1)%><td><h3><font size="3" color="#ff2020"><%=rs.getString(2)%><td><h3><font size="3" color="#ff2020"><%=rs.getString(4)%>
<td><h3><font size="3" color="#ff2020"><a href="viewownfiles2.jsp?id=<%=rs.getString(1)%>">View</a>

	<%
	}
}
catch(Exception e){System.out.println(e);
e.printStackTrace();}
%>




</table>
<hr>
<br><br><br><br><br>



<%@ include file="footer.jsp"%>
