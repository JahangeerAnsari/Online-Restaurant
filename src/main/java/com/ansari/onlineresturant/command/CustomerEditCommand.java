/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ansari.onlineresturant.command;

import com.ansari.onlineresturent.domain.Customer;

/**
 *
 * @author ansar
 */
public class CustomerEditCommand {
    private Customer c;

    public Customer getC() {
        return c;
    }

    

    public void setC(Customer c) {
        this.c = c;
    }
    @Override
    public String toString() {
        return "CustomerEditCommand" + "c=" + c + '}';
    }
    
}
