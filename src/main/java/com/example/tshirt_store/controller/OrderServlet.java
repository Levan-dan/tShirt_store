package com.example.tshirt_store.controller;

import com.example.tshirt_store.modle.CartProduct;
import com.example.tshirt_store.modle.Order;
import com.example.tshirt_store.service.StoreService;
import com.example.tshirt_store.service.StoreServiceInterface;
import org.json.JSONArray;
import org.json.JSONObject;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/order")
public class OrderServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
//        switch (action){
//            case "order":
//
//                break;
//        }

//        String[] selectedProducts = request.getParameterValues("check");
//
//        if (selectedProducts != null) {
//            // Lấy ID user từ session hoặc request
//            int userId = (int) request.getSession().getAttribute("userId");
//
//            // Thêm order và lấy idOrder
//            StoreServiceInterface service = new StoreService();
//            int idOrder = service.addOrder(userId);
//
//            // Thêm chi tiết sản phẩm
//            for (String idProductStr : selectedProducts) {
//                int idProduct = Integer.parseInt(idProductStr);
//                int quantity = Integer.parseInt(request.getParameter("quantity_" + idProduct));
//
//                service.addOrderDetail(idOrder, idProduct, quantity);
//            }
//        }
//
//        // Chuyển hướng về trang xác nhận hoặc thông báo thành công
//        response.sendRedirect("view/cart.jsp");
//    }
    }
}