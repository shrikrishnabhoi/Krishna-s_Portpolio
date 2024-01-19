<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>


.bold{
         animation: zoomIn 1s ease forwards, floatImage 4s ease-in-out infinite;
         animation-delay: 2s, 3s;
}
.sbmt
{
 border-radius: 30px;
 padding:5px 10px 5px 10px ;
 background-color:#1f242d;
 color:#0ef;
}

.sbmt:hover
{
              background:#0ef ;
              border-radius: 30px;
              box-shadow: 0 0 10px #0ef;
              color:#1f242d;
              animation-delay: 2s;
}

body{
        box-shadow: 0 0 35px #0ef;
		margin: 5% 38.5% 18% 37.1%;
		border-radius: 20px;
		background-color: #1f242d;
 		color:#1f242d; 
		font-size:15px;
        font-weight: 600;
        cellpadding:10%;
       
	}	
	 fieldset{
	   width: 300px;
	   border-radius: 20px;
	   background: #0ef;
   }
 
	
</style>
</head>
<body>

   <form action="register" method="post" class="bold">
        <fieldset>
			<legent align = "center"> <h2> Welcome to Krishna's Portfolio web app </h2>
			
			<div align="center" cellpadding="10">
             Name : <input type="text" name="name1" placeholder=" enter your name "/> <br> <br>
             Email:   <input type="email" name="email1" placeholder=" enter your email "/><br> <br>
             Password : <input type="password" name="pass1" placeholder=" enter your password "/><br> <br>
             Gender : <input type="radio" name="gender" value="male"> Male </input>
             <input type="radio" name="gender" value="female">Female </input> <br> <br>
             
             City : <select name="city1">
   
                <option>Select City</option>
                <option>Mumbai</option>
                <option>Delhi</option>
                <option>Banglore</option>             
                <option>pune</option>
                <option>Hydrabad</option>

        </select><br><br>
        
        <input  class="sbmt" type="submit" value="Register"><br> <br>
        <span>Already have account ?</span><br> <br>
        <a href="LoginPage.jsp">LogIn</a>
        </div>
       
        </legent>
         </fieldset>
   </form>

</body>
</html>


