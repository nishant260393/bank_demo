<%@ page isELIgnored="false" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> Bank Feedback Page </title>

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
	<h1> Hi Welcome to ABC Bank feedback page.</h1>
	<h1 align="center"> Please submit your details, We will be back to you shortly.</h1>
	<c:url value="/customer/register" var="registerUrl" />
	<form action="${registerUrl}" method="post">
		<table>
			<c:if test="${customer.id ne null}">
				<tr>
				<td>Customer ID:</td>
					<td><input type="text" name="id" value="${customer.id}" readonly="readonly"></td>
				</tr>
			</c:if>
			<tr>
				<td>First Name:</td>
				<td><input type="text" name="firstName" value="${customer.firstName}" required></td>
			</tr>
			<tr>
				<td>Last Name:</td>
				<td><input type="text" name="lastName" value="${customer.lastName}" required></td>
			</tr>
			<tr>
				<td>Email:</td>
				<td><input type="email" name="email" value="${customer.email}" required></td>
			</tr>
			<tr>
				<td>Mobile:</td>
				<td><input type="tel" pattern="[789][0-9]{9}" name="mobile" value="${customer.mobile}" required></td>
			</tr>

			<c:if test="${customer.id ne null}">
				<tr>
					<td colspan="2"><input type="submit" value="Update"></td>
				</tr>
			</c:if>
			<c:if test="${customer.id eq null}">
				<tr>
					<td colspan="2"><input type="submit" value="Save"></td>
				</tr>
			</c:if>
		</table>
	</form>
	<br>
	<h2 align="left" style="color:red"> Server_IP <%= request.getLocalAddr() %> </h2>
	<h1 align="left" style="color:green"> Vanguard Squad <h1>
        <h3 align="left">Jyoti </h3>
        <h3 align="left">Mohini </h3>
        <h3 align="left">Nishant </h3>
	<h3 align="left">Ramprakash </h3>
        <h3 align="left">Suman Rao </h3>
        <h1 align="left" style="color:blue"> Guided By: Senthil Alagarsamy </h1>
</body>
</html>
