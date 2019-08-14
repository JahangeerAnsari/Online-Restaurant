/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ansari.onlineresturant.services;

import com.ansari.onlineresturent.domain.Customer;
import java.util.List;
import javax.servlet.http.HttpSession;

/**
 *
 * @author ansar
 */
public interface CustomerServices {

    public boolean saveCustomer(Customer customer);

    public Customer loginCustomer(Customer customer);

    public Customer editCustomer(Customer customer);

    public boolean deleteAccount(Customer customer);

    public boolean logOut(HttpSession session);

    public List<Customer> getCustomers();

    public Customer updateCustomerDetails(Customer customer);

    public Long countAllCustomer();

    public Customer findCustomerById(int id);

}
