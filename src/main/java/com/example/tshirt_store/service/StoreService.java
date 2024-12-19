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


    private String queryGetProduct = "SELECT * FROM shirt_store.product order by idProduct desc; ";

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


    private String queryAddProduct = "INSERT INTO product (nameProduct, image, description, price, stock) VALUES (?, ?, ?, ?, ?)";
    @Override
    public void addProduct(Product product) {
        try{
            Connection connection = getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(queryAddProduct);
            preparedStatement.setString(1, product.getNameProduct());
            preparedStatement.setString(2, product.getImage());
            preparedStatement.setString(3, product.getDescription());
            preparedStatement.setDouble(4, product.getPrice());
            preparedStatement.setInt(5, product.getStock());
            preparedStatement.executeUpdate();
        }catch (Exception e){
            e.getMessage();
        }

    }


    private String queryFindByID = "SELECT * FROM shirt_store.product where idProduct = ?";

    @Override
    public Product findByIDProduct(int idProduct) {
        Product product = null;
        try{
            Connection connection = getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(queryFindByID);
            preparedStatement.setInt(1, idProduct);
            ResultSet resultSet = preparedStatement.executeQuery();
            if(resultSet.next()){
                int id = resultSet.getInt("idProduct");
                String nameProduct = resultSet.getString("nameProduct");
                String image = resultSet.getString("image");
                String description = resultSet.getString("description");
                double price = resultSet.getDouble("price");
                int stock = resultSet.getInt("stock");
                product = new Product(id, nameProduct, image, description, price, stock);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return product;
    }


    private String queryUpdate = "update product set nameProduct = ?, image = ?, `description` = ?, price = ?, stock = ? where idProduct = ?";
    @Override
    public void editProduct(Product product) {
        try{
            Connection connection = getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(queryUpdate);
            preparedStatement.setString(1, product.getNameProduct());
            preparedStatement.setString(2, product.getImage());
            preparedStatement.setString(3, product.getDescription());
            preparedStatement.setDouble(4, product.getPrice());
            preparedStatement.setInt(5, product.getStock());
            preparedStatement.setInt(6, product.getIdProduct());
            preparedStatement.executeUpdate();

        }catch (Exception e){
            e.getMessage();
        }


    }


    private String queryDelete = "delete from product where idProduct = ?";
    @Override
    public void deleteProduct(int idProduct) {
        try{
            Connection connection = getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(queryDelete);
            preparedStatement.setInt(1, idProduct);
            preparedStatement.executeUpdate();
        }catch (Exception e){
            e.getMessage();
        }


    }


    private String queryFindByName= "select * from product where nameProduct like ?" ;
    @Override
    public List<Product> findByProductName(String nameProduct) {
       List<Product>  product = new ArrayList<>();
        try{
            Connection connection = getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(queryFindByName);
            preparedStatement.setString(1, "%" + nameProduct + "%");
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                int id = resultSet.getInt("idProduct");
                String nameProduct1 = resultSet.getString("nameProduct");
                String image = resultSet.getString("image");
                String description = resultSet.getString("description");
                double price = resultSet.getDouble("price");
                int stock = resultSet.getInt("stock");
                Product productObject = new Product(id, nameProduct1, image, description, price, stock);
                product.add(productObject);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return product;
    }
}
