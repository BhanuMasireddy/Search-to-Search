<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Login</title>
    <style>
        @charset "UTF-8";
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
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
