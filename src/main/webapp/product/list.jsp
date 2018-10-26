<%@ page import="com.codegymvn.model.Product" %>
<%@ page import="java.util.ArrayList" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Product List</title>
</head>
<body>
<h1>Products</h1>
<p>
    <a href="/products?action=create">Create new customer</a>
</p>
<table border="1">
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Price</th>
        <th>Description</th>
        <th>Manufacturing</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>
    <%
        ArrayList<Product> products = new ArrayList<>();
        products = (ArrayList<Product>) request.getAttribute("products");

        for (Product product : products) {
    %>
    <tr>
        <td><a href="/products?action=view&id=<%=product.getId()%>"><%=product.getId()%></a></td>
        <td><%=product.getName()%></td>
        <td><%=product.getPrice()%>
        </td>
        <td><%=product.getDescription()%>
        </td>
        <td><%=product.getDescription()%>
        </td>
        <td><a href="/products?action=edit&id=<%=product.getId()%>">edit</a></td>
        <td><a href="/products?action=delete&id=<%=product.getId()%>">delete</a></td>
    </tr>
    <%}%>
    <a href="/products?action=search">Search</a>
</table>
</body>
</html>