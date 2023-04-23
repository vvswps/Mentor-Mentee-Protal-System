<%@ page import="java.sql.*" %>
<html>
<head>
<style>
table {
    font-family: Arial, Helvetica, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

table td, table th {
    border: 1px solid #ddd;
    padding: 8px;
}

table tr:nth-child(even){background-color: #f2f2f2;}

table tr:hover {background-color: #ddd;}

table th {
    padding-top: 12px;
    padding-bottom: 12px;
    text-align: left;
    background-color: #007bff;
    color: white;
}
</style>
</head>
<body>

<%
String studentID = (String) session.getAttribute("studentID");

try {
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/lab_app", "root", "root");
    Statement st = con.createStatement();
    
    // Retrieving data from the tables "personal_details" and "academic_qualifications"
    String getDetailsQuery = "SELECT * FROM personal_details WHERE studentID = '" + studentID + "'";
    ResultSet rs = st.executeQuery(getDetailsQuery);
    
    out.println("<div>");
    out.println("<h1>Personal Details</h1>");
    while(rs.next()) {
        out.println("<table>");
        out.println("<tr><th>Name:</th><td>" + rs.getString("name") + "</td></tr>");
        out.println("<tr><th>Father Name:</th><td>" + rs.getString("father_name") + "</td></tr>");
        out.println("<tr><th>University Roll No:</th><td>" + rs.getString("university_roll_no") + "</td></tr>");
        out.println("<tr><th>Correspondence Address:</th><td>" + rs.getString("correspondence_address") + "</td></tr>");
        out.println("<tr><th>Permanent Address:</th><td>" + rs.getString("permanent_address") + "</td></tr>");
        out.println("<tr><th>Mobile No (Student):</th><td>" + rs.getString("mobile_no_student") + "</td></tr>");
        out.println("<tr><th>Mobile No (Parent):</th><td>" + rs.getString("mobile_no_parent") + "</td></tr>");
        out.println("<tr><th>Email (Student):</th><td>" + rs.getString("email_student") + "</td></tr>");
        out.println("<tr><th>Email (Parent):</th><td>" + rs.getString("email_parent") + "</td></tr>");
        out.println("<tr><th>Occupation:</th><td>" + rs.getString("occupation") + "</td></tr>");
        out.println("<tr><th>Extra-curricular Activities:</th><td>" + rs.getString("extra_curricular_activities") + "</td></tr>");
        out.println("<tr><th>Category:</th><td>" + rs.getString("category") + "</td></tr>");
        out.println("<tr><th>Local Guardian:</th><td>" + rs.getString("local_guardian") + "</td></tr>");
        out.println("<tr><th>Local Guardian Address:</th><td>" + rs.getString("local_guardian_address") + "</td></tr>");
        out.println("<tr><th>Local Guardian Contact No:</th><td>" + rs.getString("local_guardian_contact_no") + "</td></tr>");
        out.println("<tr><th>Previous Achievement:</th><td>" + rs.getString("previous_achievement") + "</td></tr>");
        out.println("</table>");
    }
    out.println("</div>");

        //academic details
        String getAcademicQualificationsQuery = "SELECT * FROM academic_qualifications WHERE personal_details_id IN (SELECT id FROM personal_details WHERE studentID = '" + studentID + "')";
        ResultSet academicRS = st.executeQuery(getAcademicQualificationsQuery);
        out.println("<br>");
        out.println("<h1>Academic Qualifications</h1>");
        out.println("<table>");
        out.println("<tr><th>Class</th><th>Board/University</th><th>Percentage(Aggr)</th><th>Percentage (PCM/PCB/Science)</th><th>Division</th></tr>");
        while(academicRS.next()) {
        out.println("<tr>");
        out.println("<td>" + academicRS.getString("class") + "</td>");
        out.println("<td>" + academicRS.getString("board_university") + "</td>");
        out.println("<td>" + academicRS.getString("percentage_aggr") + "</td>");
        out.println("<td>" + academicRS.getString("percentage_pcm") + "</td>");
        out.println("<td>" + academicRS.getString("division") + "</td>");
        out.println("</tr>");
        }
        out.println("</table>");
        out.println("</div>");
        con.close();
        } catch(Exception e) {
        out.println(e);
        }
        %>
