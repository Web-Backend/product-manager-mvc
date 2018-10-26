<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Search product</title>
</head>
<body>
    <c:if test='${requestScope["product"] != null}'>
<table>
    <tr>
        <td>Name: </td>
        <td>${requestScope["product"].getName()}</td>
    </tr>
    <tr>
        <td>Price: </td>
        <td>${requestScope["product"].getPrice()}</td>
    </tr>
    <tr>
        <td>Description: </td>
        <td>${requestScope["product"].getDescription()}</td>
    </tr>
    <tr>
        <td>Manufacturing: </td>
        <td>${requestScope["product"].getManufacturing()}</td>
    </tr>
</table>
    </c:if>
<form method="post">
    <fieldset>
        <legend>Search everything you want</legend>
        <table>
            <tr>
                <td>
                    <input type="text" name="search" placeholder="Enter keyword">
                </td>
            </tr>
            <tr>
                <td><input type="submit" value="Search"></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
