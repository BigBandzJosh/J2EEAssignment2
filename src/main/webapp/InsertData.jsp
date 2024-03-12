<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="com.example.j2eeassignment2.controller.Queries" %>
<%@ page import="java.util.ArrayList" %>

<!DOCTYPE html>
<html>
<head>
    <title>insertData</title>
</head>
<body>
    <%
        String product_Name = request.getParameter("product_Name");
        String product_Price = request.getParameter("product_Price");
        String product_Category = request.getParameter("product_Category");

        Queries queries = new Queries();
        queries.insertData(product_Name, product_Price, product_Category);
    %>
    <h1>Data inserted successfully</h1>
</body>
</html>
