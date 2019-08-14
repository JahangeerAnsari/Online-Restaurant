/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ansari.onlineresturant.dao;

import com.ansari.onlineresturant.hibconfig.HibernateUtils;
import com.ansari.onlineresturent.domain.Product;
import java.util.Iterator;
import java.util.List;
import org.hibernate.Hibernate;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

/**
 *
 * @author ansar
 */
@Repository
public class ProductDaoImplementation implements ProductDao {

    @Override
    public boolean saveProduct(Product product) {
        boolean result = false;
        System.out.println("product : " + product);
        if (product != null) {
            Session session = HibernateUtils.ProductSession();
            Transaction tr = session.beginTransaction();
            System.out.println("product------" + product);
            session.save(product);
            tr.commit();
            session.close();
            result = true;

        }
        return result;

    }

    @Override
    public List<Product> getProducts() {
        List<Product> products = null;
        Session session = HibernateUtils.ProductSession();
        Transaction tr = session.beginTransaction();
        Query qry = session.createQuery("from product p");
        products = qry.list();
        tr.commit();
        session.close();
        if (products.size() < 0) {
            return null;
        }
        return products;

    }

    @Override
    public Product updateProductDetails(Product product) {
        if (product != null) {
            Session session = HibernateUtils.ProductSession();
            Transaction tr = session.beginTransaction();
            System.out.println("----product--" + product);
            session.update(product);

            tr.commit();
            Product new_product = session.find(Product.class, product.getId());
            session.close();
            return new_product;

        }
        return null;
    }

    @Override
    public Product findProductByProductId(int productId) {
        if (productId != 0) {
            Session session = HibernateUtils.ProductSession();
            Transaction tr = session.beginTransaction();
            System.out.println("----product id --" + productId);
            Product product = session.find(Product.class, productId);

            tr.commit();
            session.close();
            return product;
        }
        return null;
    }

    @Override
    public boolean deleteProduct(Product product) {
        if (product != null) {
            Session session = HibernateUtils.ProductSession();
            Transaction tr = session.beginTransaction();
            session.delete(product);
            tr.commit();;
            session.close();
            return true;

        }
        return false;
    }

    @Override
    public Long countAllProducts() {
        Session session = HibernateUtils.ProductSession();
        Transaction tr = session.beginTransaction();
        Query query = session.createQuery("select count(distinct p.id) from product p");
        Long count = (Long) query.getSingleResult();
        tr.commit();
        session.close();
        return count;
    }

    @Override
    public List<Product> searchProducts(String txt) {
        System.out.println("-------- search text " + txt);
        if (txt != null) {
            Session session = HibernateUtils.ProductSession();
            Transaction tr = session.beginTransaction();
//            Query query = session.createQuery("select * from product p Where p_name like '%:name%")
//                    .setParameter("name", txt);
            Query qry = session.createQuery("From product as p where p.p_name like ?")
                    .setString(0, "%"+txt+"%");

            List<Product> products = qry.getResultList();
            tr.commit();
            session.close();
            return products;
        }
        return null;
    }

}
