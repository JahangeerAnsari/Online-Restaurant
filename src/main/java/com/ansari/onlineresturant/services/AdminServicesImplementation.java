/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ansari.onlineresturant.services;

import com.ansari.onlineresturant.dao.AdminDao;
import com.ansari.onlineresturent.domain.Admin;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author ansar
 */
@Service
public class AdminServicesImplementation implements AdminServices{
   
    
    @Autowired
    private AdminDao adminDao;
    @Override
    public boolean saveAdmin(Admin admin) {
        return adminDao.saveAdmin(admin);
    }

    @Override
    public Admin loginAdmin(String email, String password) {
        return adminDao.loginAdmin(email,password);
    }

    @Override
    public boolean logOut(HttpSession session) {
      session.invalidate();;
      return true;
    }

    @Override
    public Admin editAdimnProfile(Admin admin) {
      return  adminDao.editAdimnProfile(admin);
    }

    @Override
    public Admin updateAdminDetails(Admin admin) {
       return adminDao.updateAdminDetails(admin);
    }

    
    
}
