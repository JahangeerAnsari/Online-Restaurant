<%-- 
    Document   : my_orders
    Created on : Aug 2, 2019, 4:20:09 PM
    Author     : ansar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>


        <%@include file="includes/css-plugins.jsp" %>
        <%@include file="includes/js-plugins.jsp" %>
    </head>
    <body>
        <% 
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
            response.setHeader("Pragma", "no-cache");
            response.setHeader("Expires", "0");
            if (session.getAttribute("customer") == null) {
                response.sendRedirect("index");
            }
        %>
        <%@include file="includes/myaccount-header.jsp" %>

        <div id="content bg-danger" style="margin-top: 50px">
            <div class="container">
                <div class="col-md-12" > 
                    <ul class="breadcrumb">
                        <li>
                            <a href="index">Home</a>
                        </li>
                        <li>
                            <a href="my_account"> MY ACCOUNT</a>
                        </li>
                        <li>
                            DELETE ACCOUNT
                        </li>

                    </ul>
                </div>
                <!-- my sidebar for my account-->
                <%@include file="includes/myaccount-sidebar.jsp" %>
                <div class="col-md-9 bg-info">
                    <center>
                        <h1>Do You Realy Want To Delete Your Account ?</h1>
                        <s:url var="yes_del_account" value="/confirm/delete_account"/>
                        <a href="${yes_del_account}" class="btn btn-primary"> Yes, I Want To Delete</a>
                    </center>

                </div>
            </div>

        </div>




        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>


    </body>
</html>
