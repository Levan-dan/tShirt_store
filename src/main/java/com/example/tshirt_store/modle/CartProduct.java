package com.example.tshirt_store.modle;

public class CartProduct {
    private int idProduct;
    private String nameProduct;
    private String image;
    private double price;
    private int quantity;

    public CartProduct(int idProduct, int quantity) {
        this.quantity = quantity;
        this.idProduct = idProduct;
    }

    public CartProduct(int idProduct, String nameProduct, String image, double price, int quantity) {
        this.idProduct = idProduct;
        this.nameProduct = nameProduct;
        this.image = image;
        this.price = price;
        this.quantity = quantity;
    }

    public CartProduct(String productName, int quantity, double price, String url) {
        this.nameProduct = productName;
        this.quantity = quantity;
        this.image = url;
        this.price = price;

    }

    @Override
    public String toString() {
        return "CartProduct{" +
                "idProduct=" + idProduct +
                ", nameProduct='" + nameProduct + '\'' +
                ", image='" + image + '\'' +
                ", price=" + price +
                ", quantity=" + quantity +
                '}';
    }

    public int getIdProduct() {
        return idProduct;
    }

    public void setIdProduct(int idProduct) {
        this.idProduct = idProduct;
    }

    public String getNameProduct() {
        return nameProduct;
    }

    public void setNameProduct(String nameProduct) {
        this.nameProduct = nameProduct;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
}
