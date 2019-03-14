

<%@ page  import="java.sql.*" import="databaseconnection.*" import="javax.swing.JOptionPane"%>

<%
Connection con1 = databasecon.getconnection();
Statement st2 = con1.createStatement();
st2.executeUpdate("delete from updatereq where email='"+session.getAttribute("user")+"' ");
st2.executeUpdate("insert into  updatereq(email, fid, group_,  file_,status) values ( '"+session.getAttribute("user")+"', '"+request.getParameter("fid")+"' ,'"+session.getAttribute("group")+"', '"+request.getParameter("file")+"','non' ) ");

try
{
	String ss=null;
	while(ss==null){
	Statement st1 = con1.createStatement();
	String sss1 = "select * from updatereq where status!='non' and email='"+session.getAttribute("user")+"' ";
	ResultSet rs=st1.executeQuery(sss1);
	if(rs.next())
	{
		ss="finish";
	}
	System.out.println("waiting");
	Thread.sleep(7000);
	}
}
catch(Exception e){System.out.println(e);
e.printStackTrace();
}

%>

<%out.println("<script type=text/javascript>alert('Got Response from CS '); </script> ");

response.sendRedirect("sharedfiles.jsp?msg=updated");%>




