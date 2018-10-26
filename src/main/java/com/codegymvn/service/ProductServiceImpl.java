package com.codegymvn.service;

import com.codegymvn.model.Product;

import java.util.*;

public class ProductServiceImpl implements ProductService {
    private static Map<Integer, Product> products;

    static {
        products = new HashMap<>();
        products.put(1, new Product(1, "plastic shit", 3.14, "The plastic shit", "Dat 09"));
        products.put(2, new Product(2, "iron shit", 9.14, "The iron shit", "Son nh"));
        products.put(3, new Product(3, "aluminum shit", 8.14, "The aluminum shit", "Hau mon"));
        products.put(4, new Product(4, "stainless shit", 7.14, "The stainless shit", "Tien sat thu"));
        products.put(5, new Product(5, "steel shit", 6.14, "The steel shit", "Tuan anh mat thon"));
    }

    @Override
    public List<Product> findAll() {
        return new ArrayList<>(products.values());
    }

    @Override
    public Product findById(int id) {
        return products.get(id);
    }

    @Override
    public void save(Product product) {
        products.put(product.getId(), product);
    }

    @Override
    public void update(int id, Product product) {
        products.put(id, product);
    }

    @Override
    public void remove(int id) {
        products.remove(id);
    }



}
