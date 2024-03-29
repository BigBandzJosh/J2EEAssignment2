package com.example.j2eeassignment2.controller;

import com.example.j2eeassignment2.dataBaseConn.DatabaseConnection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ProductQueries {

    public ResultSet getProducts() {
        String query = "SELECT * FROM products";
        try {
            DatabaseConnection connection = new DatabaseConnection();
            PreparedStatement statement = connection.getConnection().prepareStatement(query);
            return statement.executeQuery();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public ResultSet getSpecificProduct(int product_Id) {
        String query = "SELECT * FROM products WHERE product_Id = ?";
        try {
            DatabaseConnection connection = new DatabaseConnection();
            PreparedStatement statement = connection.getConnection().prepareStatement(query);
            statement.setInt(1, product_Id);
            return statement.executeQuery();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public ResultSet getSpecificProduct(String Category) {
        String query = "SELECT * FROM products WHERE product_Category = ?";
        try {
            DatabaseConnection connection = new DatabaseConnection();
            PreparedStatement statement = connection.getConnection().prepareStatement(query);
            statement.setString(1, Category);
            return statement.executeQuery();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public void insertProduct(String product_Name, String product_Price, String product_Category, String product_Quantity) {
        String query = "INSERT INTO products (product_Name, product_Price, product_Category, product_Quantity) VALUES (?, ?, ?,?)";
        try {
            DatabaseConnection connection = new DatabaseConnection();
            PreparedStatement statement = connection.getConnection().prepareStatement(query);
            statement.setString(1, product_Name);
            statement.setString(2, product_Price);
            statement.setString(3, product_Category);
            statement.setString(4, product_Quantity);
            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    ;

    public void deleteProduct(String product_Name) {
        String query = "DELETE FROM products WHERE product_Name = ?";
        try {
            DatabaseConnection connection = new DatabaseConnection();
            PreparedStatement statement = connection.getConnection().prepareStatement(query);
            statement.setString(1, product_Name);
            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();


        }
    }



    public void updateProduct(String product_Name, String product_Price, String product_Category, int product_Id) {
        String query = "UPDATE products SET product_Name = ?, product_Price = ?, product_Category = ? WHERE product_Id = ?";
        try {
            DatabaseConnection connection = new DatabaseConnection();
            PreparedStatement statement = connection.getConnection().prepareStatement(query);
            statement.setString(1, product_Name);
            statement.setString(2, product_Price);
            statement.setString(3, product_Category);
            statement.setInt(4, product_Id);
            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }


}
