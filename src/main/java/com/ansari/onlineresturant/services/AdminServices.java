/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ansari.onlineresturant.services;

import com.ansari.onlineresturent.domain.Admin;
import javax.servlet.http.HttpSession;

/**
 *
 * @author ansar
 */
public interface AdminServices {
   public boolean saveAdmin(Admin admin);
   public Admin  loginAdmin(String email, String password);
   public boolean logOut(HttpSession session);
   public Admin editAdimnProfile(Admin admin);
   public Admin updateAdminDetails(Admin admin);
}
