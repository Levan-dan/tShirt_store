package com.example.tshirt_store.modle;

public class Order {
    private int idOrder;
    private int idUser;
    private String orderDate;
    private String statusOrder;


    public Order(int idOrder, int idUser, String orderDate, String statusOrder) {
        this.idOrder = idOrder;
        this.idUser = idUser;
        this.orderDate = orderDate;
        this.statusOrder = statusOrder;
    }

    public int getIdOrder() {
        return idOrder;
    }

    public void setIdOrder(int idOrder) {
        this.idOrder = idOrder;
    }

    public int getIdUser() {
        return idUser;
    }

    public void setIdUser(int idUser) {
        this.idUser = idUser;
    }

    public String getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(String orderDate) {
        this.orderDate = orderDate;
    }

    public String getStatusOrder() {
        return statusOrder;
    }

    public void setStatusOrder(String statusOrder) {
        this.statusOrder = statusOrder;
    }
}
