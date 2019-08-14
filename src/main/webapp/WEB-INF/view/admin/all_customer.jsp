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
                font: bold;"><center>All Customer Details</center></h3> 
            <table class="table table-hover table striped" style="border: 2px;">
                <thead>
                    <tr>
                        <th>Sr.</th> 
                        <th>Date</th>
                        <th>Name</th> 
                        <th>Email</th> 
                        <th>Contact</th> 
                        <th>Address</th>


                    </tr>
                </thead>
                <tbody>
                    <c:set var="customers" value="${CUSTOMERS}"/>
                    <c:set var="x" value="1" />
                    <c:forEach items="${customers}" var="c">
                        <tr>
                            <td>${x}</td>
                            <c:set var="x" value="${x+1}" />
                            <td>${c.date}</td>
                            <td>${c.name}</td>
                            <td>${c.email}</td>
                            <td>${c.contact}</td>
                            <td>${c.address}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <body/>
</html>
