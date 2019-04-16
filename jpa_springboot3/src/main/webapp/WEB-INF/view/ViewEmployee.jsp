<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<table class="table table-bordered table-sm" width="50%" style="width: 50%; margin-left: 250px;">
 	
	 <tr >
	  <th>Id</th>
	 <th>Name</th>
	 <th>City</th>
	 <th>MobileNumber</th>
	 <th>Password</th>
	 <th>ConfirmPassword</th>
	 <th>Email</th>
	 <th>Action</th>
	 <th>Action</th>
	  </tr>
	 <c:forEach var="ls" items="${list}" >
	  	
			<tr>
			
				<td>${ls.id}</td>
			
				<td>${ls.username}</td>
		
				<td>${ls.city}</td>
			
		
				<td>${ls.mobilenumber}</td>
				
				<td>${ls.password}</td>
				
				<td>${ls.confirmpassword}</td>
				
				<td>${ls.email}</td>
				<td><a href="edit?id=${ls.id}"><img src="/images/edit.jpg" width="30" height="30"></a></td>
					<td><a href="Delete?id=${ls.id}"><img src="/images.dell.jpg" width="30" height="30"></a></td>
			</tr>
		</c:forEach>
			</table>
	
	
</body>
</html>