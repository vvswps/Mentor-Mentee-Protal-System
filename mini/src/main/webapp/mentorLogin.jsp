<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Student Login</title>
	<style>
		body {
			background-image: url("mentorlogin.jpg");
			background-size: cover;
			background-repeat: no-repeat;
		}
		.container {
			position: absolute;
			top: 50%;
			backdrop-filter: blur(15px);
			border: 2px solid rgba(255,255,255,0.5);
			box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2);
			left: 50%;
			right: 10%;
			transform: translate(-50%, -50%);
			max-width: 500px;
			padding: 20px;
			
			box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2);
			border-radius: 5px;
			font-family: Arial, sans-serif;
		}
		h2 {
			text-align: center;
			margin-top: 0;
		}
		form {
			display: flex;
			flex-direction: column;
		}
		label {
			font-weight: bold;
			margin-bottom: 8px;
		}
		input[type=text], input[type=password] {
			width: 100%;
			padding: 12px;
			margin: 8px 0;
			display: inline-block;
			border: none;
			border-bottom: 2px solid rgba(255,255,255,0.5);
			box-sizing: border-box;
			font-size: 16px;
			color: #444;
			background-color: #f2f2f2;
			background: transparent;
			border-radius: 0;
			transition: all 0.3s ease-in-out;
		}
		input[type=text]:focus, input[type=password]:focus {
			outline: none;
			border-bottom: 2px solid #2ecc71;
			background-color: #fff;
		}
		button[type=submit] {
			background-color: #4CAF50;
			color: white;
			padding: 12px 20px;
			border: none;
			border-radius: 50px;
			cursor: pointer;
			margin-top: 16px;
			transition: all 0.3s ease-in-out;
			align-self: flex-end;
			font-size: 16px;
		}
		button[type=submit]:hover {
			background-color: #2ecc71;
		}
		a {
			color: dodgerblue;
			font-size: 14px;
			margin-top: 8px;
			text-align: center;
			transition: all 0.3s ease-in-out;
		}
		a:hover {
			color: #2ecc71;
		}
	</style>
</head>
<body>
	<div class="container">
		<h2>Mentor Login</h2>
		<form method="post" action="mentorDashboard.jsp">
			<label for="id">Mentor ID</label>
			<input type="text" id="id" name="id" required>
			<label for="password">Password</label>
			<input type="password" id="password" name="password" required>
			<button type="submit">Login</button>
		</form>
		
<a href="forgotPassword.jsp">Forgot password?</a>
	</div>
</body>
</html>