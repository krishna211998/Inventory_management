<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Insert title here</title>
</head>
<body>
Simple login Example using servlet jsp and mysql(mariadb) database connectivity
<br> Create a test database, student table and insert some user
information in it.
<br>
<br>

<form action="userValidate" method="post">
    Enter username :<input type="text" name="userid"> <br>
    Enter password :<input type="password" name="password"><br>
    <input type="submit" value="Login">
</form>

</body>
</html>