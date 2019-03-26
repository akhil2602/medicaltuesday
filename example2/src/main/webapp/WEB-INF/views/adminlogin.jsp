 <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style>
    body{
    margin: 0;
    padding: 0;
    background: url(bg.jpg);
    background-size: cover;
background-repeat:no-repeat;
 
    font-family: sans-serif;
}
.login-box{

    width: 340px;
    height: 380px;
    background:#D4E6F1;
    color: black;
 border-radius:20px;
    top: 50%;
    left: 50%;
    position: absolute;
    transform: translate(-50%,-50%);
    box-sizing: border-box;
    padding: 70px 30px;
}
.avatar{
    width: 100px;
    height: 100px;
    border-radius: 50%;
    position: absolute;
    top: -50px;
    left: calc(50% - 50px);
}
h1{
    margin: 0;
    padding: 0 0 20px;
    text-align: center;
    font-size: 22px;
}
.login-box p{
    margin: 0;
    padding: 0;
    font-weight: bold;
}
.login-box input{
    width: 100%;
    margin-bottom: 20px;
}
.login-box input[type="text"], input[type="password"]
{
    border: none;
    border-bottom: 1px solid #fff;
    background: transparent;
    outline: none;
    height: 40px;
    color: white;
    font-size: 16px;
}
.login-box input[type="submit"]
{
    border: none;
    outline: none;
    height: 40px;
    background: #1c8adb;
    color:black;
    font-size: 18px;
    border-radius: 20px;
}
.login-box input[type="submit"]:hover
{
    cursor: pointer;
    background: #39dc79;
    color: #000;
}

.login-box a{
    text-decoration: none;
    font-size: 14px;
    color: #fff;
}
.login-box a:hover
{
    color: #39dc79;
}
select
{
font-family: sans-serif;
}
 </style>




</head>
<body>

               
    <div class="login-box">
    <img src="images\avatar.png" class="avatar">
        <h1>Login Here</h1>
            <form:form action="login"  modelAttrbute="theadmin">
            <p>Username</p>
            <form:input type="text" name="idd" placeholder="Enter Username" path="idd" />
            <p>Password</p>
            <form:input type="password" name="em" placeholder="Enter Password"  path="em" />
            <form:button >bb</form:button>
            <a href="adminregister.html">CLICK HERE</a> to Register 
            </form:form>
        
        
        </div>
    



</body>
</html>