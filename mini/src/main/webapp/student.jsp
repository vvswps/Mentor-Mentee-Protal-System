<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="javax.sql.*"%>
<%@page import="javax.naming.*"%>

<!DOCTYPE html>
<html>
<head>
	<title>Student Dashboard</title>
	<style type="text/css">
		/* Define CSS styles for the dashboard layout */
		.container {
			display: grid;
			grid-template-columns: 1fr 1fr;
			grid-gap: 10px;
		}
		.section {
			border: 1px solid #ddd;
			padding: 10px;
		}
		.profile-img {
			max-width: 150px;
			max-height: 150px;
			border-radius: 50%;
			object-fit: cover;
			margin-bottom: 10px;
		}
		.change-pass {
			margin-top: 10px;
		}
	</style>
</head>
<body>
	<div class="container">
		<div class="section">
			<!-- Personal Details section -->
			<h2>Personal Details</h2>
			<%
				// Retrieve the student's name and profile picture from the session
				String studentName = (String)session.getAttribute("studentName");
				String profilePicture = (String)session.getAttribute("profilePicture");
			%>
			<img src="<%=profilePicture%>" alt="Profile Picture" class="profile-img">
			<p>Welcome, <%=studentName%>!</p>
			<p>Email: john.doe@example.com</p>
			<p>Phone: +1-555-555-5555</p>
		</div>
		<div class="section">
			<!-- Academic Details section -->
			<h2>Academic Details</h2>
			<p>Course: Computer Science</p>
			<p>Batch: 2021-2025</p>
			<p>Roll Number: CS001</p>
			<p>Current Semester: 2</p>
			<p>CGPA: 8.5</p>
		</div>
		<div class="section">
			<!-- Mentor Details section -->
			<h2>Mentor Details</h2>
			<p>Name: Jane Smith</p>
			<p>Email: jane.smith@example.com</p>
			<p>Phone: +1-555-555-5555</p>
		</div>
		<div class="section">
			<!-- Progress section -->
			<h2>Progress</h2>
			<p>Attendance: 90%</p>
			<p>Assignments: 95%</p>
			<p>Quizzes: 85%</p>
			<p>Mid-term Exam: 70%</p>
			<p>Final Exam: 75%</p>
		</div>
		<div class="section">
			<!-- Change Password section -->
			<h2>Change Password</h2>
			<form action="changePassword.jsp" method="post">
				<label for="currentPassword">Current Password:</label>
				<input type="password" id="currentPassword" name="currentPassword" required><br>
				<label for="newPassword">New Password:</label>
				<input type="password" id="newPassword" name="newPassword" required><br>
				<label for="confirmPassword">Confirm Password:</label>
				<input type="password" id="confirmPassword" name="confirmPassword" required><br>
				<input type="submit" value="Change Password">
			</form>
			<p class="change-pass">Note: Password must contain at least 8 characters, including uppercase and lowercase letters, numbers, and special characters.</p>
		</div>
	</div>
</body>
</html>
			