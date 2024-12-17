package com.example.tshirt_store.service;

import com.example.tshirt_store.modle.User;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class StoreService implements StoreServiceInterface {

    private String url = "jdbc:mysql://localhost:3306/shirt_store";
    private String name = "root";
    private String pass = "882005";

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
    public void ActionSignUp(User user) {
        try{
            Connection connection = getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(queryAdd);
            preparedStatement.setString(1, user.getUsername());
            preparedStatement.setString(2, user.getPassword());
            preparedStatement.setString(3, user.getPhoneNumber());
            preparedStatement.setString(4, user.getEmail());
            preparedStatement.setString(5, "customer");
            preparedStatement.setString(6, user.getPassword());
            preparedStatement.executeUpdate();
        }catch (Exception e){
            e.getMessage();
        }


    }
}
