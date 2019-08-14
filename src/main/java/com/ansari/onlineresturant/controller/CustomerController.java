
package com.ansari.onlineresturant.controller;

import com.ansari.onlineresturant.command.CustomerEditCommand;
import com.ansari.onlineresturant.command.UpdateProductCommand;
import com.ansari.onlineresturant.services.CustomerServices;
import com.ansari.onlineresturant.services.OrdersServices;
import com.ansari.onlineresturant.services.ProductServices;
import com.ansari.onlineresturent.domain.Customer;
import com.ansari.onlineresturent.domain.Orders;
import com.ansari.onlineresturent.domain.Product;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class CustomerController {
    
    @Autowired
    private CustomerServices customerService;
    
    @Autowired
    private ProductServices productServices;

    @Autowired
    private OrdersServices ordersServices;
    
    @RequestMapping(value = {"/", "index"})
    public String indexPage(Model m) {
        m.addAttribute("SearchProductCommand", new Product());
        return "index";
    }

     //signIn page
    @RequestMapping(value = "/signin")
    public String SignIn(Model m) {
        m.addAttribute("CustomerRegCommand", new Customer());
        return "signin";
    }

    //signIn page
    @RequestMapping(value = "/login")
    public String logIn(Model m) {
        m.addAttribute("CustomerlogCommand", new Customer());
        return "login";
    }

    //my_account page
    @RequestMapping(value = "/my_account")
    public String my_account(Model m) {

        return "my_account";
    }

    //my_account page
    @RequestMapping(value = "/my_orders")
    public String my_orders(Model m) {

        return "my_orders";
    }

    //my_payment page
    @RequestMapping(value = "/my_payment")
    public String my_payment(Model m) {

        return "my_payment";
    }

    //delete accountPage page
    @RequestMapping(value = "/delete_account")
    public String deleteAccountPage(Model m) {
        return "delete_account";
    }
    //foods  accountPage page

    @RequestMapping(value = "/foods")
    public String foodsPage(Model m) {
        System.out.println("product list : " + productServices.getProduct());
        m.addAttribute("PRODUCTS", productServices.getProduct());

        return "foods";
    }

    //foods  accountPage page
    @RequestMapping(value = "/contact_us")
    public String contact_us(Model m) {
        return "contact_us";
    }

    //confirmDeleteAccount
    @RequestMapping(value = "/confirm/delete_account")
    public String confirmDeleteAccount(Model m, HttpSession session) {

        Customer customer = (Customer) session.getAttribute("customer");
        if (customer != null) {
            if (customerService.deleteAccount(customer)) {
                session.invalidate();
                return "redirect:/index?msg=Your account has been deleted Successfully!";
            } else {
                return "redirect:/login?failed to delete your account";
            }
        } else {
            return "redirect:/login?msg=First login to your account";
        }
    }

    // customer logout page 
    @RequestMapping(value = "/logout")
    public String logoutPage(Model m, HttpSession session) {
        if (customerService.logOut(session)) {
            return "redirect:/index?msg=you hava been logout Successfully!";
        } else {
            return "redirect:/index?msg=failed to logout your account";
        }
    }

    //register customer
    @RequestMapping(value = "/customer/register")
    public String registerCustomer(@ModelAttribute("CustomerRegCommand") Customer c) {
        System.out.println("form data: " + c);
        if (customerService.saveCustomer(c)) {
            return "redirect:/login";
        } else {
            return "redirect:/signin";
        }

    }

    //edit account page
    @RequestMapping(value = "/customer/edit_account")
    public String edtitAccountPage(Model m, HttpSession session) {
        CustomerEditCommand customerEditCommand = new CustomerEditCommand();
        Customer c = (Customer) session.getAttribute("customer");
        customerEditCommand.setC(c);
        System.out.println("customer in edit account method :" + c);
        m.addAttribute("CustomerEditCommand", customerEditCommand);
        return "edit_account";
    }

    //after edit account save it 
    @RequestMapping(value = "/cutomer/update_account")
    public String edit_account(@ModelAttribute("CustomerEditCommand") CustomerEditCommand cmd, HttpSession session) {
        System.out.println("form data: " + cmd.getC());
        Customer current_customer = (Customer) session.getAttribute("customer");
        Customer c = cmd.getC();
        c.setId(current_customer.getId());
        c.setImage("default.png");
        Customer customer = customerService.updateCustomerDetails(c);
        System.out.println("new customer : " + customer);
        if ( customer != null ) {
            addCustomerInSession(customer, session);
            return "redirect:/my_account?Account updated";
        } else {
            return "redirect:/customer/edit_account?Updation Failed";
        }
        
       
    }

    //login customer
    @RequestMapping(value = "/customer/login")
    public String logCustomer(@ModelAttribute("CustomerlogCommand") Customer c, HttpSession session) {
        System.out.println("form data: " + c);
        Customer customer = customerService.loginCustomer(c);
        System.out.println(customer);
        if (customer != null) {
            addCustomerInSession(customer, session);
            return "redirect:/index?msg=Login done";
        } else {
            return "redirect:/login?msg=invalid credentials";
        }

    }

    private void addCustomerInSession(Customer customer, HttpSession session) {
        session.setAttribute("customer", customer);
        Customer c = (Customer) session.getAttribute("customer");
        System.out.println("customer in session : " + c);
    }

    private void addProductInSessoin(Product product, HttpSession session) {

        session.setAttribute("product", product);

    }

    //add_product page
    @RequestMapping(value = "/add_product_page")
    public String addProduct(Model m) {
        m.addAttribute("ProductInsertCommand", new Product());

        return "admin/add_product";
    }

    //ADD Product 
    @RequestMapping(value = "/add_product")
    public String addProdut(@ModelAttribute("ProductInsertCommand") Product p) {
        System.out.println("form data: " + p);
        if (productServices.saveProduct(p)) {
            return "redirect:/add_product_page";
        } else {
            return "redirect:/index_admin";
        }

    }

    //Total product
    @RequestMapping(value = "/total_product")
    public String totalProducts() {
        return "admin/total_product";
    }

    //Total Orders
    @RequestMapping(value = "/total_orders")
    public String totalOrderss() {
        return "admin/total_orders";
    }

    //All Customer
    @RequestMapping(value = "/all_customer")
    public String allCustomer() {
        return "admin/all_customer";
    }

    //Total Admin Product List
    @RequestMapping(value = "/products/total_product")
    public String totalProductList(Model m) {
        System.out.println("product list : " + productServices.getProduct());
        m.addAttribute("PRODUCTS", productServices.getProduct());

        return "admin/total_product";
    }

    @RequestMapping(value = "/customers/all_customer")
    public String totalCustomerList(Model m) {
        System.out.println("customer list : " + customerService.getCustomers());
        m.addAttribute("CUSTOMERS", customerService.getCustomers());

        return "admin/all_customer";
    }

    //Add to cart page
    @RequestMapping(value = "/add_to_cart")
    public String add_to_cart(Model m) {

        return "add_to_cart";
    }

    //Add to cart page
    @RequestMapping(value = "/conform_order")
    public String conformOrder(Model m) {

        return "conform_order";
    }
    //confirm_order page

    @RequestMapping(value = "/order/confirm_order")
    public String confirm_order(Model m, HttpSession session) {
        Customer c = (Customer) session.getAttribute("customer");
        if (c == null) {
            return "redirect:/signin";
        }
        ///TODO: add product in order table 
        return "conform_order";
    }

    @RequestMapping(value = "/testing/insert-user-order")
    @ResponseBody
    public String doOrder(HttpSession session) {
        System.out.println("----------- ordering ...........");
        Customer c = new Customer();
        Product p = new Product();

        c.setId(1);
        p.setId(2);

        Orders o = new Orders();

        o.setC_id(c.getId());
        o.setP_id(p.getId());

        if (ordersServices.saveOrders(o)) {
            return "done";
        } else {
            return "failed";
        }

    }
    
    
   
    //Product Update details
    @RequestMapping(value = "/admin/update_product")
    public String updateProductDetails(Model m, HttpSession session, @RequestParam("product_id") Integer productId){
       UpdateProductCommand updateProductCommand = new UpdateProductCommand();
        Product p = productServices.findProductByProductId(productId);
        if(p == null) 
            return "redirect:/products/total_product?msg = Product Not Found!";
        
        updateProductCommand.setP(p);
        System.out.println(" product in  update method :" + p);
        m.addAttribute("UpdateProductCommand", updateProductCommand);
        
        return  "admin/update_product_details";
        
    }
    //after edit Product  updated in database
    @RequestMapping(value = "/admin/update_product_details")
    public  String updateProductDetails(@ModelAttribute("UpdateProductCommand") UpdateProductCommand cmd, HttpSession session,@RequestParam("product_id") Integer productId){
        System.out.println("updatable product :" + cmd.getP());
        Product p = cmd.getP();
        System.out.println("product Id : " + productId);
        p.setId(productId);
        
        Product product = productServices.updateProductDetail(p);
        System.out.println("new product:" + p);
        if(product != null){
            addProductInSessoin(product, session);
            return "redirect:/products/total_product?msg = Product Updated Successfully!";
        }
        else{
            return "redirect:/products/admin_index?msg = Product Updation Failed!";
        }
    }
    // DELETE THE PRODUCT ITEM FROM THE DATABASE
    @RequestMapping(value = "/admin/delete_product")
     public String deleteProductItems(Model m, HttpSession session, @RequestParam("product_id") Integer productId){
         System.out.println("productId : " + productId);
         Product product = productServices.findProductByProductId(productId);
         System.out.println("product to be deleted : " + product);
        if(product != null){
           if(productServices.deleteProduct(product)){
           return "redirect:/products/total_product?msg= product  has been deleted Successfully!";

           } else{
           return "redirect:/products/total_product?failed to delete the product";
           } 
           
        }
        return null;
     }
     
     ////Searching products 
     @RequestMapping(value = "/product/search_product")
     private String searchProduct(@ModelAttribute("SearchProductCommand") Product p , Model m){
         String searchText = p.getP_name();
         System.out.println("---- searching for product name : " + searchText);
         if(searchText == null)
             return "redirect:/index?msg = please enter a text to search for products";
         
         List<Product> products = productServices.searchProducts(searchText);
         if(products == null)
             return "redirect:/index?msg = No Products Found!";
         m.addAttribute("PRODUCTS",products);

        return "foods";
     }
     
}