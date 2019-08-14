/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ansari.onlineresturant.dao;

import com.ansari.onlineresturant.hibconfig.HibernateUtils;
import com.ansari.onlineresturent.domain.Orders;
import java.util.List;
import javax.persistence.criteria.Order;
import org.hibernate.Hibernate;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

/**
 *
 * @author ansar
 */
@Repository
public class OrdersDaoImplementation implements OrdersDao {

    @Override
    public boolean saveOrder(Orders order) {
          boolean result = false;
        if(order != null) {
            Session session = HibernateUtils.OrdersSession();
            Transaction tr =  session.beginTransaction();
            System.out.println("---orders---" + order);
            session.save(order);
            tr.commit();
            session.close();
            result = true;
           
        }
        return result;
    }

    @Override
    public List<Orders> getOrders() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
