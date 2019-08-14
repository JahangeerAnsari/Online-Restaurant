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
                <div class="row">
                   
                    <div class="col-md-12">
                        <h1><i class="fa fa-tachometer"> Dashboard <small>Statics Overflow</small></i></h1><hr>

                        <ol class="breadcrumb">
                            <li class="active"><i class="fa-fa-tachometer"></i> Dashboard</li>
                        </ol>
                        <div class="row tag-boxes">
                            <div class="col-md-6 col-lg-3">
                                <div class="panel panel-primary">
                                    <div class="panel-heading">
                                        <div class="row">
                                            <div class="col-xs-3">
                                                <i class="fa fa-product-hunt fa-5x"></i> 
                                            </div>
                                            <div class="col-xs-9">
                                                <div class="text-right huge">${TOTOAL_PRODUCTS}</div>
                                                <div class="text-right">Total Product</div>
                                            </div>
                                        </div>  
                                    </div>
                                    <a href="products/total_product">
                                        <div class="panel-footer">
                                            <span class="pull-left">View Total Products</span>
                                            <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                            <div class="clearfix"></div>
                                        </div> 
                                    </a>
                                </div>   
                            </div> 
                            <div class="col-md-6 col-lg-3">
                                <div class="panel panel-green">
                                    <div class="panel-heading">
                                        <div class="row">
                                            <div class="col-xs-3">
                                                <i class="fa fa-shopping-cart fa-5x"></i> 
                                            </div>
                                            <div class="col-xs-9">
                                                <div class="text-right huge">200</div>
                                                <div class="text-right">Total Orders</div>
                                            </div>
                                        </div>  
                                    </div>
                                    <a href="total_orders">
                                        <div class="panel-footer">
                                            <span class="pull-left">View Total Orders</span>
                                            <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                            <div class="clearfix"></div>
                                        </div> 
                                    </a>
                                </div>   
                            </div> 

                            <div class="col-md-6 col-lg-3">
                                <div class="panel panel-red">
                                    <div class="panel-heading">
                                        <div class="row">
                                            <div class="col-xs-3">
                                                <i class="fa fa-users fa-5x"></i> 
                                            </div>
                                            <div class="col-xs-9">
                                                <div class="text-right huge">${ALL_CUSTOMERS}</div>
                                                <div class="text-right">Total Customer</div>
                                            </div>
                                        </div>  
                                    </div>
                                    <a href="customers/all_customer">
                                        <div class="panel-footer">
                                            <span class="pull-left">View Total Customers</span>
                                            <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                            <div class="clearfix"></div>
                                        </div> 
                                    </a>
                                </div>   
                            </div> 

                            <div class="col-md-6 col-lg-3">
                                <div class="panel panel-grey">
                                    <div class="panel-heading">
                                        <div class="row">
                                            <div class="col-xs-3">
                                                <i class="fa fa-money fa-5x"></i> 
                                            </div>
                                            <div class="col-xs-9">
                                                <div class="text-right huge">111400</div>
                                                <div class="text-right">Total Turnover</div>
                                            </div>
                                        </div>  
                                    </div>
                                    <a href="#">
                                        <div class="panel-footer">
                                            <span class="pull-left">View Total Turnover</span>
                                            <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                            <div class="clearfix"></div>
                                        </div> 
                                    </a>
                                </div>   
                            </div> 
                            <div class="container">
                                <div class="row">
                                    <div class="col-md-6">

                                        <div class="list-group">
                                            <a class="list-group-item active">
                                                <i class="fa fa-tachometer"></i> TODAY
                                                <P>10 aug,2019</P>
                                            </a>
                                            <a href="#" class="list-group-item">
                                                <span class="badge">10</span>  
                                                Total Order
                                            </a>
                                            <a href="#" class="list-group-item">
                                                <span class="badge">100</span>  
                                                Total Sales
                                            </a>
                                            <a href="#" class="list-group-item">
                                                <span class="badge">10</span>  
                                                Pending ordera
                                            </a>
                                            <a href="#" class="list-group-item">
                                                <span class="badge">500</span>  
                                                Delivered Orders
                                            </a>
                                                
                                            <a href="#" class="list-group-item">
                                                <span class="badge">500</span>  
                                                Rejected Orders
                                            </a>
                                        </div> 

                                    </div>
                                    
                                     <div class="col-md-6">

                                        <div class="list-group">
                                            <a class="list-group-item active">
                                                <i class="fa fa-tachometer"></i> THIS WEEK
                                                <P>10 aug,2019</P>
                                            </a>
                                            <a href="#" class="list-group-item">
                                                <span class="badge">10</span>  
                                                Total Order
                                            </a>
                                            <a href="#" class="list-group-item">
                                                <span class="badge">100</span>  
                                                Total Sales
                                            </a>
                                            <a href="#" class="list-group-item">
                                                <span class="badge">10</span>  
                                                Pending ordera
                                            </a>
                                            <a href="#" class="list-group-item">
                                                <span class="badge">500</span>  
                                                Delivered Orders
                                            </a>
                                                
                                            <a href="#" class="list-group-item">
                                                <span class="badge">500</span>  
                                                Rejected Orders
                                            </a>
                                        </div> 

                                    </div>
                                    
                                    
                                    
                                </div>
                            </div 
                            
                        </div>

                    </div>
                </div>
            </div>    
 

    <body/>




    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>


</html>
