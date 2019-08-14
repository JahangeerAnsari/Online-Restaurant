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
                            MY PAYMENT
                        </li>

                    </ul>
                </div>
                <!-- my sidebar for my account-->
                <%@include file="includes/myaccount-sidebar.jsp" %>
                <div class="col-md-9 bg-info">
                    <center> <!-- center begin-->
                        <h1> My Payment Details</h1>
                        <p class="text-muted">
                            If you have any questions,feel free to <a href="#">Contact Us</a>. Our Customer Service work <strong>24x7</strong>
                        </p>

                    </center><!-- center End-->
                     <hr>

                    <table class="table table-bordered table-hover table-striped"><!-- table table-bordered table-hover Begin-->
                        <thead><!--thead Begin-->
                            <tr>
                                <th>Bank Account Details:</th>
                                <th>Payment Mode:</th>
                                <th> Person Details: </th>

                            </tr>
                        </thead><!--thead End-->

                        <tbody><!--tbody Begin-->
                        <td>Bank Name: CBI | Account No: 75892747838 | Branch Name: Luthana Branch Code: 546</td>
                        <td> online</td>
                        <td>Real Name: Jahangeer Ansari | Mobile No : 477189813894 |  Country :India</td>
                        </tbody><!--tbody End-->
                    </table><!-- table table-bordered table-hover End-->

                </div>
            </div>

        </div>







        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>


    </body>
</html>
