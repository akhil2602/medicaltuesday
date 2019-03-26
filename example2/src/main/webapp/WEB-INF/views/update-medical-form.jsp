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

<form:form action="updateMedicalDetails" method="get" modelAttribute="patient_medical">
 <form:input type="text"  path="id" required="" placeholder="id" value=""/>
 <form:input type="text"  path="checkin_date" required="" placeholder="checkin_date" value=""/>
  <form:input type="text"  path="checkout_date" required="" placeholder="checkout_date" value=""/>
   <form:input type="text"  path="bed_no" required="" placeholder="bed_no" value=""/>
    <form:input type="text"  path="treatment_status" required="" placeholder="treatment_status" value=""/>
        <form:input type="text"  path="doctor_name" required="" placeholder="doctor_name" value=""/>
    
        <form:input type="text"  path="height" required="" placeholder="height" value=""/>
    
        <form:input type="text"  path="weight" required="" placeholder="weight" value=""/>
            <form:input type="text"  path="blood_group" required="" placeholder="blood_group" value=""/>
        
    
    <form:button>>Update</form:button>
</form:form>


</body>
</html>