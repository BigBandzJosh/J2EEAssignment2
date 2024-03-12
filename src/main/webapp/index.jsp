<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="com.example.j2eeassignment2.controller.ProductQueries" %>
<%@ page import="java.sql.*" %>


<!DOCTYPE html>
<html>
<head>
    <title>Order Management</title>
</head>
<body>
<h1>Products!</h1>

<table>
    <thead>
    <tr>
        <th>Product ID</th>
        <th>Product Name</th>
        <th>Product Price</th>

        <th>Product Category</th>

    </tr>
    </thead>
    <tbody>
    <%

        ProductQueries productQueries = new ProductQueries();
        ResultSet rs = productQueries.getProducts();

            while (rs.next()) {
    %>
    <tr>
        <td><%= rs.getInt("product_id") %></td>
        <td><%= rs.getString("product_name") %></td>
        <td><%= rs.getDouble("product_price") %></td>
        <td><%= rs.getString("product_category") %></td>

    </tr>
    <%
        }
        rs.close();

    %>

    </tbody>
</table>

<h2>Insert Data</h2>
<form method="post" action="InsertData.jsp">
    Name: <label>
    <input type="text" name="product_Name">
</label><br>
    Price: <label>
    <input type="text" name="product_Price">
</label><br>
    Category: <label>
    <input type="text" name="product_Category">
</label><br>
    <input type="submit" value="Submit">
</form>

<h1>Search Products</h1>
<form method="post" action="SearchProducts.jsp">
    <label>
        Product Category: <input type="text" name="category">
    </label>
    <input type="submit" value="Search">
</form>

<h1>Delete Product</h1>
<form method="post" action="DeleteProducts.jsp">
    <label>
        Product name: <input type="text" name="product_name">
    </label>
    <input type="submit" value="Delete">
</form>






</body>
</html>