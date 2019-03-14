<%@ page  import="java.sql.*" import="CT.*" %>

<%
    String message=request.getParameter("id");
    if(message!=null && message.equalsIgnoreCase("succ")){
    out.println("<script type=text/javascript>alert('File Data Sent to CS Successfully!!')</script>");
	}
 %>

<%@ include file="oheader.jsp"%>

<center><br>
<font size="" color=""><h2>Data Upload: </h2></font>



<form  action="upload2.jsp" ENCTYPE="multipart/form-data" method="post" >   

<div class="modal-body modal-body-sub_agile">
						
							<div class="styled-input agile-styled-input-top">
							<b>(.txt, .java, .css, .html)</b><br>
<br>
	<input type="file" name="file" required >
	<br>
	<input class="submit" type="submit" value="Upload">
</form>
</div>
<br><br><br><br><br>	
<%@ include file="footer.jsp"%>