<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.Random" %>
<%@ page import="java.util.Date" %>
<%@ page import="domain.LoanApplication" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%!
		Random generator = new Random();
	%>
	
	<%
		String number = "" + generator.nextLong() % 1000;
	%>
	
	<jsp:useBean id="loan" class="domain.LoanApplication" scope="session"/>
	<jsp:setProperty property="number" name="Loan" value="<%=number %>"/>
	<jsp:setProperty property="date" name="Loan" value="<%=new Date() %>"/>
	
	Wygenrowany numer wniosku: <%=loan.getNumber()%>
	<br>
	Data wygenerowania: <%=loan.getDate() %>
	
	<form action="person.jsp">
		<label>Wnioskowana kwota: <input type="number" id="amount" name="amount"></label><br/>
		<label>Ilość rat: <input type="number" id="installmentCount" name="installmentCount"></label><br/>
		<input type="submit" value="następny krok"/>
	</form>
	
</body>
</html>