package com.example.tshirt_store.controller;

import javax.servlet.RequestDispatcher;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "storeServlet" , urlPatterns = "/store")
public class StoreServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response){
        String action = request.getParameter("action");
        if (action == null){
            action = "";
        }
        switch (action){

        }
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response){
        String action = request.getParameter("action");
        if(action == null){
            action = "";
        }
        switch (action){
            case "signUp":
                showSignUp(request, response);
                break;
            case "login":
                showLogin(request, response);
                break;
        }
    }

    public void showSignUp(HttpServletRequest request, HttpServletResponse response){
        try{
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/register.jsp");
            requestDispatcher.forward(request, response);
        }catch (Exception e){
            e.getMessage();
        }
    }

    public void showLogin(HttpServletRequest request, HttpServletResponse response){
        try{
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/login.jsp");
            requestDispatcher.forward(request, response);
        }catch (Exception e){
            e.getMessage();
        }
    }

}
