

<%@ page import="java.sql.*,databaseconnection.*, CT.*"%>
<%@ include file="cheader.jsp"%>
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
String file=request.getParameter("file");



Connection con1 = databasecon.getconnection();


try
{
	
	Statement st2 = con1.createStatement();
	st2.executeUpdate("update request set  status='valid', file_='"+file+"' where sno='"+sno+"' " );
		response.sendRedirect("req1.jsp?id=succ ");

}
catch(Exception e){System.out.println(e);
e.printStackTrace();
}

%>


</table>


<br><br><br><br><br>
<%@ include file="footer.jsp"%>
