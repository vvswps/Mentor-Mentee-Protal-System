<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Registration Form</title>
	<style>
		body {
			
			
			font-family: Arial, sans-serif;
			background-image: url("studentregisterbackground.jpg");
			background-size: cover;
			
			
		}
		.container1 {
			position: absolute;
			top:17%;
			left: 41.5%;
			max-width: 300px;
			padding: 20px;
			background-color: #ffffff;
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
			/* margin-bottom:5px; */
		}
		input[type=text], input[type=password] {
			width: 100%;
			padding: 12px;
			margin: 8px 0;
			display: inline-block;
			border: none;
			/* border-bottom: 2px solid #4CAF50; */
			box-sizing: border-box;
			font-size: 16px;
			color: #444;
			background-color: #f2f2f2;
			border-radius: 0;
			transition: all 0.3s ease-in-out;
		}
		input[type=text]:focus, input[type=password]:focus {
			outline: none;
			border-bottom: 2px solid #007bff;
			/* background-color: #0f0e0e; */
		}
		button[type=submit] {
		
			background-color: #007bff;
			color: rgb(255, 255, 255);
			padding: 10px 60px;
			border: none;
			border-radius: 50px;
			cursor: pointer;
			margin-top: 16px;
			transition: all 0.3s ease-in-out;
			align-self: center;
			font-size: 16px;
			font-weight: bold;
		}
		button[type=submit]:hover {
			background-color: #0069d9;
		}
		a {
			color: dodgerblue;
			font-size: 14px;
			margin-top: 8px;
			text-align: center;
			transition: all 0.3s ease-in-out;
		}
		a:hover {
			color: #0069d9;
		}
	</style>
</head>
<body>
	<div class="container1">
		<h2>Mentee Registration</h2>
		<form method="post" action="studentRegister.jsp">
			<label for="studentID">ERP ID</label>
			<input type="text" placeholder="Enter Your ERP ID" id="studentID" name="studentID" required>
			<label for="name">Name</label>
			<input type="text" placeholder="Enter Your Name" id="name" name="name" required>
			<label for="password">Password</label>
			<input type="password" placeholder="Enter Your Password" id="password" name="password" required>
			<label for="email">Email-id</label>
			<input type="text" placeholder="Enter Your Email ID" id="email" name="email" required>
			<label for="phoneno">Phone Number</label>
			<input type="text" placeholder="Enter Your Phone No." id="phoneno" name="phoneno" required>
			<button type="submit">Register</button>
		</form>
		
	</div>
</body>
</html>