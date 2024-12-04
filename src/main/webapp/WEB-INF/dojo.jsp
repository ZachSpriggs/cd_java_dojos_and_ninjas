<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page isErrorPage="true" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<title>Dojo Page</title>
</head>
<body>

	<div class = "container">
	<nav class='navbar navbar-light bg-dark text-white'>
            <a class='navbar brand text-white' href="/">Dashboard</a>
            <a class = "navbar brand text-white" href = "/ninja">Create a Ninja</a>
        </nav>
        <h4><c:out value = "${dojo.name}"/> Location Ninjas: </h4>
	<table class="table table-striped">
	  <thead>
	    <tr>
	      <th scope="col">First Name</th>
	      <th scope="col">Last Name</th>
	      <th scope="col">Age</th>
	    </tr>
	  </thead>
	  <tbody>
	  <c:forEach items = "${dojo.ninjas}" var = "ninja">
        <tr>
	      <td><c:out value = "${ninja.firstName}"/></td>
	      <td><c:out value = "${ninja.lastName}"/></td>
	      <td><c:out value = "${ninja.age}"/></td>
	    </tr>     		
      </c:forEach>
	  </tbody>
	</table>
</div>
</body>
</html>