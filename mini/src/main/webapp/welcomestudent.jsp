<%@ page import="java.io.*,java.util.*,javax.servlet.*,javax.servlet.http.*,javax.servlet.annotation.*" %>
<!DOCTYPE html>
<html>
<head>
	<title>Profile Picture Upload</title>
</head>
<body>
	<form action="upload.jsp" method="post" enctype="multipart/form-data">
  <input type="file" name="profilePic">
  <input type="submit" value="Upload">
</form>
	
</body>
</html>
