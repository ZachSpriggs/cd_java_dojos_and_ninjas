<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>   
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<title>Create a Dojo</title>
</head>
<body>
		
		<div class = "container">
		<form:form action="/dojos" method="POST" modelAttribute = "dojo">
            <div class="row">
                <div class="col-4" >
		            <p>
						<form:label path = "name">Name:</form:label>
						<form:errors path = "name"/>
						<form:input path = "name" type = "text"/>
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