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

            <div class="row">
                <div class="col-lg-12">
                    <ol class="breadcrumb" >
                        <li class="active"> 
                            <i class="fa fa-dashboard"></i> Dashboard / Insert Product
                        </li> 
                    </ol>  
                </div>

            </div> 
            
            <div class="row" style="margin-left: 250px;">
                <div class="col-lg-6">
                      
                    <div class="panel panel-info">
                        <div class="panel-heading">
                            <h3 class="panel-title">
                                <i class="fa fa-money fa-fw"></i> Insert Product 
                            </h3> 
                        </div> 
                        
                        <div class="panel-body">
                            <f:form action="add_product" modelAttribute="ProductInsertCommand">
                                
                                <div class="form-group">
                                    <label>Product Name:</label>
                                    <f:input type="text" path="p_name" class="form-control" required="required"/>
                                </div>
                                <div class="form-group">
                                    <label>Product Categories:</label>
                                    <select name="p_category" class="form-control"> 
                                    <option> Select A Option</option>
                                    <option>Veg</option>
                                    <option>Non-veg</option>
                                    <option>Desert</option>
                                      <option>Sweet</option>
                                    </select>
                                </div> 
                                <div class="form-group">
                                    <label>Product Price(Rs): </label>
                                    <f:input type="text" path="p_price" class="form-control" required="required"/>
                                </div> 

                                <div class="form-group">
                                    <label>Product Rating</label>
                                    <select name="p_rating" class="form-control"> 
                                    <option> Select A Option</option>
                                   <option>3.0</option>
                                    <option>3.5</option>
                                    <option>4.0</option>
                                    <option>4.5</option>
                                    <option>5.0</option>
                                    </select>
                                </div> 
                                 
                                <div class="form-group">
                                    <label>Product Image</label>
                                    <f:input type="file" path="p_image" class="form-control" required="required"/>
                                </div> 

                                <div class="text-center">
                                    <button type="submit" name="add_product" class="btn btn-primary">
                                        <i class="fa fa-user-md"></i> Insert Product
                                    </button>
                                   
                                </div>

                                
                            </f:form>
                        </div>
                    </div> 
                        
                </div>
            </div>


        </div>

    <body/>




    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>


</html>
