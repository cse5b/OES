<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Question</title>
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
div.update{
margin-top:12%;
margin-left:12%%;
text-align: center;
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
<div class="update">
<h1>**Update Question**</h1>
<form action="../UpdateQuestion" method="post">

<b>Enter Subject ID: &nbsp;</b><input type="number" name="sid" placeholder="Enter Subject ID">
<br/>
<b>Select Question Number: &nbsp;</b><select name="number">
						<optgroup label="Select Question No" >
					    <option value ="1">1</option>
						<option value ="2">2</option>
						<option value ="3">3</option>
						<option value ="4">4</option>
						<option value ="5">5</option>
						<option value ="6">6</option>
						<option value ="7">7</option>
						<option value ="8">8</option>
						<option value ="9">9</option>
						<option value ="10">10</option>
						</optgroup>

		</select>
	<br/>
<b>Enter New Question: &nbsp;</b><input type="text" name="qname" placeholder="Enter New Question">
<br/>
<b>Enter 1st Option: &nbsp;</b><input type="text" name="option1" placeholder="Option1">
<br/>
<b>Enter 2nd Option:&nbsp;</b><input type="text" name="option2" placeholder="Option2">
<br/>
<b>Enter 3rd Option: &nbsp;</b><input type="text" name="option3" placeholder="Option3">
<br/>
<b>Enter 4th option: &nbsp;</b><input type="text" name="option4" placeholder="Option4">
<br/>
<b>Enter Correct Answer: &nbsp;</b><input type="text" name="answer" placeholder="Answer">
<br/>
<input type="submit" value="UpdateQuesion">

</form>
</div>
<div class="footer">
<footer>
		@Online Examination PVT. LIMITED 2017
</footer>
</body>
</html>