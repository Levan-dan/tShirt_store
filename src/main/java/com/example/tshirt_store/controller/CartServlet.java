package com.example.tshirt_store.controller;

import com.example.tshirt_store.modle.CartProduct;
import com.example.tshirt_store.modle.Product;
import com.example.tshirt_store.service.StoreService;
import com.example.tshirt_store.service.StoreServiceInterface;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/cart")
public class CartServlet extends HttpServlet {

    StoreServiceInterface storeServiceInterface = new StoreService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");

        String action = request.getParameter("action");
        System.out.println(action);
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "cart":
                showCart(request, response);
                break;
            default:
                showHomeUser(request, response);
                break;

        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        int id = Integer.parseInt(request.getParameter("idProduct"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));

        List<CartProduct> cartProducts = (List<CartProduct>) request.getSession().getAttribute("cart");

        if(cartProducts == null){
            cartProducts = new ArrayList<>();
        }

        String action = request.getParameter("action");
        if (action == null) {
            action = "";}
        switch (action) {
            case "addToCart":
                addToCart(request,response,id,quantity,cartProducts);
                break;
        }
    }

    public void showCart(HttpServletRequest request, HttpServletResponse response){
        try{
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/cart.jsp");
            requestDispatcher.forward(request, response);
        } catch (ServletException e) {
            throw new RuntimeException(e);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    private void showHomeUser(HttpServletRequest request, HttpServletResponse response) {
        try{
            List<Product> listProduct = storeServiceInterface.showProduct();
            request.setAttribute("showListProduc", listProduct);
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/userHome.jsp");
            requestDispatcher.forward(request, response);
        }catch (Exception e){
            e.getMessage();
        }

    }

    public void addToCart(HttpServletRequest request , HttpServletResponse response, int id , int quantity,List<CartProduct> cartProducts){
        try{

            Product product = storeServiceInterface.findByIDProduct(id);
            System.out.println("add to cart" + product);
            boolean exits = false;

            for(CartProduct item : cartProducts){
                if(item.getIdProduct() == id) {
                    item.setQuantity(item.getQuantity() + quantity);
                    exits = true;
                    break;
                }
            }

            if(!exits){
                CartProduct cartProduct = new CartProduct(id, product.getNameProduct(), product.getImage(), product.getPrice(), quantity);
                cartProducts.add(cartProduct);
            }
            System.out.println(cartProducts);
            request.getSession().setAttribute("cart", cartProducts);

            response.sendRedirect("cart");


        } catch (IOException e) {
            throw new RuntimeException(e);
        }


    }

}
