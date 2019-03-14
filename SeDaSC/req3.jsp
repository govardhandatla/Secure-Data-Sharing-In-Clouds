

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
<h1>File Get From Cloud</h1>
<table>
<%
String sno=request.getParameter("sno");
String email=request.getParameter("email");
String fid=request.getParameter("fid");
String sk=request.getParameter("key");



Connection con1 = databasecon.getconnection();


try
{
	
	Statement st1 = con1.createStatement();
	Statement st2 = con1.createStatement();
	String sss1 = " select * from files where fid='"+fid+"' ";
	System.out.println(sss1);
	ResultSet rs=st1.executeQuery(sss1);
	if(rs.next()){
	%>
		<form method="post" action="req4.jsp?sno=<%=sno%>&&email=<%=email%>">
			
		 <tr><td><h3>File Id<td><h3><font size="3" color="#ff2020"><input type="text" value="<%=rs.getString(1)%>" name="fid" readonly>
		 <tr><td><h3>File Name<td><h3><font size="3" color="#ff2020"><%=rs.getString(2)%>
		 <tr><td><h3>File<td><textarea name="file" readonly rows="11" cols="100"><%=rs.getString("file_")%></textarea>
		<tr><td><h3>Sk<td><h3><input type="text" value="<%=sk%>" name="key" readonly>
		 <tr><td><td><h3><input type="submit" value="Decrypt">
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
