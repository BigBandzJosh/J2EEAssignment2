<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="com.example.j2eeassignment2.controller.ProductQueries" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.util.*" %>

<!DOCTYPE html>
<html>
<head>
    <title>Product List</title>
</head>

<body>
    <h1>Product List</h1>
    <table border="1">
        <tr>
            <th>Product ID</th>
            <th>Product Name</th>
            <th>Product Price</th>
            <th>Product Category</th>
        </tr>
        <%
            String category = request.getParameter("category");
            ProductQueries productQueries = new ProductQueries();
            ResultSet resultSet = productQueries.getSpecificProduct(category);

            while (resultSet.next()) {
        %>
        <tr>
            <td><%= resultSet.getInt("product_ID") %></td>
            <td><%= resultSet.getString("product_Name") %></td>
            <td><%= resultSet.getDouble("product_Price") %></td>
            <td><%= resultSet.getString("product_Category") %></td>
        </tr>
        <%
            }
        %>

    </table>



</body>
</html>
