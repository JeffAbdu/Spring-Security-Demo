<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>My Custom login Page</title>
</head>
<body>
 
    <h1> Wlecome to this Demo apps custom Login Page</h1>
 
    <!-- Displaying the model that comes from the controller -->
    <p>${ randomMessageOfTheDay }</p>
 
    <!-- Setting the login parameters: -->
    <form action="j_spring_security_check" name="myForm" method="POST">
      Whats your username?<input type="text" name="j_username" value="" />
      Whats your password?<input type="password" name="j_password" />
      <input type="submit" name="submit" value="Get Started" />
    </form>
 
</body>
</html>