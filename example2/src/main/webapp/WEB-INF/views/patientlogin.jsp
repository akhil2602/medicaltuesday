<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
   <style>body{
        margin: 0;
        padding: 0;
        background: url(images/image.jpg);
        background-size: cover;
    background-repeat:no-repeat;
     
        font-family: sans-serif;
    }
    .login-box{
        width: 320px;
    border-radius:20px;
        height: 340px;
        background: #D4E6F1;
        color: black;
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
        color: black;
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
    
    #myVideo {
      position: fixed;
      right: 0;
      bottom: 0;
      min-width: 100%; 
      min-height: 100%;
    }</style>




</head>
<body>



<div class="login-box">
    <img src="images/avatar.png" class="avatar">
        <h1>Login Here</h1>
            <form>
            <p>Userid</p>
            <input type="text" name="Userid" placeholder="Enter Userid"required>
           
            <p>Registered Mobile Number</p>
            <input type="text" name="Registered Mobile Number"pattern="[0-9]{10}" placeholder="Enter Registered Mobile Number"required>
            <a href="patienthomepage.html"><input type="submit" name="submit" value="Login"></a>
            
        
        
        </div>



</body>
</html>