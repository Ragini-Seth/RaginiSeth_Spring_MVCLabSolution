<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>

<!DOCTYPE html>

<html>

<head>
	<title>List Students</title>
	
	<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport"
		content="width=device-width, initial-scale=1, shrink-to-fit=no">
	
	<!-- Bootstrap CSS -->
	<link rel="stylesheet"
		href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
		integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
		crossorigin="anonymous">
</head>

<body>

	<div class="container">
		<div id="wrapper">
			<div id="header">
				<h2>Student Management</h2>
				<hr />
			</div>
		</div>
		
		<div id="container">
		
			<div id="content">
			
				<!-- put new button: Add student -->
				<input type="button" value="Add student"
					   onclick="window.location.href='showFormForAdd'; return false;"
					   class="btn btn-primary btn-sm mb-3"/>
			
				<!--  add our html table here -->
				<table class="table table-bordered table-striped">
					<thead class="thead-dark">
						<tr>
							<th>Id</th>
							<th>Name</th>
							<th>Department</th>
							<th>Country</th>
							<th>Action</th>
						</tr>
					</thead>
					
					<tbody>
						<!-- loop over and print our Students -->
						<c:forEach var="tempStudent" items="${students}">
						
							<!-- construct an "update" link with student id -->
							<c:url var="updateLink" value="/student/showFormForUpdate">
								<c:param name="studentId" value="${tempStudent.id}" />
							</c:url>					
		
							<!-- construct an "delete" link with student id -->
							<c:url var="deleteLink" value="/student/delete">
								<c:param name="studentId" value="${tempStudent.id}" />
							</c:url>					
							
							<tr>
								<td> ${tempStudent.id} </td>
								<td> ${tempStudent.name} </td>
								<td> ${tempStudent.department} </td>
								<td> ${tempStudent.country} </td>
								
								<td>
									<!-- display the update link -->
									<a href="${updateLink}">Update</a>
									|
									<a href="${deleteLink}"
									   onclick="if (!(confirm('Are you sure you want to delete this student?'))) return false">Delete</a>
								</td>
								
							</tr>
						
						</c:forEach>
					<tbody>
					
				</table>
					
			</div>
		
		</div>
	</div>

</body>

</html>









