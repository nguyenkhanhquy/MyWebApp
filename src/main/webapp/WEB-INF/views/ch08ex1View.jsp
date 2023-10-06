<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Exercise 7.3 Page</title>
    <link rel="stylesheet" href="resources/css/ch08.css" type="text/css"/>
</head>
<body>
	<h1>Join our email list</h1>
    <p>To join our email list, enter your name and email address below.</p>
    <jsp:useBean id="user" scope="session" class="codes.id21110282.mywebapp.bean.User"/>    
    <form action="emailList" method="post">
        <input type="hidden" name="action" value="add">
        <input type="hidden" name="myExercise" value="ch08ex1View">      
        <label class="pad_top">Email:</label>
        <input type="email" name="email" 
               value="<jsp:getProperty name="user" property="email"/>"><br>
        <label class="pad_top">First Name:</label>
        <input type="text" name="firstName" 
               value="<jsp:getProperty name="user" property="firstName"/>"><br>
        <label class="pad_top">Last Name:</label>
        <input type="text" name="lastName" 
               value="<jsp:getProperty name="user" property="lastName"/>"><br>        
        <label>&nbsp;</label>
        <input class="btn margin_left" type="submit" value="Join Now">
        <a href="home"><button class="btn margin_left" type="button">Back Home</button></a>
    </form>
</body>
</html>
