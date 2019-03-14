<%@ page  import="java.sql.*" import="databaseconnection.*" %>
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


<%
                                                       String message=request.getParameter("id");
                                                       if(message!=null && message.equalsIgnoreCase("succ"))
                                                       {
                out.println("<script type=text/javascript>alert('Update Completed'); </script>															   ");
                                                       }
                                                       if(message!=null && message.equalsIgnoreCase("fail"))
                                                       {
                out.println("<script type=text/javascript>alert('Key was incorrect!! '); </script>															   ");
                                                       }
                                               %>

<h1>Requests are..</font></h1>
<br>
<font size="3" color="#ff0099"><b>
  <%
int c=0;
  try{


Connection con=databasecon.getconnection();
	Statement st1 = con.createStatement();
	
	String sss1 = "select * from updatereq where status='non' ";

	ResultSet rs=st1.executeQuery(sss1);
	%>

	<table cellspacing=20>
	<tr><td>File Id<td>User<td>Group<td>Action</tr>
	<%
	while(rs.next())	
	 {%>
	 <tr><td><font size="3" color="#800000"><%=rs.getString(3)%><td><font size="3" color="#800000"><%=rs.getString(2)%><td><font size="3" color="#800000"><%=rs.getString(4)%><td><a href="editreq2.jsp?sno=<%=rs.getString(1)%>&&fid=<%=rs.getString(3)%>&&email=<%=rs.getString("email")%>"> <font size="3" color="#800000">Execute</a>
	 <%
	}
  }
  catch(Exception e){
  
  }
  %>

</table>
</font>
  <br>  <br>  <br>  <br>  <br>  <br>  <br>  <br>  <br>  <br>  <br>  <br>  <br>
<%@ include file="footer.jsp"%>