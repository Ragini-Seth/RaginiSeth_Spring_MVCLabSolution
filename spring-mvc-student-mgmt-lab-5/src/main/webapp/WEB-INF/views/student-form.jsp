<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>

<head>
	<title>Save student</title>
	
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
			<h3>Save student</h3>
		
			<form:form action="saveStudent" modelAttribute="student" method="POST">
	
				<!-- need to associate this data with student id -->
				<form:hidden path="id" />
						
				<table class="table table-bordered table-striped">
					<tbody>
						<tr>
							<td><label>Name:</label></td>
							<td><form:input path="name" class="form-control mb-4 col-4"  /></td>
						</tr>
					
						<tr>
							<td><label>Department:</label></td>
							<td><form:input path="department" class="form-control mb-4 col-4"  /></td>
						</tr>
	
						<tr>
							<td><label>Country:</label></td>
							<td><form:input path="country" class="form-control mb-4 col-4"  /></td>
						</tr>
	
						<tr>
							<td><label></label></td>
							<td><input type="submit" value="Save" class="save btn btn-info col-2" /></td>
						</tr>
	
					
					</tbody>
				</table>
			
			
			</form:form>
		
			<div style="clear; both;"></div>
			
			<p>
				<a href="../student/list">Back to List</a>
			</p>
		
		</div>
	</div>
</body>

</html>










