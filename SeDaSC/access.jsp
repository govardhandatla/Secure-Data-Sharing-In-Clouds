<%@ page  import="java.sql.*" import="databaseconnection.*" %>

<%@ include file="oheader.jsp"%>
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

					<div class="description">

<font size="" color=""><h2>Permission Access </h2></font><br>
<%
try{
Connection con = databasecon.getconnection();
Statement st=con.createStatement();
String sql="select * from users where group_='"+session.getAttribute("group")+"'  and email!='"+session.getAttribute("user")+"' and ustatus='Active'";
System.out.println(sql);
ResultSet rs=st.executeQuery(sql);

%>
<form method="post" action="access2.jsp">

<strong>File Data:</strong><br>
<textarea name="" rows="5" cols="150" Readonly><%=session.getAttribute("file")%></textarea><br><br>
<strong>File id:</strong><br>
<input type="text" name="fid" readonly value="<%=request.getParameter("id")%>"><br><br>
<h3>
	<table  cellspacing="20"align="center">
<tr><td>Share Permission  <Td> Accessing Permission 
<%
while(rs.next()){

%>
<tr><td  align="" ><input required checked type="checkbox" name="<%=rs.getString("email")%>">&nbsp;<%=rs.getString("email")%><td> <select name="<%=rs.getString("email")%>up">
																								<option value="READ" selected>READ
																								<option value="WRITE">WRITE
																							</select>

																	
<%
}
}
catch(Exception e){
}
%>
<tr><td><input type="submit" value="Upload">
</table>

</form>
</div>
	<br><br><br><br><br>	
<%@ include file="footer.jsp"%>