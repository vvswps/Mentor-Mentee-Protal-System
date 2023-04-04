<%@ page import="java.sql.*, java.util.Random" %>
<%
String studentID = request.getParameter("studentID");
String name = request.getParameter("name");
String password = request.getParameter("password");
String email = request.getParameter("email");
String phoneno = request.getParameter("phoneno");
if (studentID != null) {
try {
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/lab_app", "root", "root");
Statement st = con.createStatement();
Random random = new Random();
String key = "";
for (int i = 0; i < 6; i++) {
key += (char) (random.nextInt(26) + 'A');
}
st.executeUpdate("insert into students values('" + studentID + "','" + name + "', '" + password + "', '" + email + "', '" + phoneno + "', '" + key + "')");
con.close();
%>
<h2>Registration Successful!</h2>
<p>Your registration key is: <%= key %></p>
<p>IMPORTANT!: Note/Save this KEY in case you forgot your Password. This will help to recover your account.</p>
<a href="studentLogin.jsp">Go to Login Page</a>
<%
    } catch (Exception e) {
      out.println(e);
    }
  }
%>

