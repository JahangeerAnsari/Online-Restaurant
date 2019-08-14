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
            <h3 class="top" style="color: #3498DB;
                font: bold;"><center>Total Orders Details</center></h3> 
            <table class="table table-hover table striped">
                <thead>
                    <tr>
                        <th>Sr.</th> 
                        <th>Customer Name</th> 
                        <th>Order</th> 
                        <th>Price</th> 
                        <th>Raring</th>
                        <th>Address</th>
                        <th>Phone</th>
                        <th>Status</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>1</td>
                        <td>Mukesh Kumar</td>
                        <td>Biryani</td>
                        <td>200</td>
                        <td>4.5</td>
                        <td>Sai niwas,warangal</td>
                        <td>7015720216</td>
                        <td><a href="#"><i class="fa fa-thumbs-up"></i></a></td>

                    </tr>
                    <tr>
                        <td>1</td>
                        <td>Irfan </td>
                        <td>noodles</td>
                        <td>60</td>
                        <td>4.5</td>
                        <td>warangal</td>
                        <td>23456789</td>
                        <td><a href="#"><i class="fa fa-thumbs-up"></i></a></td>

                    </tr>
                    <tr>
                        <td>1</td>
                        <td>Anwar</td>
                        <td>Chicken</td>
                        <td>400</td>
                        <td>3.5</td>
                        <td>kazipet</td>
                        <td>7015720216</td>
                        <td><a href="#"><i class="fa fa-thumbs-down"></i></a></td>

                    </tr>
                </tbody>
            </table>

        </div>


    <body/>




    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>


</html>
