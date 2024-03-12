<%@ page import="com.example.j2eeassignment2.controller.ProductQueries" %>


<%
    String name = request.getParameter("product_name");
    ProductQueries productQueries1 = new ProductQueries();
    productQueries1.deleteProduct(name);

    response.sendRedirect("success.jsp");
%>