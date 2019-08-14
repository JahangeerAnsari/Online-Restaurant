/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ansari.onlineresturant.services;

import com.ansari.onlineresturent.domain.Orders;

/**
 *
 * @author ansar
 */
public interface OrdersServices {
    public boolean saveOrders(Orders order);
    
}
