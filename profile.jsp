<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
              <meta charset="UTF-8">
              <meta name="viewport" content="width=device-width, initial-scale=1.0">
              <title>Document</title>
              <link rel="stylesheet" href="profile.css">
              <link rel="stylesheet" href="about1.css">
              <link rel="stylesheet" href="style.css">
              <link rel="stylesheet" href="style2.css">
</head>
<body>
      <%
        String name = (String)session.getAttribute("name");
        String Email = (String)session.getAttribute("email");
        String gender = (String)session.getAttribute("gender");
        String city = (String)session.getAttribute("city");
       %>
            <header class="header">
<!--                            <a href="a" class="logo">Portfolio</a>-->

                            <span class="navbar" align="center">
                             <a href="About.html" style="--i:5;"  >Home</a>
                            </span>
             </header>
       <div class="container">
       
      
                            <h1 style="color:black">About Your Profile</h1>
                            
                            <form>
                            <p style="color:black" id="name" name="name"   required>Your name : <%= name %></p>
                            <p style="color:black" id="phone" name="emal"  required>Yout Email :<%= Email %></p>
                            <p style="color:black" id="gender" name="gender" required>Yout Gender :<%= gender %></p>
                            <p style="color:black" id="city" name="city"  required>Your City :<%= city %></p>
                            
                              </form>
              </div>
</body>
</html>