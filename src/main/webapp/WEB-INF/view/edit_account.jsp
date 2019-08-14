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
                            EDIT ACCOUNT
                        </li>

                    </ul>
                </div>
                <!-- my sidebar for my account-->
                <%@include file="includes/myaccount-sidebar.jsp" %>
                <div class="col-md-9 bg-info">
                    <h1>Edit Your Details</h1>
                    <s:url var="update_account" value="/cutomer/update_account"/>
                    <f:form action="${update_account}" modelAttribute="CustomerEditCommand" >
                        <div class="form-group">
                            <label>Name</label>
                            <f:input type="text" path="c.name" class="form-control" required="required"/>
                        </div>
                        <div class="form-group">
                            <label>Email</label>
                            <f:input type="text" path="c.email" class="form-control" required="required"/>
                        </div> 

                        <div class="form-group">
                            <label>Your Contact</label>
                            <f:input type="text" path="c.contact" class="form-control" required="required"/>
                        </div> 
                        <div class="form-group">
                            <label>Your Password</label>
                            <f:input type="text" path="c.password" class="form-control" required="required"/>
                        </div> 

                        <div class="form-group">
                            <label>Your Address</label>
                            <f:input type="text" path="c.address" class="form-control" required="required"/>
                        </div> 

                        <div class="text-center">
                            <button type="submit" name="Update" class="btn btn-primary">
                                <i class="fa fa-user-md"></i> UPDATE
                            </button>

                        </div>
                    </f:form>

                </div>
            </div>

        </div>







        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>


    </body>
</html>
