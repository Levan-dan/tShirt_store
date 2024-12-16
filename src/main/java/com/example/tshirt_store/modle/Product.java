package com.example.tshirt_store.modle;

public class Product {
    private int idProduct;
    private String nameProduct;
    private String image;
    private String description;
    private double price;
    private int stock;

    public Product(int idProduct, String nameProduct, String image, String description, double price, int stock) {
        this.idProduct = idProduct;
        this.nameProduct = nameProduct;
        this.image = image;
        this.description = description;
        this.price = price;
        this.stock = stock;
    }

    public Product(String nameProduct, String image, String description, double price, int stock) {
        this.nameProduct = nameProduct;
        this.image = image;
        this.description = description;
        this.price = price;
        this.stock = stock;
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

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }
}
