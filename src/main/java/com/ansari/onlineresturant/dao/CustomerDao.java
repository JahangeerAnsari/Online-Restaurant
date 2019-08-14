/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ansari.onlineresturant.dao;

import com.ansari.onlineresturent.domain.Customer;
import com.ansari.onlineresturent.domain.Product;
import java.util.List;

/**
 *
 * @author ansar
 */
public interface CustomerDao {
    
     public boolean SaveCustomer(Customer customer);  
      public Customer loginCustomer(Customer customer);

    public Customer editCustomer(Customer customer);
    public boolean deleteAccount(Customer customer);
    public List <Customer> getCustomers();
    public Customer updateCustomerDetails(Customer customer);
    public Long countAllProducts();
    public Customer findCustomerById(int id);

}