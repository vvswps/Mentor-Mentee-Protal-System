<%@ page import="java.sql.*" %>
<%
// Get the parameters from the form
String studentID = request.getParameter("studentID");
String new_password = request.getParameter("new_password");
String confirm_password = request.getParameter("confirm_password");

// Check if the form was submitted
if (studentID != null && new_password != null && confirm_password != null) {
	// Connect to the database
	Connection conn = null;
	PreparedStatement stmt = null;
	ResultSet rs = null;
	try {
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mysql://localhost/lab_app", "root", "root");
		
		// Check if the username exists in the database
		stmt = conn.prepareStatement("SELECT * FROM students WHERE studentID = ?");
		stmt.setString(1, studentID);
		rs = stmt.executeQuery();
		
		if (rs.next()) {
			// Check if the new password and confirm password match
			if (new_password.equals(confirm_password)) {
				// Update the password in the database
				stmt = conn.prepareStatement("UPDATE students SET password = ? WHERE studentID = ?");
				stmt.setString(1, new_password);
				stmt.setString(2, studentID);
				stmt.executeUpdate();
				
				// Display a success message
				out.println("Password updated successfully.");
			} else {
				// Display an error message if the new password and confirm password don't match
				out.println("New password and confirm password don't match.");
			}
		} else {
			// Display an error message if the username doesn't exist in the database
			out.println("Username doesn't exist.");
		}
	} catch (Exception e) {
		// Display an error message if there's an error connecting to the database
		out.println("Error: " + e.getMessage());
	} finally {
		try {
			if (rs != null) rs.close();
			if (stmt != null) stmt.close();
			if (conn != null) conn.close();
		} catch (SQLException e) {
			// Display an error message if there's an error closing the database connection
			out.println("Error: " + e.getMessage());
		}
	}
}
%>
<html>
<body>
<a href="studentLogin.jsp">Back To Login Page</a></body></html>
