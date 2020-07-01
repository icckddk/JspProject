<%@page import="java.sql.*"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>로그인</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
<h1 class="text-center font-weight-bold">로그인</h1>
<br><br>
	<form action="LoginPro.jsp" method="post">
	<div class = "font-group">
   <label for = "id">ID:</label>
   <input type= "text" class = "form-control" id = "id" name ="id">
   </div>
   
   <div class = "font-group">
   <label for = "password">PASSWORD:</label>
   <input type= "password" class = "form-control" id = "pwd" name ="pwd">
   </div>
   
    <br>
   <div class = "text-center">
   <input type = "submit" class = "btn btn-secondary" value="로그인"/>
   <input type = "button" class = "btn btn-secondary" onclick="location.href='insertForm.jsp'" value="회원가입"/>
   </div>
	</form>
</body>
</html>