<%@ page import="java.sql.*" %>
<%
String studentID = (String) session.getAttribute("studentID");
String name = request.getParameter("name");
String fatherName = request.getParameter("fatherName");
String universityRollNo = request.getParameter("universityRollNo");
String correspondenceAddress = request.getParameter("correspondenceAddress");
String permanentAddress = request.getParameter("permanentAddress");
String mobileNoStudent = request.getParameter("mobileNoStudent");
String mobileNoParent = request.getParameter("mobileNoParent");
String emailStudent = request.getParameter("emailStudent");
String emailParent = request.getParameter("emailParent");
String occupation = request.getParameter("occupation");
String extraCurricularActivities = request.getParameter("extraCurricularActivities");
String category = request.getParameter("category");
String localGuardian = request.getParameter("localGuardian");
String localGuardianAddress = request.getParameter("localGuardianAddress");
String localGuardianContactNo = request.getParameter("localGuardianContactNo");
String previousAchievement = request.getParameter("previousAchievement");
String board10 = request.getParameter("board10");
String percentageAggr10 = request.getParameter("percentageAggr10");
String percentagePCM10 = request.getParameter("percentagePCM10");
String division10 = request.getParameter("division10");
String board12 = request.getParameter("board12");
String percentageAggr12 = request.getParameter("percentageAggr12");
String percentagePCM12 = request.getParameter("percentagePCM12");
String division12 = request.getParameter("division12");
String boardGraduation = request.getParameter("boardGraduation");
String percentageAggrGraduation = request.getParameter("percentageAggrGraduation");
String percentagePCMGraduation = request.getParameter("percentagePCMGraduation");
String divisionGraduation = request.getParameter("divisionGraduation");

try {
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/lab_app", "root", "root");
    
    // Updating data in the table "personal_details"
    String updatePersonalDetailsQuery = "UPDATE personal_details SET name = ?, father_name = ?, university_roll_no = ?, correspondence_address = ?, permanent_address = ?, mobile_no_student = ?, mobile_no_parent = ?, email_student = ?, email_parent = ?, occupation = ?, extra_curricular_activities = ?, category = ?, local_guardian = ?, local_guardian_address = ?, local_guardian_contact_no = ?, previous_achievement = ? WHERE studentID = ?";
    PreparedStatement psUpdatePersonalDetails = con.prepareStatement(updatePersonalDetailsQuery);
    psUpdatePersonalDetails.setString(1, name);
    psUpdatePersonalDetails.setString(2, fatherName);
    psUpdatePersonalDetails.setString(3, universityRollNo);
    psUpdatePersonalDetails.setString(4, correspondenceAddress);
    psUpdatePersonalDetails.setString(5, permanentAddress);
    psUpdatePersonalDetails.setString(6, mobileNoStudent);
    psUpdatePersonalDetails.setString(7, mobileNoParent);
    psUpdatePersonalDetails.setString(8, emailStudent);
    psUpdatePersonalDetails.setString(9, emailParent);
    psUpdatePersonalDetails.setString(10, occupation);
    psUpdatePersonalDetails.setString(11, extraCurricularActivities);
    psUpdatePersonalDetails.setString(12, category);
    psUpdatePersonalDetails.setString(13, localGuardian);
    psUpdatePersonalDetails.setString(14, localGuardianAddress);
    psUpdatePersonalDetails.setString(15, localGuardianContactNo);
    psUpdatePersonalDetails.setString(16, previousAchievement);
psUpdatePersonalDetails.setString(17, studentID);


    int rowsAffected = psUpdatePersonalDetails.executeUpdate();
   
    
 // Get personal_details_id from personal_details table using studentID
    String getPersonalDetailsIDQuery = "SELECT id FROM personal_details WHERE studentID=?";
    PreparedStatement psGetPersonalDetailsID = con.prepareStatement(getPersonalDetailsIDQuery);
    psGetPersonalDetailsID.setString(1, studentID);
    ResultSet rsGetPersonalDetailsID = psGetPersonalDetailsID.executeQuery();
    
    if(rsGetPersonalDetailsID.next()) {
        int personalDetailsID = rsGetPersonalDetailsID.getInt("id");
        
        // Update data in academic_qualifications table
        String updateAcademicQualificationsQuery = "UPDATE academic_qualifications SET board_university=?, percentage_aggr=?, percentage_pcm=?, division=? WHERE personal_details_id=? AND class=10th";

        PreparedStatement psUpdateAcademicQualifications = con.prepareStatement(updateAcademicQualificationsQuery);

        // Update 10th Class record
        psUpdateAcademicQualifications.setString(1, board10);
        psUpdateAcademicQualifications.setString(2, percentageAggr10);
        psUpdateAcademicQualifications.setString(3, percentagePCM10);
        psUpdateAcademicQualifications.setString(4, division10);
        psUpdateAcademicQualifications.setInt(5, personalDetailsID);
        psUpdateAcademicQualifications.setString(6, "10th");
        psUpdateAcademicQualifications.executeUpdate();

        // Update 12th Class record
        psUpdateAcademicQualifications.setString(1, board12);
        psUpdateAcademicQualifications.setString(2, percentageAggr12);
        psUpdateAcademicQualifications.setString(3, percentagePCM12);
        psUpdateAcademicQualifications.setString(4, division12);
        psUpdateAcademicQualifications.setInt(5, personalDetailsID);
        psUpdateAcademicQualifications.setString(6, "12th");
        psUpdateAcademicQualifications.executeUpdate();

        // Update Diploma/Graduation record
        psUpdateAcademicQualifications.setString(1, boardGraduation);
        psUpdateAcademicQualifications.setString(2, percentageAggrGraduation);
        psUpdateAcademicQualifications.setString(3, percentagePCMGraduation);
        psUpdateAcademicQualifications.setString(4, divisionGraduation);
        psUpdateAcademicQualifications.setInt(5, personalDetailsID);
        psUpdateAcademicQualifications.setString(6, "Diploma/Graduation");
        psUpdateAcademicQualifications.executeUpdate(); 
        
        out.println("<h2>Data updated successfully!</h2>");
    } else {
        out.println("<h2>Failed to update data.</h2>");
    }
    con.close();

} catch(Exception e) {
out.println(e);
}
%>