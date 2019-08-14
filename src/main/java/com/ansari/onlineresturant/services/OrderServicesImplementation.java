/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ansari.onlineresturant.services;

import com.ansari.onlineresturant.dao.OrdersDao;
import com.ansari.onlineresturent.domain.Orders;
import javax.persistence.criteria.Order;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author ansar
 */
@Service
public class OrderServicesImplementation  implements OrdersServices{
    @Autowired
    private OrdersDao ordersDao;
    
    
    @Override
    public boolean saveOrders(Orders order) {
        return ordersDao.saveOrder(order);
        
    }
   
   
    
}
