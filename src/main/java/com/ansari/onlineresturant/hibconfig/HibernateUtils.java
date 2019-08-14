/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ansari.onlineresturant.hibconfig;

import com.ansari.onlineresturent.domain.Admin;
import com.ansari.onlineresturent.domain.Customer;
import com.ansari.onlineresturent.domain.Orders;
import com.ansari.onlineresturent.domain.Product;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

/**
 *
 * @author ansar
 */
public class HibernateUtils {
    public static Session CustomerSession(){
        Configuration con = new Configuration().configure("hibernate.cfg.xml")
       .addAnnotatedClass(Customer.class);
        SessionFactory sf = con.buildSessionFactory();
        Session session = sf.openSession();
        return session;
    }
    public static Session AdminSession(){
        Configuration con = new Configuration().configure("hibernate.cfg.xml")
       .addAnnotatedClass(Admin.class);
        SessionFactory sf = con.buildSessionFactory();
        Session session = sf.openSession();
        return session;
    }
    
    public static Session ProductSession(){
        Configuration con = new Configuration().configure("hibernate.cfg.xml")
       .addAnnotatedClass(Product.class);
        SessionFactory sf = con.buildSessionFactory();
        Session session = sf.openSession();
        return session;
    }
    
     public static Session OrdersSession(){
        Configuration con = new Configuration().configure("hibernate.cfg.xml")
       .addAnnotatedClass(Orders.class);
        SessionFactory sf = con.buildSessionFactory();
        Session session = sf.openSession();
        return session;
    }
    
}
