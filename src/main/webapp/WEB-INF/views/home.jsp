<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>

<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<html>
<head>
<title>Home</title>
</head>
<body>
	<h1>Hello to Home!</h1>

    <!-- Using the Authentification Tag: -->
   <p> Welcome <sec:authentication property="name" /> </p>

  
    <!-- Using the Authorization Tag: -->
   <sec:authorize ifAnyGranted="ROLE_ADMIN">    
     <p> You have the Admin role, You can do extra things</p>
   </sec:authorize>

</body>
</html>
