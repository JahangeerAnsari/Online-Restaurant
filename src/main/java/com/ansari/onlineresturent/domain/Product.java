/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ansari.onlineresturent.domain;

import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 *
 * @author ansar
 */
@Entity(name = "product")
@Table(name = "product")
public class Product {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)

    @Column(name = "id")
    private int id;

    @Column(name = "p_name")
    private String p_name;

    @Column(name = "p_category")
    private String p_category;

    @Column(name = "p_price")
    private String p_price;

    @Column(name = "p_rating")
    private String p_rating;
    @Column(name = "p_image")
    private String p_image;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getP_name() {
        return p_name;
    }

    public void setP_name(String p_name) {
        this.p_name = p_name;
    }

    public String getP_category() {
        return p_category;
    }

    public void setP_category(String p_category) {
        this.p_category = p_category;
    }

    public String getP_price() {
        return p_price;
    }

    public void setP_price(String p_price) {
        this.p_price = p_price;
    }

    public String getP_rating() {
        return p_rating;
    }

    public void setP_rating(String p_rating) {
        this.p_rating = p_rating;
    }

    public String getP_image() {
        return p_image;
    }

    public void setP_image(String p_image) {
        this.p_image = p_image;
    }

    @Override
    public String toString() {
        return "Product{" + "id=" + id + ", p_name=" + p_name + ", p_category=" + p_category + ", p_price=" + p_price + ", p_rating=" + p_rating + ", p_image=" + p_image + '}';
    }

}
