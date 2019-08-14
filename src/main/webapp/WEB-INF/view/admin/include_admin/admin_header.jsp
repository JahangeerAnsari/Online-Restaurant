<%-- 
    Document   : admin_header
    Created on : Aug 12, 2019, 6:57:27 PM
    Author     : ansar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="css-plugins.jsp" %>
        <%@include file="js-plugins.jsp" %>
    </head>
    <body>
        <nav class="navbar navbar-inverse bg-dark  navbar-fixed-top">
            <div class="container-fluid p-0">
                <div class="row" style="width: 100%;display: block">
                    <div class="navbar-header">
                        <s:url var="url_index_admin" value="/index_admin"/>
                        <a class="navbar-brand" href="${url_index_admin}" style="font-size: 22px">OnlineResturant</a> 
                    </div>
                    <ul class="nav navbar-nav pull-right " style="display: inline ; float: right">
                        <s:url var="url_index_admin" value="/index_admin"/>
                        <li><a href="${url_index_admin}" >Dashboard</a></li>

                        <s:url var="add_product" value="/add_product"/>
                        <li><a href="${add_product}" >Add Product</a></li>

                        <s:url var="url_profile" value="/admin/admin_profile"/>

                        <li><a href="${url_profile}"> My Profile</a></li>

                        <s:url var="url_food_track" value="food_track" />
                        <li><a href="${url_food_track}">Track Food</a></li>

                        <s:url var="url_logout" value="admin_logout" />
                        <li><a href="${url_logout}">Log Out</a></li>

                    </ul>
                </div>
            </div>
        </nav> 
    </body>
</html>
