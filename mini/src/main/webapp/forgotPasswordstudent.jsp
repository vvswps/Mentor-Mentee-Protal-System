<!DOCTYPE html>
<html>
<head>
	<title>Forgot Password</title>
</head>
<body>
	<h1>Forgot Password</h1>
	<form method="post" action="reset_passwordstudent.jsp">
		<label for="studentID">ID:</label>
		<input type="text" id="studentID" name="studentID"><br>
		
		<label for="key">Key:</label>
		<input type="text" id="key" name="key"><br>

		<label for="new_password">New Password:</label>
		<input type="password" id="new_password" name="new_password"><br>

		<label for="confirm_password">Confirm Password:</label>
		<input type="password" id="confirm_password" name="confirm_password"><br>

		<input type="submit" value="Reset Password">
	</form>
</body>
</html>
