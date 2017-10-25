<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Subject</title>
<style>
body {margin:0;}

div.onlineexam{
background-color:black;
color:white;
margin:0 0 0 0;
padding:20px;
font-size:25px;
font-family:MadAve Madison Avenue ;
}


.navbar {
    overflow: hidden;
    background-color: #333;
    font-family: Arial;
}

.navbar a {
    float: left;
    font-size: 16px;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

.dropdown {
    float: left;
    overflow: hidden;
}

.dropdown .dropbtn {
    font-size: 16px;    
    border: none;
    outline: none;
    color: white;
    padding: 14px 16px;
    background-color: inherit;
}

.navbar a:hover, .dropdown:hover .dropbtn {
    background-color: red;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}

.dropdown-content a {
    float: none;
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
    text-align: left;
}

.dropdown-content a:hover {
    background-color: #ddd;
}

.dropdown:hover .dropdown-content {
    display: block;
}

div.addsub{
margin-top:40px;
margin-left:39px;
text-align: center ;
}

div.footer{
background-color:black;
color:white;
text-align:center;
margin-top:140px;
padding:20px;
}
</style>
</head>
<body>
<div class="onlineexam">
          <h2>ONLINE EXAMINATION SYSTEM</h2>
          
 </div>
 <div class="navbar">
  <a href="#home">Home</a>
 
  <div class="dropdown">
  		<button class="dropbtn">Subject</button>
  			<div class="dropdown-content">		<!--drop down menu for subject -->
    			<a href="addsubject.jsp">Add Subject</a>
    			<a href="#">Delete Subject</a>
    			<a href="#">Show All</a>
  			</div>
    </div>
  	<div class="dropdown">
  		<button class="dropbtn">Question</button>
  			<div class="dropdown-content">		<!--drop down menu for question set -->
    			<a href="addquestion.jsp">Set Question</a>
    			<a href="#">Update Question</a>
    			<a href="#">Question review</a>
  			</div>
    </div>
  
  	<div class="dropdown">
  		<button class="dropbtn">Student</button>
  			<div class="dropdown-content">
    			<a href="#">Add Student</a>
    			<a href="#">Update Student Info</a>			<!--Drop down menu for Student-->
    			<a href="Studentremove.jsp">Delete Student</a>
    			<a href="#">Student Details</a>
  			</div>
	</div>
	
</div>
 
 <div class ="addsub">
 			<form action="../AddSubject">
 			<b>Enter Subject ID: &nbsp;</b><input type="number" name="subid" placeholder="Enter Subject ID">
<br/>
<b>Enter Subject Name: &nbsp;</b><input type="text" name="subname" placeholder="Enter Subject Name">
<br/>
<input type="submit" value="AddSubject">

</form> 
 
 </div>
 

<div class="footer">
<footer>
		@Online Examination PVT. LIMITED 2017
</footer>
</body>
</html>