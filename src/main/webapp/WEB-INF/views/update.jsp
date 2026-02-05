<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Employee</title>

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
        width: 420px;
        padding: 35px;
        border-radius: 12px;
        box-shadow: 0 15px 30px rgba(0,0,0,0.2);
    }

    h2 {
        text-align: center;
        margin-bottom: 25px;
        color: #444;
    }

    form label {
        display: block;
        margin-bottom: 6px;
        font-weight: 500;
        color: #555;
    }

    form input[type="text"],
    form input[type="number"] {
        width: 100%;
        padding: 10px;
        margin-bottom: 15px;
        border-radius: 6px;
        border: 1px solid #ccc;
        font-size: 14px;
        outline: none;
    }

    form input:focus {
        border-color: #667eea;
    }

    .btn-update {
        width: 100%;
        padding: 12px;
        border: none;
        border-radius: 6px;
        background: #667eea;
        color: white;
        font-size: 16px;
        cursor: pointer;
        transition: 0.3s;
    }

    .btn-update:hover {
        background: #5a67d8;
        transform: translateY(-2px);
    }
</style>

</head>
<body>

<div class="container">

    <h2>Update Employee</h2>

    <form action="update" method="post">
        <!-- Hidden field for id -->
        <input type="hidden" name="id" value="${employee.id}">

        <label>Name</label>
        <input type="text" name="name" value="${employee.name}" required>

        <label>Salary</label>
        <input type="number" name="sal" value="${employee.sal}" required>

        <label>Skill</label>
        <input type="text" name="skill" value="${employee.skill}" required>

        <button type="submit" class="btn-update">Update</button>
    </form>

</div>

</body>
</html>
