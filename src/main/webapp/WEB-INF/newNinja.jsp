<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>   
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<title>New Ninja</title>
</head>
<body>

<div class="container">
        <nav class='navbar navbar-light bg-dark text-white'>
            <a class='navbar brand text-white' href="/">Dashboard</a>
            <h3>Create a license</h3>
        </nav>
        
        <form:form action="/createNinja" method="POST" modelAttribute = "ninja">
            <div class="row">
                <div class="col-4">
                	<form:label path = "dojo">Dojo:</form:label>
                	<form:errors path = "dojo"/>
                	<form:select path = "dojo">
                    	<c:forEach items = "${dojos}" var = "dojo">
                    		<form:option value = "${dojo.id}"><c:out value = "${dojo.name}"/>
                    		</form:option>
                    	</c:forEach>
                    </form:select>
                    <p>
  					<form:label path = "firstName">First Name:</form:label>
  					<form:errors path = "firstName"/>
  					<form:input path = "firstName" type = "text"/>
  					</p>
  					<p>
  					<form:label path = "lastName">Last Name:</form:label>
  					<form:errors path = "lastName"/>
  					<form:input path = "lastName" type = "text"/>
  					</p>
                    <p>
  					<form:label path = "age">Age:</form:label>
  					<form:errors path = "age"/>
  					<form:input path = "age" type = "text"/>
  					</p>
                </div>
            </div>
            <div class='row'>
                <button class='btn btn-outline-success ml-3 mt-3'>Add</button>
            </div>
        </form:form>
        
    </div>

</body>
</html>