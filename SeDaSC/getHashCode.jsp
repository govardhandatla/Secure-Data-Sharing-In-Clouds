<%@ page import="java.sql.*,databaseconnection.*, CT.*,java.util.*"%>
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
<div class="description">
<h2>File Encrypt</h1><br>
<table cellspacing="10">




<%
Connection con1 = databasecon.getconnection();

String rno=request.getParameter("rno");

String hashcode=SHA_256.hashCode(rno);


try
{
	String ss=null;
	Statement st1 = con1.createStatement();
	String sss1 = " select * from files where fid='"+request.getParameter("id")+"' ";
	System.out.println(sss1);
	ResultSet rs=st1.executeQuery(sss1);
	if(rs.next()){
	%><form method="post" action="execute2.jsp?id=<%=rs.getString(1)%>">
		
		 <tr><td><h3>File Id<td><h3><font size="3" color="#ff2020"><%=rs.getString(1)%>
		 <tr><td><h3>File Name<td><h3><font size="3" color="#ff2020"><%=rs.getString(2)%>
		 <tr><td><h3>File ( F )<td><textarea name="file" readonly rows="11" cols="100"><%=rs.getString("file_")%></textarea>
		 <tr><td><h3>Symmetric Key ( K )<td><h3><font size="3" color="#ff2020"><input type="text" name="sk" value="<%=hashcode%>"><input type="hidden" name="key" value="<%=rno%>" >
<tr><td><h3><td><h3><input type="submit" value="Encrypt SKA(F, K)">

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
