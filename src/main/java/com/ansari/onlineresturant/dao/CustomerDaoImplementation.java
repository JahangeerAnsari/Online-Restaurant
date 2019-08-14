/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ansari.onlineresturant.dao;

import com.ansari.onlineresturant.hibconfig.HibernateUtils;
import com.ansari.onlineresturent.domain.Customer;
import com.ansari.onlineresturent.domain.Product;
import java.util.List;
import javax.persistence.NoResultException;
import javax.persistence.Query;
import javax.servlet.http.HttpSession;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.stereotype.Repository;

/**
 *
 * @author ansar
 */
@Repository
public class CustomerDaoImplementation implements CustomerDao {

    @Override
    public boolean SaveCustomer(Customer customer) {
        boolean result = false;
        if (customer != null) {
            Session session = HibernateUtils.CustomerSession();

            Transaction tr = session.beginTransaction();
            System.out.println("--- customer -- " + customer);
            session.save(customer);
            tr.commit();
            session.close();
            result = true;
        }
        return result;

    }

    @Override
    public Customer loginCustomer(Customer customer) {
        Customer c = null;
        if (customer != null) {
            Session session = HibernateUtils.CustomerSession();
            Transaction tr = session.beginTransaction();
            Query query = session.createQuery("from customer where email = :email AND password = :pass");
            query.setParameter("email", customer.getEmail());
            query.setParameter("pass", customer.getPassword());

            try {
                c = (Customer) query.getSingleResult();

                tr.commit();
                session.close();

            } catch (NoResultException e) {
                c = null;
            }
        }
        return c;

    }

    @Override
    public Customer editCustomer(Customer customer) {

        return null;
    }

    @Override
    public boolean deleteAccount(Customer customer) {
        if (customer != null) {
            Session session = HibernateUtils.CustomerSession();
            Transaction tr = session.beginTransaction();
            session.delete(customer);
            tr.commit();
            session.close();
            return true;

        }
        return false;

    }

    @Override
    public List<Customer> getCustomers() {

        List<Customer> customers = null;
        Session session = HibernateUtils.CustomerSession();
        Transaction tr = session.beginTransaction();
        org.hibernate.query.Query qry = session.createQuery("from customer c");
        customers = qry.list();
        tr.commit();
        session.close();
        if (customers.size() < 0) {
            return null;
        }
        return customers;

    }

    @Override
    public Customer updateCustomerDetails(Customer customer) {
        System.out.println("customer detail : " + customer);
        if (customer != null) {
            Session session = HibernateUtils.CustomerSession();

            Transaction tr = session.beginTransaction();
            System.out.println("--- customer -- " + customer);
            session.update(customer);
            tr.commit();
            Customer new_customer = session.find(Customer.class, customer.getId());
            session.close();
            return new_customer;
        }
        return null;

    }

    @Override
    public Long countAllProducts() {
        Session session = HibernateUtils.CustomerSession();
        Transaction tr = session.beginTransaction();
        Query query = session.createQuery("select count(distinct c.id )from customer c");
        Long count = (Long) query.getSingleResult();
        tr.commit();
        session.close();
        return count;
    }

    @Override
    public Customer findCustomerById(int id) {
        Session session = HibernateUtils.CustomerSession();
        Transaction tr = session.beginTransaction();
        Customer c = session.find(Customer.class, id);
        tr.commit();
        session.close();
        return c;
    }

}
