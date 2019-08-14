<%-- 
    Document   : index_admin
    Created on : Aug 5, 2019, 12:24:00 PM
    Author     : ansar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="include_admin/css-plugins.jsp" %>
        <%@include file="include_admin/js-plugins.jsp" %>


    </head>
    <body>
        <%
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
            response.setHeader("Pragma", "no-cache");
            response.setHeader("Expires", "0");
        %>

        <%@include file="include_admin/admin_header.jsp" %>
        <div id="content" style="margin-top: 60px">


            <div class="container">
                <div class="col-md-12" > 
                    <ul class="breadcrumb">
                        <li>
                            <a href="index">ADMIN</a>
                        </li>
                        <li>
                            <a href="my_account"> MY ACCOUNT</a>
                        </li>
                        <li>
                            UPDATE PRODUCT
                        </li>

                    </ul>
                </div>
                <!-- my sidebar for my account-->

                <div class="col-md-9 bg-info">
                   
                    <h1>Update Your Product Details:-</h1>
                    <s:url var="product_updated" value="/admin/update_product_details">
                        <s:param name="product_id" value="${UpdateProductCommand.p.id}"/>
                    </s:url>
                    <f:form action="${product_updated}" modelAttribute="UpdateProductCommand" >
                        <div class="form-group">
                            <label>Product Name</label>
                            <f:input type="text" path="p.p_name" class="form-control" required="required"/>
                        </div>
                        <div class="form-group">
                            <label>Product Categories:</label>
                            
                             <select name="p.p_category" class="form-control"> 
                                    <option> Select A Option</option>
                                    <option>Veg</option>
                                    <option>Non-veg</option>
                                    <option>Desert</option>
                                      <option>Sweet</option>
                                    </select>
                                 
                          
                        </div> 

                        <div class="form-group">
                            <label>Product Price(Rs):</label>
                            <f:input type="text" path="p.p_price" class="form-control" required="required"/>
                        </div> 
                        <div class="form-group">
                            <label>Product Rating:</label>
                            <select name="p.p_rating" class="form-control"> 
                                    <option> Select A Option</option>
                                   <option>3.0</option>
                                    <option>3.5</option>
                                    <option>4.0</option>
                                    <option>4.5</option>
                                    <option>5.0</option>
                                    </select>
                            
                        </div> 

                        <div class="form-group">
                            <label>Product Image :</label>
                            <f:input type="file" path="p.p_image" class="form-control" required="required"/>
                        </div> 

                        <div class="text-center">
                            <button type="submit" name="Update" class="btn btn-primary">
                                <i class="fa fa-user-md"></i> UPDATE
                            </button>

                        </div>
                    </f:form>

                </div>
            </div>

        </div>



    <body/>




    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>


</html>
