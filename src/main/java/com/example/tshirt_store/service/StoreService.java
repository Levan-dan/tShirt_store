package com.example.tshirt_store.service;

import com.example.tshirt_store.modle.Product;
import com.example.tshirt_store.modle.User;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class StoreService implements StoreServiceInterface {

    private String url = System.getenv("url");
    private String name = System.getenv("name");
    private String pass = System.getenv("pass");

    public Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(url, name, pass);

        } catch (Exception e) {
            e.getMessage();
        }
        return connection;
    }


    private String queryAdd = "INSERT INTO user (username, password, phoneNumber, email, role, address) VALUES (?, ?, ?, ?,? , ?)";

    @Override
    public void actionSignUp(User user) {
        try {
            Connection connection = getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(queryAdd);
            preparedStatement.setString(1, user.getUsername());
            preparedStatement.setString(2, user.getPassword());
            preparedStatement.setString(3, user.getPhoneNumber());
            preparedStatement.setString(4, user.getEmail());
            preparedStatement.setString(5, "customer");
            preparedStatement.setString(6, user.getPassword());
            preparedStatement.executeUpdate();
        } catch (Exception e) {
            e.getMessage();
        }


    }

    private String queryLogin = "select username, `password`, role from user where username = ? and password = ?;";

    @Override
    public User actionLogin(String name, String pass) {
        User user = null;
        try {
            Connection connection = getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(queryLogin);
            preparedStatement.setString(1, name);
            preparedStatement.setString(2, pass);
            ResultSet resultSet = preparedStatement.executeQuery();
            if (resultSet.next()) {
                String username = resultSet.getString("username");
                String password = resultSet.getString("password");
                String role = resultSet.getString("role");
                user = new User(username, password, role);
            }


        } catch (Exception e) {
            e.getMessage();
        }
        return user;
    }


    private String queryGetProduct = "select * from product";

    @Override
    public List<Product> showProduct() {
        List<Product> productList = new ArrayList<>();
        try {
            Connection connection = getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(queryGetProduct);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                int id = resultSet.getInt("idProduct");
                String nameProduct = resultSet.getString("nameProduct");
                String image = resultSet.getString("image");
                String description = resultSet.getString("description");
                double price = resultSet.getDouble("price");
                int stock = resultSet.getInt("stock");
                Product product = new Product(id, nameProduct, image, description, price, stock);
                productList.add(product);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return productList;
    }
}
