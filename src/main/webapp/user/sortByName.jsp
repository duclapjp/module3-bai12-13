<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 11/11/2021
  Time: 12:20 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<center>
    <h1>User List By Name</h1>
    <h2 ><a href="/users">Back to Home User List</a></h2>
    <form action="/users" method="get">
        <input type="text" name="country" placeholder="Nhập vào tên nước muốn tìm">
        <input name = "action" value="search"  hidden >
        <input type="submit" value="Tìm kiếm">
    </form>
</center>
<div align="center">
    <table border="1">
        <caption><h2>List of Users</h2></caption>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Country</th>
        </tr>
        <c:forEach var="user" items="${users}">
            <tr>
                <td><c:out value="${user.id}"/></td>
                <td><c:out value="${user.name}"/></td>
                <td><c:out value="${user.email}"/></td>
                <td><c:out value="${user.country}"/></td>
                <td>
                    <a href="/users?action=edit&id=${user.id}">Edit</a>
                    <a href="/users?action=delete&id=${user.id}">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
