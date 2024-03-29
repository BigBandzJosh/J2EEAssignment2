<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="com.example.j2eeassignment2.controller.ProductQueries" %>
<%@ page import="java.sql.*" %>


<!DOCTYPE html>
<html>
<head>
    <title>Order Management</title>
</head>
<body>

<%
String emailHeader = (String) request.getSession().getAttribute("email");
%> <h1>Welcome <%= emailHeader %></h1>


<h1>Products!</h1>

<table>
    <thead>
    <tr>
        <th>Product ID</th>
        <th>Product Name</th>
        <th>Product Price</th>
        <th>Product Category</th>
        <th>Product Quantity</th>
        <th>Actions</th>
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
        <td>$<%= rs.getDouble("product_price") %></td>
        <td> <%= rs.getString("product_category")%></td>
        <td><%= rs.getString("product_quantity")%></td>
        <td>
            <form method="post" action="AddToCart.jsp">
                <input type="hidden" name="productId" value="<%= rs.getInt("product_id") %>">
                <input type="submit" value="Add to Cart">

            </form>
        </td>
    </tr>
    <%
        }
        rs.close();
    %>
    </tbody>
</table>

<!-- Display Cart -->
<h2>Cart</h2>
<table>
    <thead>
    <tr>
        <th>Product ID</th>
        <th>Product Name</th>
        <th>Price</th>
        <th>Quantity</th>
        <th>Category</th>
    </tr>
    </thead>
    <tbody>
    <!-- Display cart items here -->

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
    Quantity: <label>
    <input type="text" name="product_Quantity">
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


<h1>Register</h1>
<form method="post" action="Register.jsp">
    <label>
        First Name: <input type="text" name="first_name">
    </label><br>
    <label>
        Last Name: <input type="text" name="last_name">
    </label><br>

    <label>
        Email: <input type="text" name="email">
    </label><br>

    <label>
        Phone Number: <input type="text" name="phone">
    </label><br>

    <label>
        Address: <input type="text" name="address">
    </label><br>

    <label>
        Password: <input type="password" name="password">
    </label><br>
    <input type="submit" value="Register">

</form>

<h1>Login</h1>

<form method="post" action="Login.jsp">
    <label>
        Email: <input type="text" name="email">
    </label><br>
    <label>
        Password: <input type="password" name="password">
    </label><br>
    <input type="submit" value="Login">
</form>







</body>
</html>