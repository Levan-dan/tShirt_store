package com.example.tshirt_store.service;

import com.example.tshirt_store.modle.User;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

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
}
