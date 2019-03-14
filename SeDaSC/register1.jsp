<%@ page import="java.sql.*"%>


<%@ page  import="java.sql.*" import="databaseconnection.*" import="Algorithm.*" import="javax.swing.JOptionPane"%>



<%! String name, lname, addr, city, state, zip, tele, email, un, pwd,section,member;
	int i=0;
%>
<%
try{

Connection con = databasecon.getconnection();

Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select max(id) from users");
if(rs.next())
{
	i=rs.getInt(1);
	++i;
}
}
catch(Exception e){
System.out.println("Exception Occured");}

name=request.getParameter("name");
addr=request.getParameter("addr");
tele=request.getParameter("tele");
 email=request.getParameter("email");
pwd=request.getParameter("pwd");
section=request.getParameter("group");
member=request.getParameter("member");
System.out.println(pwd);
%>
<%
try{

Connection con = databasecon.getconnection();
Statement st=con.createStatement();


String sql="insert into users values('"+i+"','"+name+"','"+addr+"','"+tele+"','"+email+"',  '"+pwd+"','"+section+"','"+member+"','Active')";
System.out.println(sql);
int q= st.executeUpdate(sql);

if(q>0)
{
	response.sendRedirect("index.jsp?id=succ");
}
else
	response.sendRedirect("signup.jsp?message=fail");

}
catch(Exception e)
{
e.printStackTrace();
	}
%>
