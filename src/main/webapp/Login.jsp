<%--
  Created by IntelliJ IDEA.
  User: bigbandzjosh
  Date: 2024-03-12
  Time: 7:52 p.m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.example.j2eeassignment2.LoginServlet" %>
<%@ page import="java.util.*" %>
<html>
<head>
    <title>login</title>
</head>
<body>
<h1>Login</h1>

<%
    String email = request.getParameter("email");
    String password = request.getParameter("password");
    if (email != null && password != null) {
        LoginServlet loginServlet = new LoginServlet();
        if (loginServlet.loginUser(email, password)) {

            response.sendRedirect("index.jsp");
        } else {
            response.sendRedirect("error.jsp");
        }
    }



%>

</body>
</html>