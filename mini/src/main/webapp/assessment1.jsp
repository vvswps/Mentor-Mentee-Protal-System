<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
        /* CSS for the card */
        .card {
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
            padding: 20px;
            width: 80%;
            margin: auto;
            margin-top: 50px;
        }
        
        /* CSS for the form elements */
        label {
            display: block;
            margin-top: 20px;
        }
        label span {
		color: red;
	}
        input[type="text"],
        input[type="email"],
        textarea {
            width: 100%;
            padding: 10px;
            border-radius: 5px;
            border: 1px solid #ccc;
            box-sizing: border-box;
            margin-top: 5px;
            margin-bottom: 2px;
        }
        
        input[type="checkbox"] {
            margin-right: 10px;
        }
        
        table {
            border-collapse: collapse;
            width: 100%;
        }
        
        th, td {
            padding: 8px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        
        th {
            background-color: #f2f2f2;
        }
        
        input[type="submit"] {
            background-color: #007bff;
            color: #fff;
            padding: 12px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            margin-top: 20px;
        }
        
        input[type="submit"]:hover {
            background-color: #00008B;
        }
    </style>
</head>
<body style="background-color:#007bff;">

<div class="card">
<form method="post" action="submitassessment1details.jsp">
<h2>Assessment during I Semester:</h2>

<label for="accommodation">Accommodation:</label>
<input type="checkbox" name="accommodation" value="hosteller">Hosteller
<input type="checkbox" name="accommodation" value="day-scholar">Day-scholar<br>

<label for="mentorName">Mentor's Name:</label>
<input type="text" name="mentorName" required><br>
<h4>Subjects Studying</h4>
<table>
  <tr>
    <th>S. No.</th>
    <th>Subjects (Code and Name)</th>
    <th>Marks obtained (1st Sessional)</th>
    <th>Marks obtained (2nd Sessional)</th>
    <th>Marks obtained (3rd Sessional)</th>
  </tr>
  <tr>
    <td>1</td>
    <td><input type="text" name="subjectCode1" required></td>
    <td><input type="text" name="marks11" required></td>
    <td><input type="text" name="marks21" required></td>
    <td><input type="text" name="marks31" required></td>
  </tr>
  <tr>
    <td>2</td>
    <td><input type="text" name="subjectCode2" required></td>
    <td><input type="text" name="marks12" required></td>
    <td><input type="text" name="marks22" required></td>
    <td><input type="text" name="marks32" required></td>
  </tr>
  <tr>
    <td>3</td>
    <td><input type="text" name="subjectCode3" required></td>
    <td><input type="text" name="marks13" required></td>
    <td><input type="text" name="marks23" required></td>
    <td><input type="text" name="marks33" required></td>
  </tr>
  <tr>
    <td>4</td>
    <td><input type="text" name="subjectCode4" required></td>
    <td><input type="text" name="marks14" required></td>
    <td><input type="text" name="marks24" required></td>
    <td><input type="text" name="marks34" required></td>
  </tr>
  <tr>
    <td>5</td>
    <td><input type="text" name="subjectCode5" required></td>
    <td><input type="text" name="marks15" required></td>
    <td><input type="text" name="marks25" required></td>
    <td><input type="text" name="marks35" required></td>
  </tr>
  <tr>
    <td>6</td>
    <td><input type="text" name="subjectCode6" required></td>
    <td><input type="text" name="marks16" required></td>
    <td><input type="text" name="marks26" required></td>
    <td><input type="text" name="marks36" required></td>
  </tr>
  <tr>
    <td>7</td>
    <td><input type="text" name="subjectCode7" required></td>
    <td><input type="text" name="marks17" required></td>
    <td><input type="text" name="marks27" required></td>
    <td><input type="text" name="marks37" required></td>
  </tr>
</table>

<label for="absentDetained">N.B. Mark "A" if absent, mark "D" if detained</label><br>

<h4>Attendance Record</h4>
<label for="attendance1">A. Just before 1st Sessional<input type="text" required>% attendance. Detained from Sessional (Y/N)</label>

<input type="checkbox" name="detained1" value="yes">Yes
<input type="checkbox" name="detained1" value="no">No<br>

<label for="attendance2">B. Just before 2nd Sessional<input type="text" required>% attendance. Detained from Sessional (Y/N)</label>
<input type="checkbox" name="detained2" value="yes">Yes
<input type="checkbox" name="detained2" value="no">No<br>

<label for="attendance3">C. Just before PUT<input type="text" required>%.Detained from Sessional (Y/N)</label>
<input type="checkbox" name="detained3" value="yes">Yes
<input type="checkbox" name="detained3" value="no">No<br>

<label for="attendance4">D. Overall remedial Class attendance, if any<input type="text" required>% .Overall Detained (Y/S)</label>
<input type="checkbox" name="overallDetained" value="yes">Yes
<input type="checkbox" name="overallDetained" value="no">No<br>

<h4>MooCs Courses/Coursera Certification Progress</h4>
<table>
  <tr>
    <th>Name of Certification</th>
    <th>No. of Hours</th>
    <th>Progress</th>
    <th>Completion Status</th>
  </tr>
  <tr>
    <td><input type="text" name="certificationName1" required/></td>
    <td><input type="text" name="certificationHours1" required/></td>
    <td><input type="text" name="certificationProgress1" required/></td>
    <td><input type="text" name="certificationStatus1" required/></td>
  </tr>
  <tr>
    <td><input type="text" name="certificationName2" required/></td>
    <td><input type="text" name="certificationHours2" required/></td>
    <td><input type="text" name="certificationProgress2" required/></td>
    <td><input type="text" name="certificationStatus2" required/></td>
  </tr>
</table>

<h3>Performance in 1st Semester</h3>
<h4>1. Semester score card</h4>
<table>
    <tr>
      
      <th>External Marks</th>
      <th>Internal Marks</th>
      <th>Total Marks</th>
    </tr>
    <tr>
      
      <td><input type="text" name="external_marks" required></td>
      <td><input type="text" name="internal_marks" required></td>
      <td><input type="text" name="total_marks" required></td>
    </tr>
    </table>
    <table>
    <tr>
      <th>External Percentage</th>
      <th>Internal Percentage</th>
      <th>Total Percentage</th>
      </tr>
      <tr>
      <td><input type="text" name="external_percentage" required></td>
      <td><input type="text" name="internal_percentage" required></td>
      <td><input type="text" name="total_percentage" required></td>
    </tr>
  </table>
<h4>2. Carry over if any (provide details)</h4>
<table>
    <tr>
    <th>Sub.code</th><th>Marks</th></tr><tr>
    <td><input type="text" name="sub_code"></td>
    <td><input type="text" name="sub_code"></td>
  </tr>
  <tr>
    <td><input type="text" name="marks"></td>
    <td><input type="text" name="marks"></td>
  </tr>
</table>
<h4>3. Any other Achievements</h4>
<label for="achievements"></label><textarea name="achievements" rows="3" cols="7"></textarea>
<br>
    <input type="submit" value="Submit">
</form>
</div>


	
</body>
</html>