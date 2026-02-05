<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee List</title>

<style>
    body {
        margin: 0;
        padding: 0;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background: linear-gradient(135deg, #667eea, #764ba2);
        min-height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .container {
        background: #fff;
        width: 90%;
        max-width: 1000px;
        padding: 30px;
        border-radius: 12px;
        box-shadow: 0 15px 30px rgba(0,0,0,0.2);
    }

    h2 {
        text-align: center;
        margin-bottom: 20px;
        color: #444;
    }

    .nav-buttons {
        display: flex;
        justify-content: space-between;
        gap: 10px;
        margin-bottom: 20px;
    }

    .nav-buttons a {
        text-decoration: none;
        flex: 1;
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

    table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 10px;
    }

    th, td {
        padding: 12px;
        text-align: center;
    }

    th {
        background: #667eea;
        color: white;
    }

    tr:nth-child(even) {
        background: #f7f7f7;
    }

    tr:hover {
        background: #edf2ff;
    }

    th a {
        color: white;
        text-decoration: none;
    }

    th a:hover {
        text-decoration: underline;
    }

    .action-link {
        color: #667eea;
        text-decoration: none;
        font-weight: 500;
    }

    .action-link:hover {
        text-decoration: underline;
    }

    .delete-link {
        color: #e53e3e;
    }

    .pagination {
        text-align: center;
        margin-top: 20px;
    }

    .pagination a {
        padding: 8px 12px;
        margin: 0 4px;
        border-radius: 4px;
        background: #667eea;
        color: white;
        text-decoration: none;
        font-size: 14px;
    }

    .pagination a:hover {
        background: #5a67d8;
    }

    .pagination .active {
        padding: 8px 12px;
        margin: 0 4px;
        background: #444;
        color: white;
        border-radius: 4px;
        font-weight: bold;
    }
</style>

</head>
<body>

<div class="container">

    <!-- Navigation -->
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

    <h2>Employee List</h2>

    <!-- Table -->
    <table>
        <tr>
            <th>
                <a href="show?sortDir=${sortDir == 'asc' ? 'desc' : 'asc'}">
                    ID
                </a>
            </th>
            <th>Name</th>
            <th>Skill</th>
            <th>Salary</th>
            <th>Update</th>
            <th>Delete</th>
        </tr>

        <c:forEach items="${Employee1}" var="e">
            <tr>
                <td>${e.id}</td>
                <td>${e.name}</td>
                <td>${e.skill}</td>
                <td>${e.sal}</td>
                <td>
                    <a class="action-link" href="update?id=${e.id}">Update</a>
                </td>
                <td>
                    <a class="action-link delete-link"
                       href="delete/${e.id}"
                       onclick="return confirm('Are you sure you want to delete this employee?')">
                        Delete
                    </a>
                </td>
            </tr>
        </c:forEach>
    </table>

    <!-- Pagination -->
    <div class="pagination">
        <c:if test="${totalPages > 1}">
            <c:forEach begin="0" end="${totalPages-1}" var="i">
                <c:choose>
                    <c:when test="${i == currentPage}">
                        <span class="active">${i+1}</span>
                    </c:when>
                    <c:otherwise>
                        <a href="show?page=${i}">${i+1}</a>
                    </c:otherwise>
                </c:choose>
            </c:forEach>
        </c:if>
    </div>

</div>

</body>
</html>
