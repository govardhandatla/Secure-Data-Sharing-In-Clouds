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

<h2>Download Request  </h1><br>
 <form method="post" action="editrequest.jsp">

<table cellspacing="10">




			<tr><td><h3>File Id<td><h3><input size="30" type="text" name="fid" readonly value="<%=request.getParameter("id")%>">
		 <tr><td><h3>Group<td><h3><input type="text" name="group" readonly  size="30" value="<%=session.getAttribute("group")%>">
		 <tr><td><h3>Secure Key<td><h3><input type="text"  name="key" required  size="30" >

<tr><td><td>		 <div class="description"><input type="submit" value="Request to CS">

		 </form>
	

</table>
</div>
<hr>
<br><br><br><br><br>
<%@ include file="footer.jsp"%>
