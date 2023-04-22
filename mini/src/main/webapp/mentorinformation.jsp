<%@ page import="java.sql.*" %>
<html>
<head>
<title>Mentor Details</title>
</head>
<body>
<%
try{
   Class.forName("com.mysql.jdbc.Driver");
   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/lab_app","root","root");
   String studentID = (String) session.getAttribute("studentID");
   PreparedStatement pstmt=con.prepareStatement("select * from mentors where mentorID=(select mentorID from students where studentID=?)");
   pstmt.setString(1,studentID);
   ResultSet rs=pstmt.executeQuery();
   if(rs.next()){
      out.println("Mentor Name: "+rs.getString("mentorname")+"<br>");
      out.println("Department: "+rs.getString("department")+"<br>");
      out.println("Email: "+rs.getString("email")+"<br>");
      out.println("Phone Number: "+rs.getString("phoneno")+"<br>");
   }else{
      out.println("No Mentor Assigned for this Student");
   }
}catch(Exception e){
   out.println(e);
}
%>
</body>
</html>
