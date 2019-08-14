/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ansari.onlineresturant.services;

import com.ansari.onlineresturent.domain.Product;
import java.util.List;

/**
 *
 * @author ansar
 */
public interface ProductServices {

    public boolean saveProduct(Product product);

    public List<Product> getProduct();

    public Product findProductByProductId(int productId);

    public Product updateProductDetail(Product product);

    public boolean deleteProduct(Product product);

    public Long countAllProducts();

    public List<Product> searchProducts(String txt);

    public Product findProduct(int i);
}
