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
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    </head>
    <body>

        <%@include file="include_admin/admin_header.jsp" %>

        <div id="content" style="margin-top: 50px;">
            <div class="container-fluid">
                <br /><br />
                <div class="row">
                    <!--User Information start from here-->
                    <div class="col-md-4" style="border: 2px;">
                        <div class="card mx-auto" >
                            <s:url var="admin_image" value="/static/images/ans.jpg"/>
                            <img src="${admin_image}" style="width:60%; margin: 0 auto;" class="card-img-top" alt="User Profile">
                            <div class="card-body" style="margin-left: 70px;">
                                <h5 style=" font-size: 20px;">Profile Information</h5>
                                <c:set var="a" value="${admin}" />
                                <p class="card-text" style=" font-size: 15px;"><i class="fa fa-user"> </i>${a.name}</p>
                                <p class="card-text" style=" font-size: 15px;"> <i class="fa fa-user"></i>${a.email}</p>
                                <p class="card-text" style=" font-size: 15px;">${a.contact}</p>
                                <p class="card-text" style=" font-size: 15px;">${a.address}</p>
                                <s:url var="admin_edit_profile" value="/admin/admin_edit_account"/>
                                <a href="${admin_edit_profile}" class="btn btn-primary" style=" font-size: 15px;"><i class="fa fa-edit"></i> Edit Profile</a>
                            </div>
                        </div>
                    </div>

                    <!--User Information end from here-->
                    <div class="col-md-8">
                        <div class="jumbotron" style="width:100%;height:100%;">
                            <h1>Welcome Admin</h1>
                            <div class="row">
                                <div class="col-sm-6">
                                    <iframe src="http://free.timeanddate.com/clock/i6t3hnii/n1523/szw160/szh160/cf100/hnce1ead6" frameborder="0" width="160" height="160"></iframe>


                                </div>
                                <div class="col-sm-6" style=" font-size: 15px;">
                                    <div class="card">
                                        <div class="card-body">
                                            <h5 class="card-title">New Orders</h5>
                                            <p class="card-text">Here you can make invoices and create new orders</p>
                                            <a href="#" class="btn btn-primary" style=" font-size: 15px;">New Orders</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <p></p>
            <p></p>
            <div class="container">
                <div class="row">
                    <div class="col-md-4">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title">Categories</h5>
                                <p class="card-text">Here you can make your categories and you can add new parent sub categories</p>
                                <a href="#" data-toggle="modal" data-target="#category" class="btn btn-primary">Add</a>
                                <a href="#" class="btn btn-primary">Manage</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title">Brands</h5>
                                <p class="card-text">Here you can make your brand and you can add new brand</p>
                                <a href="#" data-toggle="modal" data-target="#form_brand" class="btn btn-primary">Add</a>
                                <a href="#" class="btn btn-primary">Manage</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card">
                            <div class="card-body" style="width:20rem;">
                                <h5 class="card-title">Product</h5>
                                <p class="card-text">Here you can make your product and you can add new product</p>
                                <a href="#" data-toggle="modal" data-target="#product_modal" class="btn btn-primary">Add</a>
                                <a href="#" class="btn btn-primary">Manage</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <body/>

</html>
