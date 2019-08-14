/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ansari.onlineresturant.dao;

import com.ansari.onlineresturant.hibconfig.HibernateUtils;
import com.ansari.onlineresturent.domain.Admin;
import java.util.List;
import javax.persistence.NoResultException;
import javax.persistence.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

/**
 *
 * @author ansar
 */
@Repository
public class AdminDaoImplementation implements AdminDao {

    @Override
    public boolean saveAdmin(Admin admin) {
        boolean result = false;
        if (admin != null) {
            Session session = HibernateUtils.AdminSession();
            Transaction tr = session.beginTransaction();
            System.out.println("----admin---" + admin);
            session.save(admin);
            tr.commit();
            session.close();
            result = true;

        }
        return result;

    }

    @Override
    public Admin loginAdmin(String email, String password) {
        System.out.println(" email : " + email);
        System.out.println(" password : " + password);
        if (email != null && password != null) {
            Session session = HibernateUtils.AdminSession();
            Transaction tr = session.beginTransaction(); 
             Query q = session.createQuery("from admin where email=:e AND password=:p");
            q.setParameter("e", email);
            q.setParameter("p", password);
            try {
            Admin admin = (Admin) q.getSingleResult();
            tr.commit();
            session.close();
            System.out.println("admin login : " + admin);
            return admin;
            } catch (NoResultException e) {
                 
            }
        }
        return null;
    }

    @Override
    public Admin editAdimnProfile(Admin admin) {
       return null;
    }

    @Override
    public Admin updateAdminDetails(Admin admin) {
       if(admin != null){
         Session session = HibernateUtils.AdminSession();
         Transaction tr = session.beginTransaction();
           System.out.println("---admin----" + admin);
           session.update(admin);
           tr.commit();
           //for updation admin we find the old admin id
           
           Admin new_admin = session.find(Admin.class, admin.getId());
           session.close();
           return new_admin;
          
        }
       return null;
    }

   

    

}
