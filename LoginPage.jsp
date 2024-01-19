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
		margin: 5% 38.5% 1% 37.1%;
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


<form action="profile" method="post">


 <fieldset>
			<legent align = "center"> <h2> Welcome Back to Krishna's Portfolio web app </h2>
			
			<div align="center" cellpadding="10">
            Name : <input type="text" name = "name" placeholder="Enter your name" required> <br> <br>
            email : <input type="email" name="email" > <br> <br>
            Password : <input type="password" name="pass" > <br> <br>
            <input type="submit" value="login"> <br> <br>
            <span>Don't have account ?</span><br> <br>
            <a href="index.jsp">LogIn</a>            
        </div>
       
        </legent>
         </fieldset>

</form>

</body>
</html>





