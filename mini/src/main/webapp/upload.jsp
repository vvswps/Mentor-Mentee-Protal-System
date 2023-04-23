<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="org.apache.commons.fileupload.disk.*" %>
<%@ page import="org.apache.commons.fileupload.servlet.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>

<%
  String studentID = (String) session.getAttribute("studentID");

  String uploadPath = "D:/Images/"; // Change this to the location where you want to save the uploaded files
  DiskFileItemFactory factory = new DiskFileItemFactory();
  ServletFileUpload upload = new ServletFileUpload(factory);
  List<FileItem> items = upload.parseRequest(request);
  String fileName = "";
  for (FileItem item : items) {
    if (!item.isFormField()) {
      fileName = new File(item.getName()).getName();
      File uploadedFile = new File(uploadPath + fileName);
      item.write(uploadedFile);
      Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/lab_app", "root", "root"); // Change these values to match your database credentials
      PreparedStatement stmt = conn.prepareStatement("UPDATE students SET profile_pic = ? WHERE student_id = ?");
      stmt.setString(1, uploadedFile.getAbsolutePath());
      stmt.setString(2, studentID);
      stmt.executeUpdate();
      stmt.close();
      conn.close();
    }
  }
%>
