/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ansari.onlineresturant.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.scheduling.annotation.EnableAsync;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

/**
 *
 * @author ansar
 */
 @Configuration
 @ComponentScan(basePackages = {"com.ansari"})
 @EnableWebMvc

public class OnlineResturantWebConfig extends WebMvcConfigurerAdapter{
     @Override
     public void addResourceHandlers( ResourceHandlerRegistry registry){
      registry.addResourceHandler("/static/**").addResourceLocations("/static/");
     }
     @Bean
     public ViewResolver viewResolver(){
     
         InternalResourceViewResolver vr = new InternalResourceViewResolver();
         vr.setViewClass(JstlView.class);
         vr.setPrefix("/WEB-INF/view/");
         vr.setSuffix(".jsp");
         return vr;
     }
}
