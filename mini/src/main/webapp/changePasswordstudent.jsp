<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Update Password</title>
</head>
<body>
	<h1>Update Password</h1>
	<form method="post" action="updatePasswordProcessstudent.jsp">
		<label for="id">Student ID:</label>
		<input type="text" id="id" name="id"><br><br>
		<label for="oldPassword">Old Password:</label>
		<input type="password" id="oldPassword" name="oldPassword"><br><br>
		<label for="newPassword">New Password:</label>
		<input type="password" id="newPassword" name="newPassword"><br><br>
		<input type="submit" value="Update Password">
	</form>
</body>
</html>
