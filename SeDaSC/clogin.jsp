
<%
String uname = request.getParameter("uid");
String password = request.getParameter("pwd");


if(uname.equals("cloud")&&password.equals("cloud")){
response.sendRedirect("cloud_home.jsp");
}
else{
response.sendRedirect("index.jsp?id=fail");
}
%>