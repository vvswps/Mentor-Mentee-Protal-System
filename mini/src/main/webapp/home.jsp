<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>MENTOR MENTEE PORTAL SYSTEM</title>
	<style>
		body {
			background-color: #f2f2f2;
		}
		.container {
			position: absolute;
			top: 50%;
			left: 50%;
			transform: translate(-50%, -50%);
			max-width: 800px;
			padding: 20px;
			background-color: #fff;
			box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2);
			border-radius: 5px;
			font-family: Arial, sans-serif;
			text-align: center;
		}
		h1 {
			font-size: 36px;
			margin-top: 0;
		}
		p {
			font-size: 18px;
			margin-top: 20px;
		}
		a {
			display: inline-block;
			margin: 10px;
			padding: 10px 20px;
			background-color: #4CAF50;
			color: white;
			text-decoration: none;
			border-radius: 5px;
			font-size: 18px;
			transition: all 0.3s ease-in-out;
		}
		a:hover {
			background-color: #2ecc71;
		}
		#links {
			position: absolute;
			top: 10px;
			right: 10px;
		}
	</style>
</head>
<body>
	<div class="container">
		<h1>MENTOR MENTEE PORTAL SYSTEM</h1>
		<p>A Web application that enhances Mentorship system in the college campus</p>
		<a href="studentLogin.jsp">Student Login</a>
		<a href="mentorLogin.jsp">Mentor Login</a>
		<div id="links">
			<a href="technicalSupport.jsp">Technical Support</a>
			<a href="faqs.jsp">FAQs</a>
		</div>
	</div>
</body>
</html>