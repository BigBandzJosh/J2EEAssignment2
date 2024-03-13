package com.example.j2eeassignment2.dataBaseConn;


import java.sql.*;


public class DatabaseConnection {
    private final Connection connection;

    public DatabaseConnection() {
        connection = getConnection();
    }

    public static Connection getConnection() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/orderManagement";
            String username = "root";
            String password = "";
            return DriverManager.getConnection(url, username, password);

        } catch (ClassNotFoundException e) {
            System.out.println("JDBC Driver not found.");
            e.printStackTrace();
            return null;
        } catch (SQLException e) {
            System.out.println("SQL Exception occurred while connecting to the database.");
            e.printStackTrace();
            return null;
        }
    }


    public void closeConnection() {
        try {
            connection.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }








}
