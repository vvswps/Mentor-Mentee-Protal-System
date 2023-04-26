<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Personal Details Form</title>
<style>
        /* CSS for the card */
        .card {
           box-sizing: border-box;
            background-color: #fff;
            border-radius: 5px;
            padding: 20px;
            width: 98%;
            margin: 50px auto 0;
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
        .button {
			display: inline-block;
			padding: 12px 20px;
			background-color: #Ff0000;
			color: #fff;
			text-align: center;
			font-size: 14px;
			border: none;
			border-radius: 4px;
			cursor: pointer;
			text-decoration: none;
		}
		.button:hover {
            background-color: #8b0000;
        }	
    </style>
</head>
<body>
    <div class="card">
    <form method="post" action="submitstudentpersonaldetails.jsp">
        <label for="name">Name of the Student:<span>*</span></label>
        <input type="text" name="name" required>
        <label for="fatherName">Father's Name:<span>*</span></label>
        <input type="text" name="fatherName" required>
        <label for="universityRollNo">University Roll No.:<span>*</span></label>
        <input type="text" name="universityRollNo" required><br>
        <label for="correspondenceAddress">Correspondence Address:<span>*</span></label>
        <textarea name="correspondenceAddress" required></textarea>
        <label for="permanentAddress">Permanent Address:<span>*</span></label>
        <textarea name="permanentAddress" required></textarea><br>
        <label for="mobileNoStudent">Mobile No. (Student):<span>*</span></label>
        <input type="text" name="mobileNoStudent" required>
        <label for="mobileNoParent">Mobile No. (Parent's):<span>*</span></label>
        <input type="text" name="mobileNoParent" required>
        <label for="emailStudent">Email (Student's):<span>*</span></label>
        <input type="email" name="emailStudent" required>
        <label for="emailParent">Email (Parent's):<span>*</span></label>
        <input type="email" name="emailParent" required><br>
        <label for="occupation">Occupation of Father/Mother:<span>*</span></label>
        <input type="text" name="occupation" required>
        <label for="extraCurricularActivities">Participation in Extra Curricular Activities (during Course):</label>
        <textarea name="extraCurricularActivities"></textarea><br>
        <label for="category">Category:<span>*</span></label>
        <input type="checkbox" name="category" value="GEN">GEN
        <input type="checkbox" name="category" value="OBC">OBC
        <input type="checkbox" name="category" value="SC">SC
        <input type="checkbox" name="category" value="ST">ST
        <input type="checkbox" name="category" value="MINORITY">MINORITY<br>
        <label for="localGuardian">Name of Local Guardian:</label>
        <input type="text" name="localGuardian">
        <label for="localGuardianAddress">Address:</label>
        <textarea name="localGuardianAddress"></textarea>
        <label for="localGuardianContactNo">Contact No.:</label>
        <input type="text" name="localGuardianContactNo"><br>
        <label for="previousAchievement">Previous Achievement (if any):</label>
        <textarea name="previousAchievement"></textarea><br><br>
            <h2>Academic Qualifications</h2>
    <table>
        <tr>
            <th>Class</th>
            <th>Board/University</th>
            <th>Percentage (Aggr)</th>
            <th>Percentage (PCM/PCB/Science)</th>
            <th>Division</th>
        </tr>
        <tr>
            <td>10th<span>*</span></td>
            <td><input type="text" name="board10" required></td>
            <td><input type="text" name="percentageAggr10" required></td>
            <td><input type="text" name="percentagePCM10" required></td>
            <td><input type="text" name="division10" required></td>
        </tr>
        <tr>
            <td>12th<span>*</span></td>
            <td><input type="text" name="board12" required></td>
            <td><input type="text" name="percentageAggr12" required></td>
            <td><input type="text" name="percentagePCM12" required></td>
            <td><input type="text" name="division12" required></td>
        </tr>
        <tr>
            <td>Diploma/Graduation<span>*</span></td>
            <td><input type="text" name="boardGraduation" required></td>
            <td><input type="text" name="percentageAggrGraduation" required></td>
            <td><input type="text" name="percentagePCMGraduation" required></td>
            <td><input type="text" name="divisionGraduation" required></td>
        </tr>
    </table>
    
    <br>
    <input type="submit" value="Submit">
   
<a href="viewstudentpersonaldetails.jsp" target="_blank" class=button>View Previously saved details</a>

    
</form></div>

</body>
</html>
