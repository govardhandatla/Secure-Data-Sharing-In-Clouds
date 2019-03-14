

<%@ page import="java.sql.*,databaseconnection.*"%>

<%@ include file="oheader.jsp"%>



<%
String id=request.getParameter("id");
Connection con1 = databasecon.getconnection();
try
{
	
	Statement st = con1.createStatement();
	Statement st2 = con1.createStatement();

	int i=st.executeUpdate("delete from acl where uemail='"+id+"'");
	int i2=st.executeUpdate("delete from permission where email='"+id+"'");
	if(i>0&&i2>0){
		int ii=st2.executeUpdate("update users set ustatus='Access_Denied' where email='"+id+"'");

	response.sendRedirect("CS_RevokedUsers.jsp?id=succ");
	}
	else
		response.sendRedirect("CS_RevokedUsers.jsp?id=fail");
	
	}
catch(Exception e){System.out.println(e);
e.printStackTrace();}
%>




<%@ include file="footer.jsp"%>
