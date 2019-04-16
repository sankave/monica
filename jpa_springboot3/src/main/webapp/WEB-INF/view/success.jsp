<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color:gold ">
<div align="center">
		<h1>EmployeeList</h1>
<form:form name="form1" action="update" modelAttribute="emp">
								
		<table border="1" style="border-collapse: collapse">
			<tr>
				<th>Id</th> 
				<th>UserName</th>
				<th>City</th>
				<th>MobileNumber</th>
				<th>Password</th>
				<th>ConfirmPassword</th>
				<th>Email</th>
				<th>Edit</th>
				<th>Delete</th>
			</tr>
			<c:forEach var="ls" items="${list}">
			<tr>
					<c:choose>
						<c:when test="${ls.id==empform.id}">
							
								<form:hidden path="id" value="${ls.id}" />
								<td>${ls.id}</td>
								<td><form:input path="username" value="${ls.username}" /></td>
						 		<td><form:input path="city" value="${ls.city}"/> </td>
								<td><form:input path="mobilenumber" value="${ls.mobilenumber}"/></td>
								<td><form:input path="password" value="${ls.password}"/> </td>
								<td><form:input path="confirmpassword" value="${ls.confirmpassword}"/> </td>
								<td><form:input path="email" value="${ls.email}"/> </td>
								<td><a href="#" onclick="form1.submit()"><img src="/images/update.jpg", width=30, height=30></a></td>
									&nbsp;&nbsp;&nbsp;&nbsp;
									<td> <a href="delete?id=${ls.id}"><img src="/images.delete.jpg", width=30, height=30></a></td>
							
						</c:when>
						<c:otherwise>		
			                <td>${ls.id}</td> 
							<td>${ls.username}</td>
							<td>${ls.city}</td>
							<td>${ls.mobilenumber}</td>
							<td>${ls.password}</td>
							<td>${ls.confirmpassword}</td>
							<td>${ls.email}</td>
							<td><a href="edit?id=${ls.id}"><img src="/images/edit.jpg", width=30, height=30></a></td>
								&nbsp;&nbsp;&nbsp;&nbsp; 
							<td><a href="delete?id=${ls.id}"><img src="/images.delete.jpg", width=30, height=30></a></td>
					</c:otherwise>
					</c:choose>
				</tr>
			</c:forEach>
			</table>
			</form:form>
</body>
</html>
