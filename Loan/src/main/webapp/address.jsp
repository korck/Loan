<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="domain.Address" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="address" class="domain.Address" scope="session"/>
	<jsp:useBean id="allocation" class="services.Allocation" scope="application"/>
	
	<jsp:setProperty property="houseNumber" name="address" param="houseNumber"/>
	<jsp:setProperty property="localNumber" name="address" param="localNumber"/>
	<jsp:setProperty property="zipCode" name="address" param="zipCode"/>
	<jsp:setProperty property="city" name="address" param="city"/>
	<jsp:setProperty property="phoneNumber" name="address" param="phoneNumber"/>
	<jsp:setProperty property="street" name="address" param="street"/>
	
	<%
		allocation.add(address);
	%>
	<ul>
	<%
		for(Address _address: allocation.getAll()) {
	%>
	<li>Adres:<%=_address.getStreet() 
		+" Miasto: " + _address.getCity()
		+" Kod pocztowy: " + _address.getZipCode()%></li>
	<%
		}
	%>
	</ul>
	

</body>
</html>
