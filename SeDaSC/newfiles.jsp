<%@ page import="java.sql.*,databaseconnection.*"%>
<%@ include file="csheader.jsp"%>
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

<h2>New Files</h1><br>
<table cellspacing="10">
<tr><td><h3>File Id<td><h3>File<td><h3>User Group<td><h3>Email<td><h3>Action
<%


    String message=request.getParameter("msg");
    if(message!=null){
    out.println("<script type=text/javascript>alert('Encrypted File Upload into Cloud Successfully..!')</script>");

	out.println("<script type=text/javascript>alert('Decryption Keys are Sent to Users..!')</script>");
	}
%>



<%
Connection con1 = databasecon.getconnection();
try
{
	String ss=null;
	Statement st1 = con1.createStatement();
	String sss1 = " select * from files where status='new' ";
	System.out.println(sss1);
	ResultSet rs=st1.executeQuery(sss1);
	while(rs.next()){
	%>
		 <tr><td><h3><font size="3" color="#ff2020"><%=rs.getString(1)%><td><h3><font size="3" color="#ff2020"><%=rs.getString(2)%><td><h3><font size="3" color="#ff2020"><%=rs.getString(4)%><td><h3><font size="3" color="#ff2020"><%=rs.getString(5)%><td><h3><a href="execute.jsp?id=<%=rs.getString(1)%>"><font size="3" color="#ff2020">Execute</a>

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
