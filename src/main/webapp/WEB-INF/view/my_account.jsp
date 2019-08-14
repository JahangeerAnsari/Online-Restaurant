<%-- 
    Document   : index
    Created on : Aug 1, 2019, 9:09:22 AM
    Author     : ansar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Bootstrap Example</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
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
                            <a href="index"></a> MY ACCOUNT
                        </li>


                    </ul>
                </div>
                <!-- my sidebar for my account-->
                <%@include file="includes/myaccount-sidebar.jsp" %>

            </div>

        </div>     






        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

    </body>
</html>
