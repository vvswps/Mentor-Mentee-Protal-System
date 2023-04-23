<%@ page import="java.sql.*" %>
<%
// Get the student ID from the session attribute
String studentID = (String) session.getAttribute("studentID");

// Connect to the MySQL database
String url = "jdbc:mysql://localhost:3306/lab_app";
String username = "root";
String password = "root";
Connection conn = DriverManager.getConnection(url, username, password);

// Prepare the SQL statement to select the student progress data for the current student
String sql = "SELECT name, performance_current_semester, remarks " +
             "FROM studentprogress " +
             "WHERE studentID = ? " +
             "ORDER BY performance_current_semester";
PreparedStatement stmt = conn.prepareStatement(sql);
stmt.setString(1, studentID);

// Execute the SQL statement and retrieve the result set
ResultSet rs = stmt.executeQuery();
%>

<!-- Display the progress table -->
<div class="card">
  <div class="card-header">
    Student Progress Table
  </div>
  <div class="card-body">
    <table class="table">
      <thead>
    <tr>
      <th>Semester</th>
      <th>Performance</th>
      <th>Remarks</th>
    </tr>
  </thead>
  <tbody>
    <% while (rs.next()) { %>
    <tr>
      <td><%= rs.getString("name") %></td>
      <td><%= rs.getString("performance_current_semester") %></td>
      <td><%= rs.getString("remarks") %></td>
    </tr>
    <% } %>
  </tbody>
</table>
 </div>
</div>


<%
// Close the result set, statement, and database connection
rs.close();
stmt.close();
conn.close();
%>
<style>
.card {
  border: 1px solid #ccc;
  border-radius: 4px;
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  padding: 10px;
  margin: 10px;
}

.card-header {
  background-color: #f1f1f1;
  padding: 10px;
  font-weight: bold;
}

.table {
  width: 100%;
  border-collapse: collapse;
}

.table th, .table td {
  padding: 8px;
  text-align: left;
  border-bottom: 1px solid #ddd;
}

.table tr:nth-child(even) {
  background-color: #f2f2f2;
}
</style>