<%@ page language="java" %>


<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <title>Student Dashboard</title>
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
  background: #fff;
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
  color: rgb(85, 83, 83);
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

/* MAin Section */
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
          <span class="nav-item">Welcome!<%= session.getAttribute("name") %></span>
        </a></li>
        <li><a href="#">
          <i class="fas fa-menorah"></i>
          <span class="nav-item">Dashboard</span>
        </a></li>
        <li><a href="#">
          <i class="fas fa-bell"></i>
          <span class="nav-item">Notifications</span>
        </a></li>
        <li><a href="#">
          <i class="fas fa-user"></i>
          <span class="nav-item">Mentor Information</span>
        </a></li>
        <li><a href="#">
          <i class="fas fa-info-circle"></i>
          <span class="nav-item">Personal Details</span>
        </a></li>
        <li><a href="#">
          <i class="fas fa-asterisk"></i>
          <span class="nav-item">Academic Details</span>
        </a></li>
        <li><a href="#">
          <i class="fas fa-tasks"></i>
          <span class="nav-item">Progress</span>
        </a></li>
        <li><a href="#">
          <i class="fas fa-comment"></i>
          <span class="nav-item">Feedback</span>
        </a></li>
        <li><a href="changePasswordstudent.jsp">
          <i class="fas fa-unlock-alt"></i>
          <span class="nav-item">Change Password</span>
        </a></li>

        <li><a href="#" class="logout">
          <i class="fas fa-sign-out-alt"></i>
          <span class="nav-item">Log out</span>
        </a></li>
      </ul>
    </nav>


    <section class="main">
  <div class="main-top">
    <h1>Dashboard</h1>
	<p>Your email is <%= session.getAttribute("email") %>.</p>
    

  </div>
  
</section>

 
    
  </div>
<script>
    const links = document.querySelectorAll('.nav-link');
    const mainContent = document.querySelector('#main-content');

    links.forEach(link => {
        link.addEventListener('click', (event) => {
            event.preventDefault();
            const href = link.getAttribute('href');
            mainContent.innerHTML = `<object type="text/html" data="${href}" style="width:100%; height:100%"></object>`;
        });
    });
</script>

</body>
</html>
