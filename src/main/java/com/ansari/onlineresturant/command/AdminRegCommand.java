/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ansari.onlineresturant.command;

import com.ansari.onlineresturent.domain.Admin;
import com.ansari.onlineresturent.domain.Admin;

/**
 *
 * @author ansar
 */
public class AdminRegCommand {
    private Admin a;

    public Admin getA() {
        return a;
    }

    public void setA(Admin a) {
        this.a = a;
    }

    @Override
    public String toString() {
        return "AdminRegCommand{" + "a=" + a + '}';
    }
   
    
}
