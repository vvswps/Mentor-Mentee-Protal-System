<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <% 
    // Logout the user
    session.invalidate();
  response.sendRedirect("mentorLogin.jsp");
  %>
  
</body>
</html>