<%@ page import="java.io.*,java.util.*,javax.servlet.*,javax.servlet.http.*,javax.servlet.annotation.*" %>
<!DOCTYPE html>
<html>
<head>
	<title>Profile Picture Upload</title>
</head>
<body>
	<div id="main-content"><div style="background-color: white; border-radius: 10px; padding: 20px; margin: 20px auto; max-width: 600px; text-align: center;">
		<img src="user.png" alt="User Image" style="display: block; margin: 0 auto; max-width: 200px; border-radius: 50%;">
		<h1>Welcome, <%= session.getAttribute("name") %>!</h1>
		<p>Your Phone Number is <%= session.getAttribute("phoneno") %></p>
		<p>Your Official Email is <%= session.getAttribute("email") %></p>
		<p>Your student ID is <%= session.getAttribute("studentID") %></p>
		
	</div></div>
	
</body>
</html>
