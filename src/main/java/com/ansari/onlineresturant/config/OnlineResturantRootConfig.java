/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ansari.onlineresturant.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

/**
 *
 * @author ansar
 */
@Configuration
@ComponentScan(basePackages = {"com.ansari.onlineresturant.dao","com.ansari.onlineresturant.services"})
public class OnlineResturantRootConfig {
    
    
}
