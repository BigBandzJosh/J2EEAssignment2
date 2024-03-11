<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="com.example.j2eeassignment2.DatabaseConnection" %>
<%@ page import="java.sql.*" %>
<%@ page import="javax.xml.transform.Result" %>
<%@ page import="javax.xml.crypto.Data" %>

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
    </tr>
    </thead>
    <tbody>
    <%
        DatabaseConnection db = new DatabaseConnection();
        ResultSet rs = db.getResultSet();
        while (rs.next()) {
    %>
    <tr>

        <td><%= rs.getInt("product_id") %></td>
        <td><%= rs.getString("product_name") %></td>
        <td><%= rs.getDouble("product_price") %></td>
    </tr>
    <%
        }
        rs.close();
        db.closeConnection();
    %>

    </tbody>
</table>

</body>
</html>