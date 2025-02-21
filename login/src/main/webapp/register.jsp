<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Register</title>
    <link rel="stylesheet" type="text/css" href="registerStyles.css">
</head>
<body>
    <div class="hero">
        <div class="container">
            <h1>User Registration</h1>
            <form action="RegisterServlet" method="post">
                <label for="txtName">Enter Name:</label>
                <input type="text" id="txtName" name="txtName" required>
                
                <label for="txtEmail">Enter Email:</label>
                <input type="email" id="txtEmail" name="txtEmail" required>
                
                <label for="txtPwd">Enter Password:</label>
                <input type="password" id="txtPwd" name="txtPwd" required>
                
                <label for="txtConfirmPwd">Confirm Password:</label>
                <input type="password" id="txtConfirmPwd" name="txtConfirmPwd" required>
                
                <button type="submit">Register</button>
                <button type="reset">Reset</button>
            </form>
        </div>
    </div>
</body>
</html>
