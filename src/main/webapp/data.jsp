<%@ page isELIgnored="false" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> Feedback data</title>

<style type="text/css">
	body{
		text-align: center;
	}
	table {
		margin-left: 15%;
		min-width: 70%; 
		border: 1px solid #CCC;
		border-collapse: collapse; 
	}
	table tr{line-height: 30px;}
	table tr th { background: #000033; color: #FFF;}
	table tr td { border:1px solid #CCC; margin: 5px;}
	input[type=text], input[type=email], input[type=tel]{
		min-width: 60%;
	}
	input[type=submit], a{
		background: green;
		padding: 5px;
		margin: 5px;
		color: #FFF;
	}
	a{
		text-decoration: none;
	}
</style>
</head>
<body>
	<h1> Customer Feedback data. </h1>
	<c:url value="/customer/register" var="registerUrl" />
	<br>
	<h1>List of Customers</h1>
	<table>
		<tr>
			<th>ID</th>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Email</th>
			<th>Mobile</th>
			<th>Update</th>
			<th>Delete</th>
		</tr>
		<c:forEach items="${customerList}" var="customer">
			<tr>
				<td>${customer.id}</td>
				<td>${customer.firstName}</td>
				<td>${customer.lastName}</td>
				<td>${customer.email}</td>
				<td>${customer.mobile}</td>
				
				<td>
					<form action="<c:url value="/customer/update"/>" method="post">
						<input type="hidden" name="custId" value="${customer.id}">
						<input type="submit" value="Update">
					</form>
				<td>
					<form action="<c:url value="/customer/delete"/>" method="post">
						<input type="hidden" name="custId" value="${customer.id}">
						<input style="background: #F00;" type="submit" value="Delete">
					</form>
				</td>
			</tr>
		</c:forEach>
	</table>
	<br>
	<br>
	<h3 align="left" style="color:red"> Sever_IP<%= request.getLocalAddr() %> </h3>
        <h1 align="left" style="color:green"> Vanguard Squad <h1>
        <h3 align="left">Jyoti, Mohini, Nishant, Ramprakash, Suman Rao </h3>
        <h1 align="left" style="color:blue"> Guided By: Senthil Alagarsamy </h1>

</body>
</html>
