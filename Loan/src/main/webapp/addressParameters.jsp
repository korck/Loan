<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="address" class="domain.Address" scope="session"/>
	
	<h1>Wprowadź adres:</h1>
	
	<form action="address.jsp">
	<table>
		<tr><label><td>ulica:</td> <td><input type="text" id="street" name="street"></label></td></tr>
		<tr><label><td>numer domu:</td> <td><input type="text" id="houseNumber" name="houseNumber"></label></td></tr>
		<tr><label><td>numer mieszkania:</td> <td><input type="text" id="localNumber" name="localNumber"></label></td></tr>
		<tr><label><td>kod pocztowy:</td> <td><input type="text" id="zipCode" name="zipCode"></label></td></tr>
		<tr><label><td>miasto:</td> <td><input type="text" id="city" name="city"></label></td></tr>
		<tr><label><td>numer telefonu:</td> <td><input type="text" id="phoneNumber" name="phoneNumber"></label></td></tr>
	</table>
		<input type="submit" value="zapisz"/>
	</form>
	
</body>
</html>