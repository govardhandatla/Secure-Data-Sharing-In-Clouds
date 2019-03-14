

<%@ page import="java.sql.*,databaseconnection.*"%>
<%
                                                       String message=request.getParameter("id");
                                                  
                                                       
                                                       if(message!=null && message.equals("fail"))
                                                       {
													  out.println("<script type=text/javascript>alert('Failed To Revoke!! '); </script>");
                                                       }
													     if(message!=null && message.equalsIgnoreCase("succ"))
                                                       {
													  out.println("<script type=text/javascript>alert('Successfully Revoked!! '); </script>");
                                                       }
                                               %>

<%@ include file="oheader.jsp"%>
<%

String group=(String)session.getAttribute("group");
String name=(String)session.getAttribute("name");
%>

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

<h2><%=group%> Users</h1><br>
<table cellspacing="10">
<tr><td><h3>User Id<td><h3>Name<td><h3>Email<td><h3>Status<td><h3>Revoke




<%

Connection con1 = databasecon.getconnection();
try
{
	String ss=null;
	Statement st = con1.createStatement();
	Statement st2 = con1.createStatement();
	ResultSet rs=st.executeQuery(" select * from users where group_='"+group+"'	and ustatus='Active' ");
	while(rs.next()){
	if(!name.equals(rs.getString("name"))){
	%>
		
		 
		 <tr><td><h3><font size="3" color="#ff2020"><%=rs.getString(1)%><td><h3><font size="3" color="#ff2020"><%=rs.getString(2)%><td><h3><font size="3" color="#ff2020"><%=rs.getString(5)%><td><h3><font size="3" color="#ff2020"><%=rs.getString(9)%>
		<td><h3><font size="3" color="#ff2020"><a href="Owner_UserRevokeAction.jsp?id=<%=rs.getString(1)%>">Revoke</a>&nbsp;&nbsp;&nbsp;&nbsp;

	<%
	}}
}
catch(Exception e){System.out.println(e);
e.printStackTrace();}
%>




</table>
<hr>
<br><br><br><br><br>



<%@ include file="footer.jsp"%>
