/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ansari.onlineresturant.services;

import com.ansari.onlineresturant.dao.CustomerDao;
import com.ansari.onlineresturent.domain.Customer;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author ansar
 */
@Service
public class CustomerServicesImplementation implements CustomerServices {

    @Autowired
    private CustomerDao customerDao;

    @Override
    public boolean saveCustomer(Customer customer) {
        return customerDao.SaveCustomer(customer);
    }

    @Override
    public Customer loginCustomer(Customer customer) {
        return customerDao.loginCustomer(customer);
    }

    @Override
    public Customer editCustomer(Customer customer) {

        return customerDao.editCustomer(customer);
    }

    @Override
    public boolean deleteAccount(Customer customer) {
        return customerDao.deleteAccount(customer);
    }

    @Override
    public boolean logOut(HttpSession session) {
        session.invalidate();
        return true;
    }

    @Override
    public List<Customer> getCustomers() {
        return customerDao.getCustomers();
    }

    @Override
    public Customer updateCustomerDetails(Customer customer) {

        return customerDao.updateCustomerDetails(customer);
    }

    @Override
    public Long countAllCustomer() {
        return customerDao.countAllProducts();
    }

    @Override
    public Customer findCustomerById(int id) {
        return customerDao.findCustomerById(id);
    }

}
