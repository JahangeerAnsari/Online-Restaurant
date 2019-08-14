package com.ansari.onlineresturant.controller;

import com.ansari.onlineresturant.command.AdminEditCommand;
import com.ansari.onlineresturant.services.AdminServices;
import com.ansari.onlineresturant.services.CustomerServices;
import com.ansari.onlineresturant.services.ProductServices;
import com.ansari.onlineresturent.domain.Admin;
import com.ansari.onlineresturent.domain.Product;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {

    @Autowired
    private AdminServices adminService;
        
     @Autowired
    private CustomerServices customerService;
   
    @Autowired
    private ProductServices productServices;
    
    ///Admin registration 
    @RequestMapping(value = "/admin_reg_page")
    public String adminRegpage(Model m) {
        m.addAttribute("AdminRegCommand", new Admin());
        return "admin/admin_reg";
    }

    //register Admin
    @RequestMapping(value = "/admin_reg")
    public String registerAdmin(@ModelAttribute("AdminRegCommand") Admin a) {
        System.out.println("form data: " + a);
        if (adminService.saveAdmin(a)) {
            return "redirect:/admin_dashboard";
        } else {
            return "redirect:/admin_reg_page";
        }

    }

    ///Admin registration 
    @RequestMapping(value = "/admin_login_page")
    public String adminLoginPage(Model m) {
        m.addAttribute("AdminLogCommand", new Admin());

        return "admin/admin_login_page";
    }

    @RequestMapping(value = {"/admin_dashboard", "/index_admin"})
    public String adminDashboard(Model m){ 
        System.out.println("-------- admin dashboard");
            Long total_products = productServices.countAllProducts();
            System.out.println("total products : " + total_products);
            
            //FOR CUSTOMER ALL
             Long all_customers = customerService.countAllCustomer();
            System.out.println("all_customers : " + all_customers);
            m.addAttribute("ALL_CUSTOMERS" , all_customers);
            
        m.addAttribute("ALL_CUSTOMERS" , all_customers);
 
        m.addAttribute("TOTOAL_PRODUCTS" , total_products);
        return "admin/index_admin";
    }
    

    //// confirm login for admin
    @RequestMapping(value = "/admin_login")
    public String adminLogin(@ModelAttribute("AdminLogCommand") Admin a, HttpSession session) {
        if (a.getEmail().trim() == null || a.getPassword().trim() == null) {
            return "redirect: /admin_login_page?msg=field missing";
        }
        Admin admin = adminService.loginAdmin(a.getEmail(), a.getPassword());
        System.out.println("admin obj : " + admin);
        if (admin != null) {
            addAdminInSession(admin, session);
            return "redirect: admin_dashboard";
        }
        return "redirect:  admin_login_page?msg=invalid credentials";
    }

    private void addAdminInSession(Admin admin, HttpSession session) {
        session.setAttribute("admin", admin);
        Admin a = (Admin) session.getAttribute("admin");
        System.out.println("admin in session : " + a);
    }

    //Admin Profile
    @RequestMapping(value = "/admin/admin_profile")
    public String adminProfile(HttpSession session) {
        Admin a = (Admin) session.getAttribute("admin");
        System.out.println("admin in profile : " + a);
        return "admin/admin_profile";
    }

    // Admin  logout page 
    @RequestMapping(value = "/admin_logout")
    public String adminLogOutPage(Model m, HttpSession session) {
        if (adminService.logOut(session)) {
            return "redirect:/admin_login_page?msg=you hava been logout Successfully!";
        } else {
            return "redirect:/index?msg=failed to logout your account";
        }
    }

    //Admin Edit  account page
    @RequestMapping(value = "/admin/admin_edit_account")
    public String adminEdtitAccountPage(Model m, HttpSession session) {
 
        AdminEditCommand adminEditCommand = new AdminEditCommand();
        Admin a = (Admin) session.getAttribute("admin");
        adminEditCommand.setA(a);
        System.out.println("admin in edit account method :" + a);
        m.addAttribute("AdminEditCommand", adminEditCommand);
        return "admin/admin_edit_account";

    }

    //after edit admin account Update  Admiit 
    @RequestMapping(value = "/admin/update_admin__account")
    public String adminUpdateAccountPage(@ModelAttribute("AdminEditCommand") AdminEditCommand cmd, HttpSession session) {
        System.out.println("form data: " + cmd.getA());
        
        Admin current_admin =  (Admin) session.getAttribute("admin");
        Admin a = cmd.getA();
        a.setId(current_admin.getId());
        a.setImage("default.png");
        Admin admin = adminService.updateAdminDetails(a);
        System.out.println("new admin : " + admin);
        if(admin != null ) {
            addAdminInSession(admin, session);
            return "redirect:/admin/admin_profile?Account Updated";
        } else {
           return  "redirect:/admin/admin_edit_account?Upload failed";
        }

    
    }
    
    
}
