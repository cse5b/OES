<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sandy JSP</title>
<link rel="icon" href="ch.ico" type="image/x-icon">
</head>
<body>
<marquee direction="right" bgcolor="orange" behavior="alternate" scrollamount="10" loop="10000"> Hello User, THis is Jsp PAge BE caRe FuL !!!
</marquee>
<pre> <b>          LOGIN HERE </b></pre>
    <div>
       <form action="../Login">
       <pre>
        user id <input type="text" name="uname"><br>
       password <input type="password" name="pass"><br>
        <input type="submit" value="login">
        </pre>
       </form>   
        
    </div>
    <marquee direction="right" bgcolor="green" behavior="alternate" scrollamount="100" loop="10000"> <font color="white"> BE caRe FuL !!!   Page is loading...........
</font>
</marquee>
</body>
</html>