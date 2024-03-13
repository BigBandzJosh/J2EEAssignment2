<%--
  Created by IntelliJ IDEA.
  User: bigbandzjosh
  Date: 2024-03-12
  Time: 7:52 p.m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.example.j2eeassignment2.RegisterServlet" %>
<html>
<head>
    <title>Register</title>
</head>
<body>
<h1>Register</h1>

<%
    String first_name = request.getParameter("first_name");
    String last_name = request.getParameter("last_name");
    String email = request.getParameter("email");
    String phone = request.getParameter("phone");
    String address = request.getParameter("address");
    String password = request.getParameter("password");

    if (first_name != null && last_name != null && email != null && phone != null && address != null && password != null) {
        RegisterServlet registerServlet = new RegisterServlet();
        registerServlet.registerUser(first_name, last_name, email, phone, address, password);
    }


%>

</body>
</html>
