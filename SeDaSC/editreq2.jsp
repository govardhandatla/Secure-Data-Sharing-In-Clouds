
<%@ page import="java.sql.*,databaseconnection.*, CT.*"%>
<%@ include file="csheader.jsp"%>
		  <head>
<style>
table, th, td {
  border: 1px solid black;
}
th, td {
    padding: 15px;
    text-align: left;
}
</style>
</head>
<h1>Update Request</h1>
<table>
<%
String sno=request.getParameter("sno");
String email=request.getParameter("email");
String fid=request.getParameter("fid");



Connection con1 = databasecon.getconnection();


try
{
	
	Statement st1 = con1.createStatement();
	Statement st2 = con1.createStatement();
	String sss1 = " select * from updatereq where fid='"+fid+"' ";
	System.out.println(sss1);
	ResultSet rs=st1.executeQuery(sss1);
	if(rs.next()){
	%>
		<form method="post" action="editreq3.jsp?sno=<%=rs.getString(1)%>">
			
		 <tr><td><h3>File Id<td><h3><font size="3" color="#ff2020"><input type="text" value="<%=rs.getString("fid")%>" name="fid" readonly>
		 <tr><td><h3>User<td><h3><font size="3" color="#ff2020"><%=rs.getString(2)%>
		 <tr><td><h3>Group<td><h3><font size="3" color="#ff2020"><%=rs.getString("group_")%>
		 <tr><td><h3>File<td><textarea name="file" readonly rows="11" cols="100"><%=rs.getString("file_")%></textarea><input type="hidden" name="email" value="<%=rs.getString(2)%>">
	 <tr><td><td><h3><input type="submit" value="Encrypt & Upload Cloud">
	</form>
	<%
	}

}
catch(Exception e){System.out.println(e);
e.printStackTrace();
}

%>


</table>


<br><br><br><br><br>
<%@ include file="footer.jsp"%>