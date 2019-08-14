/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ansari.onlineresturant.dao;

import com.ansari.onlineresturent.domain.Orders;
import java.util.List;
import javax.persistence.criteria.Order;

/**
 *
 * @author ansar
 */
public interface OrdersDao {
    public boolean saveOrder(Orders order);
    public List<Orders> getOrders();
    
}
