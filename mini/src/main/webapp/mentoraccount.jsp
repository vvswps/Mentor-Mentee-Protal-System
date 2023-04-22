<%@ page language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>

  <meta charset="UTF-8" />
  <title>Mentor Dashboard</title>
  <link rel="stylesheet" href="style.css" />
  <!-- Font Awesome Cdn Link -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"/>
 
 <style> /*  import google fonts */
@import url("https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap");
*{
  margin: 0;
  padding: 0;
  outline: none;
  border: none;
  text-decoration: none;
  box-sizing: border-box;
  font-family: "Poppins", sans-serif;
}
body{
  background: rgb(226, 226, 226);
}
nav{
  position: sticky;
  top: 0;
  bottom: 0;
  height: 100vh;
  left: 0;
  width: 90px;
  background-image: url("mentordashboardbackground.jpg");
  overflow: hidden;
  transition: 1s;
}
nav:hover{
  width: 280px;
  transition: 1s;
}
.logo{
  text-align: center;
  display: flex;
  margin: 10px 0 0 10px;
  padding-bottom: 3rem;
}

.logo img{
  width: 45px;
  height: 45px;
  border-radius: 50%;
}
.logo span{
  font-weight: bold;
  padding-left: 15px;
  font-size: 18px;
  text-transform: uppercase;
}
a{
  position: relative;
  width: 280px;
  font-size: 14px;
  color: black;
  display: table;
  padding: 10px;
}
nav .fas{
  position: relative;
  width: 70px;
  height: 40px;
  top: 20px;
  font-size: 20px;
  text-align: center;
}
.nav-item{
  position: relative;
  top: 12px;
  margin-left: 10px;
}
a:hover{
  background: #eee;
}
a:hover i{
  color: #34AF6D;
  transition: 0.5s;
}
.logout{
  position: absolute;
  bottom: 0;
}

.container{
  display: flex;
}

/* Main Section */
.main{
  position: relative;
  padding: 20px;
  width: 100%;
}
.main-top{
  display: flex;
  justify-content: space-between;
  width: 100%;
  margin-bottom: 20px;
}
.main-top h1{
  font-size: 28px;
  font-weight: bold;
}
.main-top p{
  font-size: 14px;
  color: rgb(110, 109, 109);
}
.main-content{
  padding: 20px;
  background: #fff;
  box-shadow: 0 2px 5px rgba(0,0,0,0.1);
}
.main-content h2{
  font-size: 20px;
  font-weight: bold;
  margin-bottom: 20px;
}
.main-content p{
  font-size: 16px;
  margin-bottom: 10px;
}


</style>
</head>
<body>
  <div class="container">
    <nav>
      <ul>
        <li><a href="#" class="logo">
          <img src="user.png">
          <span class="nav-item">Welcome!<br><%= session.getAttribute("mentorname") %></span>
        </a><br><br><br><br></li>
        
        <li><a href="#menteedetails" class="nav-link" onclick="loadContent('studentslist')" data-name="Mentee Details">
          <i class="fas fa-user"></i>
          <span class="nav-item">Mentee Details</span>
        </a></li>
        <li><a href="#sendreport" class="nav-link" onclick="loadContent('sendreport')" data-name="Send Report">
          <i class="fas fa-paper-plane"></i>
          <span class="nav-item">Send Report</span>
        </a></li>

        <li><a href="#studentprogress" class="nav-link" onclick="loadContent('progressstudent')" data-name="Student Progress">
          <i class="fas fa-tasks"></i>
          <span class="nav-item">Progress</span>
        </a></li>
        <li><a href="#changepassword" class="nav-link" onclick="loadContent('changePasswordmentor')" data-name="Change Password">
          <i class="fas fa-unlock-alt"></i>
          <span class="nav-item">Change Password</span>
        </a></li>

        <li><a href="logOutmentor.jsp" class="logout">
          <i class="fas fa-sign-out-alt"></i>
          <span class="nav-item">Log out</span>
        </a></li>
      </ul>
    </nav>


    <section class="main">
  <div class="main-top">
    <h1>Dashboard</h1>
	<p>Your ERP ID is <%= session.getAttribute("mentorID") %></p>
   
  </div>
  <div id="main-content"></div>
</section>
  </div>
<script>
  function loadContent(id) {
    const contentDiv = document.querySelector('#main-content');
    const url = id + '.jsp';
    fetch(url)
      .then(response => response.text())
      .then(html => {
        contentDiv.innerHTML = html;
      });
  }

  const links = document.querySelectorAll('.nav-link');
  const mainContent = document.querySelector('.main-content');
  const mainTitle = document.querySelector('.main-top h1');

  links.forEach(link => {
    link.addEventListener('click', (event) => {
      event.preventDefault();
      const href = link.getAttribute('href');
      const name = link.getAttribute('data-name');
      mainTitle.textContent = name;
      mainContent.innerHTML = `<iframe src="${href}" style="width: 100%; height: 100%; border: none;"></iframe>`;
    });
  });
</script>

</body>
</html>
