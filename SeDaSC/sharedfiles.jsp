

<%@ page import="java.sql.*,databaseconnection.*"%>
<%
                                                       String message=request.getParameter("id");
                                                  
                                                       
                                                       if(message!=null && message.equalsIgnoreCase("fail"))
                                                       {
													  out.println("<script type=text/javascript>alert('Your Key was incorrect!! '); </script>															   ");
                                                       }
                                               %>

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






<%
if(request.getParameter("msg")!=null)
out.println("<script type=text/javascript>alert('File was Updated Successfully by CS '); </script> ");
String status=null;
Connection con1 = databasecon.getconnection();
try
{
	Statement s= con1.createStatement();
ResultSet r=s.executeQuery("select * from users where email='"+session.getAttribute("user")+"'");
r.next();
if(r.getString("ustatus").equals("Access_Denied")){

out.println("<font color='red'><h2> Sorry !! <br/>You Dont Have Permission To Access Files</h2></font></br></br></br>");
}
else{
%>

<h2>Your Files are</h1><br>
<table cellspacing="10">
<tr><td><h3>File Id<td><h3>File<td><h3>Group<td><h3>Shared by<td><h3>Action



<%

	String ss=null;
	Statement st1 = con1.createStatement();
	Statement st2 = con1.createStatement();
	
	String sss1 = " select * from permission where email='"+session.getAttribute("user")+"' ";
	System.out.println(sss1);
	ResultSet rs2=null;
	ResultSet rs=st1.executeQuery(sss1);
	while(rs.next()){
	rs2=st2.executeQuery(" select * from files where fid='"+rs.getString("fid")+"'	and status='done' ");
	if(rs2.next()){
	%>
		
		 
		 <tr><td><h3><font size="3" color="#ff2020"><%=rs2.getString(1)%><td><h3><font size="3" color="#ff2020"><%=rs2.getString(2)%><td><h3><font size="3" color="#ff2020"><%=rs2.getString(4)%><td><h3><font size="3" color="#ff2020"><%=rs2.getString(5)%>
		
		
		<%
		if(r.getString("ustatus").equals("Active")){
		%>
		
		<td><h3><font size="3" color="#ff2020"><a href="sharedfiles2.jsp?id=<%=rs2.getString(1)%>">View</a>&nbsp;&nbsp;&nbsp;&nbsp;
		<%
		if(rs.getString("update_").equals("WRITE")){
			 out.println("<a href=edit.jsp?id="+rs2.getString(1)+">Edit</a>");}
		 
		}
	else{
				 out.println("<td><h3><font size='3' color='#ff2020'>No Access</font>");}

	}

	}}}

catch(Exception e){System.out.println(e);
e.printStackTrace();}
%>




</table>
<hr>
<br><br><br><br><br>



<%@ include file="footer.jsp"%>
