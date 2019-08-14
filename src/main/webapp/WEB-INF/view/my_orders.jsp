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
                            MY ORDER
                        </li>

                    </ul>
                </div>
                <!-- my sidebar for my account-->
                <%@include file="includes/myaccount-sidebar.jsp" %>
                <div class="col-md-9 bg-info">
                    <center> <!-- center begin-->
                        <h1> My Orders </h1>
                        <p class="lead"> Your order on one place </p>
                        <p class="text-muted">
                            If you have any questions,feel free to <a href="../contact.php"></a>. Our Customer Service work <strong>24x7</strong>
                        </p>

                    </center><!-- center End-->

                    <hr>

                    <table class="table table-bordered table-hover"><!-- table table-bordered table-hover Begin-->
                        <thead><!--thead Begin-->
                            <tr>
                                <th>ON:</th>
                                <th>Due Amount:</th>
                                <th>Invoice No:</th>
                                <th>Qty:</th>
                                <th>Size:</th>
                                <th>Order Date:</th>
                                <th>Paid / Unpaid</th>
                                <th>Status:</th>
                            </tr>
                        </thead><!--thead End-->

                        <tbody><!--tbody Begin-->
                            <tr>
                                <th> #1 </th>

                                <td> $80 </td>
                                <td> 3639563 </td>
                                <td> 2</td>
                                <td> Small </td>
                                <td> 10-02-2019 </td>
                                <td> Unpaid</td>
                                <td>
                                    <a href="#" target="_blank" class="btn btn-primary btn-sm">Confirm Paid</a>
                                </td>
                            </tr>
                            <tr>
                                <th> #1 </th>

                                <td> $80 </td>
                                <td> 3639563 </td>
                                <td> 2</td>
                                <td> Small </td>
                                <td> 10-02-2019 </td>
                                <td> Unpaid</td>
                                <td>
                                    <a href="#" target="_blank" class="btn btn-primary btn-sm">Confirm Paid</a>
                                </td>
                            </tr>
                            <tr>
                                <th> #1 </th>

                                <td> $80 </td>
                                <td> 3639563 </td>
                                <td> 2</td>
                                <td> Small </td>
                                <td> 10-02-2019 </td>
                                <td> Unpaid</td>
                                <td>
                                    <a href="#" target="_blank" class="btn btn-primary btn-sm">Confirm Paid</a>
                                </td>
                            </tr>
                        </tbody><!--tbody End-->
                    </table><!-- table table-bordered table-hover End-->

                </div>
            </div>

        </div>







        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>


    </body>
</html>
