package com.example.tshirt_store.service;

import com.example.tshirt_store.modle.Product;
import com.example.tshirt_store.modle.User;

import java.util.List;

public interface StoreServiceInterface {
    void actionSignUp(User user);
    User actionLogin(String name, String pass);

    List<Product> showProduct();

}
