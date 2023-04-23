<%@ page import="java.sql.*" %>
<%
// Establish a connection to the MySQL database
Class.forName("com.mysql.jdbc.Driver");
String url = "jdbc:mysql://localhost:3306/lab_app";
String user = "root";
String password = "root";
Connection con = DriverManager.getConnection(url, user, password);

// Extract data from the form
String accommodation = request.getParameter("accommodation");
String mentorName = request.getParameter("mentorName");
String subjectCode1 = request.getParameter("subjectCode1");
String subjectCode2 = request.getParameter("subjectCode2");
String subjectCode3 = request.getParameter("subjectCode3");
String subjectCode4 = request.getParameter("subjectCode4");
String subjectCode5 = request.getParameter("subjectCode5");
String subjectCode6 = request.getParameter("subjectCode6");
String subjectCode7 = request.getParameter("subjectCode7");
String marks11 = request.getParameter("marks11");
String marks12 = request.getParameter("marks12");
String marks13 = request.getParameter("marks13");
String marks14 = request.getParameter("marks14");
String marks15 = request.getParameter("marks15");
String marks16 = request.getParameter("marks16");
String marks17 = request.getParameter("marks17");
String marks21 = request.getParameter("marks21");
String marks22 = request.getParameter("marks22");
String marks23 = request.getParameter("marks23");
String marks24 = request.getParameter("marks24");
String marks25 = request.getParameter("marks25");
String marks26 = request.getParameter("marks26");
String marks27 = request.getParameter("marks27");
String marks31 = request.getParameter("marks31");
String marks32 = request.getParameter("marks32");
String marks33 = request.getParameter("marks33");
String marks34 = request.getParameter("marks34");
String marks35 = request.getParameter("marks35");
String marks36 = request.getParameter("marks36");
String marks37 = request.getParameter("marks37");
String attendance1 = request.getParameter("attendance1");
String attendance2 = request.getParameter("attendance2");
String attendance3 = request.getParameter("attendance3");
String attendance4 = request.getParameter("attendance4");
String detained1 = request.getParameter("detained1");
String detained2 = request.getParameter("detained2");
String detained3 = request.getParameter("detained3");
String overallDetained = request.getParameter("overallDetained");
String certificationName1 = request.getParameter("certificationName1");
String certificationHours1 = request.getParameter("certificationHours1");
String certificationProgress1 = request.getParameter("certificationProgress1");
String certificationStatus1 = request.getParameter("certificationStatus1");
String certificationName2 = request.getParameter("certificationName2");
String certificationHours2 = request.getParameter("certificationHours2");
String certificationProgress2 = request.getParameter("certificationProgress2");
String certificationStatus2 = request.getParameter("certificationStatus2");
String externalMarks = request.getParameter("external_marks");
String internalMarks = request.getParameter("internal_marks");
String totalMarks = request.getParameter("total_marks");
String externalPercentage = request.getParameter("external_percentage");
String internalPercentage = request.getParameter("internal_percentage");
String totalPercentage = request.getParameter("total_percentage");
String subCode = request.getParameter("sub_code");
String marks = request.getParameter("marks");
String achievements = request.getParameter("achievements");

try {
// Insert the data into the MySQL database
PreparedStatement ps = con.prepareStatement("INSERT INTO assessment1 (accommodation, mentor_name, subject_code1, subject_code2, subject_code3, subject_code4, subject_code5, subject_code6, subject_code7, marks11, marks12, marks13, marks14, marks15, marks16, marks17, marks21, marks22, marks23, marks24, marks25, marks26, marks27, marks31, marks32, marks33, marks34, marks35, marks36, marks37, attendance1, attendance2, attendance3, attendance4, detained1, detained2, detained3, overall_detained, certificationName1, certificationHours1, certificationProgress1, certificationStatus1, certificationName2, certificationHours2, certificationProgress2, certificationStatus2, external_marks, internal_marks, total_marks, external_percentage, internal_percentage, total_percentage, sub_code, marks, achievements) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
System.out.println(ps.toString());

ps.setString(1, accommodation);
ps.setString(2, mentorName);
ps.setString(3, subjectCode1);
ps.setString(4, subjectCode2);
ps.setString(5, subjectCode3);
ps.setString(6, subjectCode4);
ps.setString(7, subjectCode5);
ps.setString(8, subjectCode6);
ps.setString(9, subjectCode7);
ps.setString(10, marks11);
ps.setString(11, marks12);
ps.setString(12, marks13);
ps.setString(13, marks14);
ps.setString(14, marks15);
ps.setString(15, marks16);
ps.setString(16, marks17);
ps.setString(17, marks21);
ps.setString(18, marks22);
ps.setString(19, marks23);
ps.setString(20, marks24);
ps.setString(21, marks25);
ps.setString(22, marks26);
ps.setString(23, marks27);
ps.setString(24, marks31);
ps.setString(25, marks32);
ps.setString(26, marks33);
ps.setString(27, marks34);
ps.setString(28, marks35);
ps.setString(29, marks36);
ps.setString(30, marks37);
ps.setString(31, attendance1);
ps.setString(32, attendance2);
ps.setString(33, attendance3);
ps.setString(34, attendance4);
ps.setString(35, detained1);
ps.setString(36, detained2);
ps.setString(37, detained3);
ps.setString(38, overallDetained);
ps.setString(39, certificationName1);
    ps.setString(40, certificationHours1);
    ps.setString(41, certificationProgress1);
    ps.setString(42, certificationStatus1);
    ps.setString(43, certificationName2);
    ps.setString(44, certificationHours2);
    ps.setString(45, certificationProgress2);
    ps.setString(46, certificationStatus2);
    ps.setString(47, externalMarks);
    ps.setString(48, internalMarks);
    ps.setString(49, totalMarks);
    ps.setString(50, externalPercentage);
    ps.setString(52, internalPercentage);
    ps.setString(53, totalPercentage);
    ps.setString(54, subCode);
    ps.setString(55, marks);
    ps.setString(56, achievements);

// Execute the SQL query
ps.executeUpdate();
out.println("<h2>Data inserted successfully!</h2>");
// Close the database connection and statement
ps.close();
con.close();
} catch(Exception e) {
	out.println(e);
}
%>
