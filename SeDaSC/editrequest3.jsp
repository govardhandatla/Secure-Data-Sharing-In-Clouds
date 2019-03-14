<%@ page import="java.sql.*,databaseconnection.*, CT.*"%>
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
<div class="description">
<h2>View File </h1><br>
<table cellspacing="10">




<%
Connection con1 = databasecon.getconnection();
try
{
	String ss=null;
	Statement st1 = con1.createStatement();
	String sss1 = " select * from request where email='"+session.getAttribute("user")+"' ";
	System.out.println(sss1);
	ResultSet rs=st1.executeQuery(sss1);
	if(rs.next()){
	Blob data=null;
		data=rs.getBlob("file_");
		session.setAttribute("file", data);

	%>
		<form method="post" action="update.jsp?fid=<%=rs.getString("fid")%>">
			
		 <tr><td><h3>File Id<td><h3><font size="3" color="#ff2020"><%=rs.getString("fid")%>
		 <tr><td><h3>Group<td><h3><font size="3" color="#ff2020"><%=rs.getString("group_")%>
		 <tr><td><h3>File<td><textarea name="file"  rows="11" cols="100"><%=rs.getString("file_")%></textarea>
		 <tr><td><td><h3><input type="submit" value="Update">
<input type="hidden" name="id" value="<%=request.getParameter("fid")%>">
	</form>
	<%
	}
}
catch(Exception e){System.out.println(e);
e.printStackTrace();}
%>

</table>
</div>
<hr>
<br><br><br><br><br>
<%@ include file="footer.jsp"%>
