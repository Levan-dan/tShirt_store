package com.example.tshirt_store.controller;

import com.example.tshirt_store.modle.User;
import com.example.tshirt_store.service.StoreService;
import com.example.tshirt_store.service.StoreServiceInterface;

import javax.servlet.RequestDispatcher;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.UnsupportedEncodingException;

@WebServlet(name = "storeServlet", urlPatterns = "/store")
public class StoreServlet extends HttpServlet {
    StoreServiceInterface storeServiceInterface = new StoreService();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "signUp":
                signUp(request, response);
                break;
            case "login":
                login(request, response);
                break;
        }
    }


    public void signUp(HttpServletRequest request, HttpServletResponse response) {
        try {
            String username = request.getParameter("username");
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            String phoneNumber = request.getParameter("phoneNumber");
            String address = request.getParameter("address");

            String regexUsername = "^[a-zA-Z0-9]{5,}$";
            String regexEmail = "^[\\w-\\.]+@([\\w-]+\\.)+[\\w-]{2,4}$";
            String regexPhoneNumber = "^[0-9]{10,15}$";

            boolean isValid = true;

            // Kiểm tra từng trường và đặt lỗi nếu cần
            if (!username.matches(regexUsername)) {
                request.setAttribute("usernameError", "Tên người dùng không hợp lệ (ít nhất 5 ký tự, chỉ chữ và số).");
                isValid = false;
            }

            if (!email.matches(regexEmail)) {
                request.setAttribute("emailError", "Email không hợp lệ.");
                isValid = false;
            }
            if (!phoneNumber.matches(regexPhoneNumber)) {
                request.setAttribute("phoneNumberError", "Số điện thoại không hợp lệ (10-15 chữ số).");
                isValid = false;
            }

            if (!isValid) {
                // Quay lại trang đăng ký nếu có lỗi
                request.getRequestDispatcher("view/register.jsp").forward(request, response);
                return;
            }else {
                User user = new User(username, email, password, phoneNumber, address);
                storeServiceInterface.actionSignUp(user);
                RequestDispatcher dispatcher = request.getRequestDispatcher("view/login.jsp");
                dispatcher.forward(request,response);
//                response.sendRedirect("view/login.jsp");
            }


        } catch (Exception e) {
            e.getMessage();
        }

    }

    protected void login(HttpServletRequest request, HttpServletResponse response) {
        try {
            // Lấy dữ liệu từ form
            String username = request.getParameter("username");
            String password = request.getParameter("password");

            // Kiểm tra thông tin đăng nhập với database
            User userDangNhap = storeServiceInterface.actionLogin(username, password);

            if (userDangNhap != null) { // Nếu tìm thấy người dùng
                if (userDangNhap.getPassword().equals(password)) {
                    if (userDangNhap.getRole().equals("admin")) {
                        // Chuyển đến trang quản trị
                        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/adminHome.jsp");
                        requestDispatcher.forward(request, response);
                    } else {
                        // Chuyển đến trang người dùng
                        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/userHome.jsp");
                        requestDispatcher.forward(request, response);
                    }
                } else {
                    // Mật khẩu không đúng
                    request.setAttribute("loginError", "Sai mật khẩu!");
                    RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/login.jsp");
                    requestDispatcher.forward(request, response);
                }
            } else {
                // Không tìm thấy username
                request.setAttribute("loginError", "Thông tin đăng nhập không tồn tại!");
                RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/login.jsp");
                requestDispatcher.forward(request, response);
            }
        } catch (Exception e) {
            e.printStackTrace();
            // Nếu có lỗi, quay lại trang đăng nhập với thông báo lỗi chung
            request.setAttribute("loginError", "Có lỗi xảy ra, vui lòng thử lại!");
            try {
                RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/login.jsp");
                requestDispatcher.forward(request, response);
            } catch (Exception ex) {
                ex.printStackTrace();
            }
        }
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");

        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "signUp":
                showSignUp(request, response);
                break;
            case "login":
                showLogin(request, response);
                break;
        }
    }

    public void showSignUp(HttpServletRequest request, HttpServletResponse response) {
        try {
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/register.jsp");
            requestDispatcher.forward(request, response);
        } catch (Exception e) {
            e.getMessage();
        }
    }

    public void showLogin(HttpServletRequest request, HttpServletResponse response) {
        try {
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/login.jsp");
            requestDispatcher.forward(request, response);
        } catch (Exception e) {
            e.getMessage();
        }
    }

}
