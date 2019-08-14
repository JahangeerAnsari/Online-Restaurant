/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ansari.onlineresturant.dao;

import com.ansari.onlineresturent.domain.Admin;
import java.util.List;

/**
 *
 * @author ansar
 */
public interface AdminDao {
    public boolean  saveAdmin(Admin admin);
    public Admin  loginAdmin(String email, String password);
    public Admin editAdimnProfile(Admin admin);
    public Admin updateAdminDetails(Admin admin);
    
    
}
