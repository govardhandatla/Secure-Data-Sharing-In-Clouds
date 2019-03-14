<%@ page import="java.sql.*, javax.sql.*, java.util.HashSet, java.util.ArrayList, java.util.Iterator, java.io.*"%>
<%				Blob data = (Blob)session.getAttribute("file");
				byte[] ba = data.getBytes(1, (int)data.length());
				response.setContentType("application/notepad");
			response.setHeader("Content-Disposition","attachment; filename=\""+request.getParameter("name")+"\"");
			OutputStream os = response.getOutputStream();
			os.write(ba);
						os.close();
			ba = null;
					//	session.removeAttribute("file");
%>