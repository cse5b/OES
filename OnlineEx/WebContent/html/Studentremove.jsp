<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Remove Student</title>
<style>
body{
margin:0}
div.onlineexam {
    background-color: black;
    color: white;
    margin: 0 0 20px 0;
    padding: 15px;
    font-size:25px;
font-family:MadAve Madison Avenue ;
} 
div.remove{
margin-left:37%;
margin-top:12%;
width:20%;
text-align: center;
background-color: grey;
}
div.footer{
margin-top:17%;
background-color: black;
color:white;
text-align:center;
padding:20px;
}
input[type="submit"]{
border-radius:5px;}
input[type="submit"]:hover{
background:grey;}
</style>
</head>
<body bgcolor="pink">
<div class="onlineexam">
          <h2>ONLINE EXAMINATION SYSTEM</h2>
<p></p>
</div>
  <div class="remove">
  	<form action="../RemoveSuccess" name="Remove Student">
  	 <fieldset>
  	 		<legend>Remove Student</legend>
  			<input type="number" placeholder="Enter Student ID" name="remove student">
  			<br/>
  			<br/>
  			
  			<input type="submit" value="Remove Student" class="btn" style="padding:8px;">
  			</fieldset>
  	</form>
  </div>
  <div class="footer">
  <footer>
     @Online Examination PVT. LIMITED 2017 
  
  </footer>
  </div>
</body>
</html>