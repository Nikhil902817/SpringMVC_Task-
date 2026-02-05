<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>

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
    }

    .container {
        background: #fff;
        width: 450px;
        padding: 35px;
        border-radius: 12px;
        box-shadow: 0 15px 30px rgba(0,0,0,0.2);
    }

    h1 {
        text-align: center;
        margin-bottom: 25px;
        color: #444;
    }

    .nav-buttons {
        display: flex;
        justify-content: space-between;
        margin-bottom: 25px;
    }

    .nav-buttons a {
        text-decoration: none;
        width: 32%;
    }

    button {
        width: 100%;
        padding: 10px;
        border: none;
        border-radius: 6px;
        background: #667eea;
        color: white;
        font-size: 15px;
        cursor: pointer;
        transition: 0.3s;
    }

    button:hover {
        background: #5a67d8;
        transform: translateY(-2px);
    }

    .search-form {
        display: flex;
        gap: 10px;
        margin-bottom: 25px;
    }

    .search-form input {
        flex: 1;
        padding: 10px;
        border-radius: 6px;
        border: 1px solid #ccc;
        outline: none;
    }

    .search-form input:focus {
        border-color: #667eea;
    }

    .search-btn {
        background: #48bb78;
    }

    .search-btn:hover {
        background: #38a169;
    }

    .register-form label {
        display: block;
        margin: 10px 0 5px;
        font-weight: 500;
        color: #555;
    }

    .register-form input {
        width: 100%;
        padding: 10px;
        border-radius: 6px;
        border: 1px solid #ccc;
        font-size: 14px;
    }

    .register-form input:focus {
        border-color: #667eea;
        outline: none;
    }

    .submit-btn {
        margin-top: 20px;
        background: #667eea;
        font-size: 16px;
    }
</style>

</head>
<body>

<div class="container">

    <h1>Register Here</h1>

    <!-- Navigation Buttons -->
    <div class="nav-buttons">
        <a href="home"><button>Home</button></a>
        <a href="register"><button>Register</button></a>
        <a href="show"><button>Display & Edit</button></a>
    </div>

    <!-- Search -->
    <form action="search" method="get" class="search-form">
        <input type="text" name="q" placeholder="Search on Google..." required />
        <button type="submit" class="search-btn">Search</button>
    </form>

    <!-- Register Form -->
    <form action="save" method="post" class="register-form">
        <label>Name</label>
        <input type="text" name="name" required>

        <label>Skill</label>
        <input type="text" name="skill" required>

        <label>Salary</label>
        <input type="number" name="sal" required>

        <button type="submit" class="submit-btn">Submit</button>
    </form>

</div>

</body>
</html>
