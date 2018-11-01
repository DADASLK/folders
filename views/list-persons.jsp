<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<link type="text/css" rel="stylesheet"
	href="assets/dadaBootstrap/css/bootstrap.css">
<link type="text/css" rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">



</head>


<c:if test="${fn:length(persons)>0}">

	<div class="jumbotro">
		<h1 class="display-6" style="background-color: silver;">Details
			of your contacts</h1>
		<hr class="my-1">

	</div>

	<br>

	<div class="container-fluid">
		<table border="1" class="table table-striped  table-hover">
			<thead>
				<tr>
					<th>Name</th>
					<th>Phone number</th>
					<th>Email address</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${persons}" var="p">
					<tr>
						<td>${p.firstname}${p.lastname}</td>
						<td>${p.phone}</td>
						<td>${p.email}</td>
						<td><a href="./delete-person?id=${p.id}"><span
								class="fa fa-trash">Delete</span></a> <a
							href="./edit-person?id=${p.id}"><span class="fa fa-pencil">Edit</span></a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</c:if>