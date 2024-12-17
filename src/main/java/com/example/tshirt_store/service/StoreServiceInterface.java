package com.example.tshirt_store.service;

import com.example.tshirt_store.modle.User;

public interface StoreServiceInterface {
    void actionSignUp(User user);
    User actionLogin(String name, String pass);

}
