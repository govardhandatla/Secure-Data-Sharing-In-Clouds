<%@ page import="java.sql.*,databaseconnection.*, CT.*" import ="java.util.Random"%>
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
String fid=request.getParameter("id");
String file=request.getParameter("file");
String sk=request.getParameter("sk");
String key=request.getParameter("key");

Connection con1 = databasecon.getconnection();
try
{
	Statement st11 = con1.createStatement();
	Statement st2 = con1.createStatement();
	PreparedStatement ps=con1.prepareStatement(" update files set file_=AES_ENCRYPT(?,'"+sk+"'), status='done' where fid=? ");
	ps.setString(1,file);
		ps.setString(2,fid);
		ps.executeUpdate();
	//String sss1 = " ";
System.out.println("-------- ");
//	st1.executeUpdate(sss1);

Random randomGenerator = new Random();
		int hmackey=randomGenerator.nextInt(100000000);

ResultSet rs2=st2.executeQuery("select file_ from files where fid='"+request.getParameter("id")+"'");
if(rs2.next()){

String encdata=new String(rs2.getBytes(1));


String HmacSig=HMAC.calculateHMAC(encdata, new Integer(hmackey).toString());

st11.executeUpdate("insert into dataintgrty values('"+fid+"','"+HmacSig+"','"+hmackey+"')");

}
	
}
catch(Exception e){System.out.println(e);
e.printStackTrace();}



try
{
	String ss=null;
	Statement st1 = con1.createStatement();
	String sss1 = " select * from files where fid='"+request.getParameter("id")+"' ";
	System.out.println(sss1);
	ResultSet rs=st1.executeQuery(sss1);
	if(rs.next()){
	%><form method="post" action="share.jsp?id=<%=rs.getString(1)%>">
		
		 <tr><td><h3>File Id<td><h3><font size="3" color="#ff2020"><%=rs.getString(1)%>
		 <tr><td><h3>File Name<td><h3><font size="3" color="#ff2020"><%=rs.getString(2)%>
		 <tr><td><h3>Encrypted Data ( C )<td><textarea name="file" readonly rows="11" cols="100"><%=rs.getString("file_")%></textarea>
		 <tr><td><input type="hidden" name="key" value="<%=key%>" >
<tr><td><h3><td><h3><input type="submit" value="Share to Users">

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
<br><br>



<%@ include file="footer.jsp"%>
