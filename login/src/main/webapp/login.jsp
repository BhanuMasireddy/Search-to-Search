<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Login</title>
    <link rel="stylesheet" type="text/css" href="login.css">
</head>
<body>
    <div class="hero">
        <div class="container">
            <h1>User Login</h1>
            <form action="LoginServlet" method="post">
                <label for="txtName">Enter Name:</label>
                <input type="text" id="txtName" name="txtName" required>
                
                <label for="txtPwd">Enter Password:</label>
                <input type="password" id="txtPwd" name="txtPwd" required>
                
                <button type="submit">Login</button>
                <button type="reset">Reset</button>
            </form>
        </div>
    </div>
</body>
</html>
