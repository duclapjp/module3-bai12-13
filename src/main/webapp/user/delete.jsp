<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 11/10/2021
  Time: 11:31 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Delete User</title>
</head>
<body>
<center>
    <h1>Delete User</h1>
    <h2>
        <a href="/users?action=users">List All Users</a>
    </h2>
</center>
<div align="center">
    <form action="" method="post">
        <table border="1px">
            <caption>
                <h2>
                    Edit User
                </h2>
            </caption>
            <tr>
                <th>User Name:</th>
                <td>
                    <c:out value='${user.name}'/>
                </td>
            </tr>
            <tr>
                <th>User Email:</th>
                <td>
                    <c:out value='${user.email}'/>
                </td>
            </tr>
            <tr>
                <th>Country:</th>
                <td>
                    <c:out value='${user.country}'/>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="Delete"/>
                </td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>
