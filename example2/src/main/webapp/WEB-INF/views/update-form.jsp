<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form:form action="updatePersonalDetails" method="get" modelAttribute="patient">
 <form:input type="text"  path="id" required="" placeholder="aadhar" value=""/>
 <form:input type="text"  path="aadhar_no" required="" placeholder="aadhar" value=""/>
  <form:input type="text"  path="address" required="" placeholder="address" value=""/>
   <form:input type="text"  path="m_no" required="" placeholder="Contact" value=""/>
    <form:input type="text"  path="patient_name" required="" placeholder="name" value=""/>
    <form:button>>Update</form:button>


</form:form>


</body>
</html>