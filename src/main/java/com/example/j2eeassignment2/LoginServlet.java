package com.example.j2eeassignment2;

import java.io.*;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.example.j2eeassignment2.dataBaseConn.DatabaseConnection;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

//for password hashing
import org.mindrot.jbcrypt.BCrypt;



@WebServlet(name = "loginServlet", value = "/login-servlet")
public class LoginServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {

    }

    public void destroy() {
    }

    public void init() {
    }

    public boolean loginUser(String email, String password) {
        String query = "SELECT * FROM customers WHERE email = ?";
        try {
            DatabaseConnection connection = new DatabaseConnection();
            PreparedStatement statement = connection.getConnection().prepareStatement(query);
            statement.setString(1, email);
            ResultSet resultSet = statement.executeQuery();
            if (resultSet.next()) {
                String hashedPassword = resultSet.getString("password");
                return BCrypt.checkpw(password, hashedPassword);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }


}
