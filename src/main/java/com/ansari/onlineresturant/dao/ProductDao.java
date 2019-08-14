/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ansari.onlineresturant.dao;

import com.ansari.onlineresturent.domain.Product;
import java.util.List;

/**
 *
 * @author ansar
 */
public interface ProductDao {

    public boolean saveProduct(Product product);

    public List<Product> getProducts();

    public Product updateProductDetails(Product product);

    public Product findProductByProductId(int productId);

    public boolean deleteProduct(Product product);

    public List<Product> searchProducts(String txt);

    public Long countAllProducts();

}
