<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>

<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<html>
<head>
<title>Home</title>
</head>
<body>
	<h1>Hello to the first  page!</h1>

    <!-- Using the Authentification Tag: -->
    <p> Welcome <sec:authentication property="name" /> </p>


   <a href="admins"> Admin page </a> 

   <br/>
   
    <a href=j_spring_security_logout>Logout</a>
  
    <!-- Using the Authorization Tag: -->
   <sec:authorize ifAnyGranted="ROLE_ADMIN">    
     <p> You have the Admin role, You can do extra things</p>
   </sec:authorize>

</body>
</html>
