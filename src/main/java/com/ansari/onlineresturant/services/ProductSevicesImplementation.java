/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ansari.onlineresturant.services;

import com.ansari.onlineresturant.dao.ProductDao;
import com.ansari.onlineresturent.domain.Product;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author ansar
 */
@Service
public class ProductSevicesImplementation implements ProductServices{
    @Autowired
    private ProductDao productDao;
    @Override
    public boolean saveProduct(Product product) {
       return productDao.saveProduct(product);
      
    }

    @Override
    public List<Product> getProduct() {
            return productDao.getProducts();
    }

    @Override
    public Product updateProductDetail(Product product) {
      return productDao.updateProductDetails(product);
    }

    @Override
    public Product findProductByProductId(int productId) {
        return productDao.findProductByProductId(productId);
    }

    @Override
    public boolean deleteProduct(Product product) {
   return productDao.deleteProduct(product);
    }

    @Override
    public Long countAllProducts() {
        return productDao.countAllProducts();
    }

    @Override
    public List<Product> searchProducts(String txt) {
        System.out.println("------ seach for : " + txt);
        return productDao.searchProducts(txt);
    }

    @Override
    public Product findProduct(int i) {
        return productDao.findProductByProductId(i);
    }
    
}
