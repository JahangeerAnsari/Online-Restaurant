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
                font: bold;"><center>All Products Details</center></h3> 
            <table class="table table-hover table striped" style="border: 2px;">
                <thead>
                    <tr>
                        <th>Sr.</th> 
                        <th>Name</th> 
                        <th>Category</th> 
                        <th>Price</th> 
                        <th>Raring</th>
                        <th>Edit</th>
                        <th>Delete</th>
                    </tr>
                </thead>
                <tbody>
                    <c:set var="products" value="${PRODUCTS}" />
                    <c:set var="x" value="1" />
                    <c:forEach items="${products}" var="p">
                        <tr>

                            <td>${x}</td>
                            <c:set var="x" value="${x+1}" />
                            <td>${p.p_name}</td>
                            <td>${p.p_category}</td>
                            <td>${p.p_price}</td>
                            <td>${p.p_rating}</td>
                            <s:url var="admin_product_details" value="/admin/update_product">
                                <s:param name="product_id" value="${p.id}"/>
                            </s:url>
                            <td><a href="${admin_product_details}"><i class="fa fa-pencil"></i></a></td>
                            <s:url var="delete_product" value="/admin/delete_product">
                                 <s:param name="product_id" value="${p.id}"/>
                            </s:url>
                            <td><a href="${delete_product}"><i class="fa fa-times"></i></a></td>     

                        </tr>
                    </c:forEach>

                </tbody>
            </table>

        </div>


    <body/>




    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>


</html>
