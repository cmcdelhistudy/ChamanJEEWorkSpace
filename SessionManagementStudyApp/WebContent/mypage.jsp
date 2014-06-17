<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="yellow">

	<center>

		<%
			HttpSession ses = request.getSession(false);

			if (ses.getAttribute("USER_NAME") == null) {
				//invalid valid user
				out.println("You are not within the session.Please Login ");
			} else {
				//valid user
				
				String loadedUname=(String)ses.getAttribute("USER_NAME");
				
		%>

		<h1>User My Page</h1>



<h3>Welcome <%=loadedUname%></h3>

<br>
		<a href="settings.jsp">User Settings</a><br> <a href="shop.jsp">Shop
			Now</a>

		<a href="LogoutServlet"> Logout </a>

		<%
			}
		%>

	</center>
</body>
</html>