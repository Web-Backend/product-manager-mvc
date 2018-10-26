package com.codegymvn.service;

import com.codegymvn.model.Product;

import java.util.ArrayList;
import java.util.List;

public interface ProductService {
    List<Product> findAll();

    Product findById(int id);

//    Product findByName(ArrayList list,String name);

    void save(Product product);

    void update(int id, Product product);

    void remove(int id);

}
