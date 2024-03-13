package com.example.j2eeassignment2;

import com.example.j2eeassignment2.dataBaseConn.DatabaseConnection;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.SQLException;

//for password hashing
import org.mindrot.jbcrypt.BCrypt;


@WebServlet(name = "registerServlet", value = "/register-servlet")
public class RegisterServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, IOException {
String first_name = request.getParameter("first_name");
        String last_name = request.getParameter("last_name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        String password = request.getParameter("password");
        registerUser(first_name, last_name, email, phone, address, password);
        response.sendRedirect("index.jsp");
    }

    public void destroy() {
    }

    public void init() {

    }

    public void registerUser(String first_name, String last_name, String email, String phone, String address, String password) {
        String query = "INSERT INTO customers (first_name, last_name, email, phone, address, password) VALUES (?, ?, ?, ?, ?, ?)";
        try {
            String hashedPassword = BCrypt.hashpw(password, BCrypt.gensalt());
            DatabaseConnection connection = new DatabaseConnection();
            PreparedStatement statement = connection.getConnection().prepareStatement(query);
            statement.setString(1, first_name);
            statement.setString(2, last_name);
            statement.setString(3, email);
            statement.setString(4, phone);
            statement.setString(5, address);
            statement.setString(6, hashedPassword);
            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}

