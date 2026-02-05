<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome Page</title>

<style>
    body {
        margin: 0;
        padding: 0;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background: linear-gradient(135deg, #667eea, #764ba2);
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
        color: #fff;
    }

    .container {
        background: #ffffff;
        color: #333;
        padding: 40px;
        width: 420px;
        border-radius: 12px;
        text-align: center;
        box-shadow: 0 15px 30px rgba(0,0,0,0.2);
    }

    h1 {
        margin-bottom: 25px;
        color: #444;
    }

    .btn-group {
        margin-bottom: 25px;
    }

    .btn-group a {
        text-decoration: none;
    }

    button {
        width: 100%;
        padding: 12px;
        margin: 8px 0;
        border: none;
        border-radius: 6px;
        background: #667eea;
        color: #fff;
        font-size: 16px;
        cursor: pointer;
        transition: 0.3s;
    }

    button:hover {
        background: #5a67d8;
        transform: translateY(-2px);
    }

    form {
        margin-top: 20px;
        display: flex;
        gap: 10px;
    }

    input[type="text"] {
        flex: 1;
        padding: 10px;
        border-radius: 6px;
        border: 1px solid #ccc;
        font-size: 14px;
        outline: none;
    }

    input[type="text"]:focus {
        border-color: #667eea;
    }

    .search-btn {
        padding: 10px 18px;
        background: #48bb78;
    }

    .search-btn:hover {
        background: #38a169;
    }
</style>

</head>

<body>

<div class="container">
    <h1>Welcome to Home Page</h1>

    <div class="btn-group">
        <a href="home"><button>Home</button></a>
        <a href="register"><button>Register</button></a>
        <a href="show"><button>Display & Edit</button></a>
    </div>

    <form action="search" method="get">
        <input type="text" name="q" placeholder="Search on Google..." required />
        <button type="submit" class="search-btn">Search</button>
    </form>
</div>

</body>
</html>
