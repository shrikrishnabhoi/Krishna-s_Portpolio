<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
              <meta name="viewport" content="width=device-width, initial-scale=1.0">
              <title>Krishna's Portfolio</title>
              <link rel="icon" href="/Photo/Picsart_23-12-04_14-11-28-656.png">
              <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
              <link rel="stylesheet" href="style.css">
               <link rel="stylesheet" href="about1.css">
</head>
<body>
 <header class="header"  hight:auto;>
 
                             <%
                             String name = (String)session.getAttribute("name");
                            %>
                            <a href="#" class="logo">Welcome <%= name %></a>

                            <nav class="navbar"  hight: auto;>
                                          <a href="portindex.jsp"  style="--i:1;"  class="active">Home</a>
                                          <a href="About.html" style="--i:2;"  >About</a>
                                          <a href="skill.html" style="--i:3;" >Skills</a>
                                          <a href="https://novoresume.com/resume-templates" style="--i:4;"> Resume Builder</a>
                                          <a href="logout" style="--i:5;">LogOut</a>
                            </nav>

              </header>
              <section class="home"  hight: auto;>
                            <div class="home-content" hight: auto;>
                                          <h3 >Hello, it's me</h3>
                                          <h1>Krishna Bhoi</h1>
                                          <h3 >And I'm a <span class="multiple-text"></span></h3>
                                          <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Nihil ex id animi, quis facere, quaerat magni nostrum incidun uibusdam culpa explicabo, porro amet!</p>
                           
                                          <div class="social-media">
                                           <a href="https://www.facebook.com/profile.php?id=100094616756576" target="_blank" style="--i:7;" ><i class='bx bxl-facebook'></i></a>
                                           <a href="https://twitter.com/BhoiShrikr58680" target="_blank" style="--i:8;"><i class='bx bxl-twitter'  ></i></a>
                                           <a href="https://www.instagram.com/kreeshnasalle/" target="_blank" style="--i:9;"><i class='bx bxl-instagram' ></i></a>
                                           <a href="https://www.linkedin.com/in/shrikrushna-bhoi-7a43bb252/" targ style="--i:10;"><i class='bx bxl-linkedin' ></i></a>
                                          </div>
                                          <a href="#" class="btn"  hight: auto;>Download CV / Resume</a>
                            </div>
                            <div class="home-img">
                            <img src="Picsart_23-12-04_14-11-28-656.png" alt="Krishna-image">
                           </div>
              </section>
              
              <script src="https://unpkg.com/typed.js@2.1.0/dist/typed.umd.js"></script>

              <script src="script.js"></script>

</body>
</html>