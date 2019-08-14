/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ansari.onlineresturant.command;

import com.ansari.onlineresturent.domain.Product;

/**
 *
 * @author ansar
 */
public class UpdateProductCommand {
    private Product p;

    public Product getP() {
        return p;
    }

    public void setP(Product p) {
        this.p = p;
    }

    @Override
    public String toString() {
        return "UpdateProductCommand{" + "p=" + p + '}';
    }
}
