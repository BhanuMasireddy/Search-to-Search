<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Register</title>
    <style>
        @charset "UTF-8";
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .hero {
            background: #ffffff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            width: 100%;
            max-width: 400px;
        }
        h1 {
            color: #333333;
            text-align: center;
            margin-bottom: 20px;
        }
        form {
            display: flex;
            flex-direction: column;
        }
        label {
            margin-bottom: 5px;
            color: #555555;
        }
        input[type="text"],
        input[type="email"],
        input[type="password"] {
            padding: 10px;
            border: 1px solid #cccccc;
            border-radius: 4px;
            margin-bottom: 15px;
            font-size: 16px;
        }
        button {
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 4px;
            padding: 10px;
            font-size: 16px;
            cursor: pointer;
            margin-top: 10px;
            transition: background-color 0.3s ease;
        }
        button:hover {
            background-color: #0056b3;
        }
        button[type="reset"] {
            background-color: #6c757d;
        }
        button[type="reset"]:hover {
            background-color: #5a6268;
        }
    </style>
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
