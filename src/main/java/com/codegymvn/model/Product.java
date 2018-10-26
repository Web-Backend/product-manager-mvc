package com.codegymvn.model;

public class Product {
    private int id;
    private String name;
    private Double price;
    private String description;
    private String manufacturing;

    public Product() {
    }

    public Product(int id, String name, Double price, String description, String manufacturing) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.description = description;
        this.manufacturing = manufacturing;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getManufacturing() {
        return manufacturing;
    }

    public void setManufacturing(String manufacturing) {
        this.manufacturing = manufacturing;
    }
}
