<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Insert title here</title>
<meta http-equiv="Content-Type" content="text/html; charset= ISO-8859-1><%-- utf-8" --%>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<!-- <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); }  -->
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script> 
</head>
<body>
<div class="container">
  <h2>Add New Employee</h2>
  
  <form:form action="saveemp" modelAttribute="emp">
  
    <div class="form-group">
      <label for="username">UserName:</label>
     <form:input type="text" path="username" class="form-control" id="username" />
    </div>
    <div class="form-group">
      <label for="city">City:</label>
      <form:input type="text" path="city" class="form-control" id="city" />
    </div>
     <div class="form-group">
      <label for="mobilenumber">MobileNumber:</label>
      <form:input type="text" path="mobilenumber" class="form-control" id="mobilenumber" />
    </div>
     <div class="form-group">
      <label for="password">Password:</label>
      <form:input type="text" path="password" class="form-control" id="password" />
    </div>
     <div class="form-group">
      <label for="confirmpassword">ConfirmPassword:</label>
      <form:input type="text" path="confirmpassword" class="form-control" id="confirmpassword" />
    </div>
     <div class="form-group">
      <label for="email">Email:</label>
      <form:input type="text" path="email" class="form-control" id="email" />
    </div>
   
    <!-- <div class="checkbox">
      <label><input type="checkbox" name="remember"> Remember me</label>
    </div> -->
  <input type="submit" class="btn btn-info" value="save">
     </div>
  </form:form>
  </div>
</body>
</html>