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


            <div class="container">
                <div class="col-md-12" > 
                    <ul class="breadcrumb">
                        <li>
                            <a href="index">ADMIN</a>
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

                <div class="col-md-9 bg-info">
                    <h1>Edit Your Details</h1>
                    <s:url var="url_admin_update" value="/admin/update_admin__account" />
                        
                    <f:form action="${url_admin_update}" modelAttribute="AdminEditCommand" >
                        <div class="form-group">
                            <label>Name</label>
                            <f:input type="text" path="a.name" class="form-control" required="required"/>
                        </div>
                        <div class="form-group">
                            <label>Email</label>
                            <f:input type="text" path="a.email" class="form-control" required="required"/>
                        </div> 

                        <div class="form-group">
                            <label>Your Contact</label>
                            <f:input type="text" path="a.contact" class="form-control" required="required"/>
                        </div> 
                        <div class="form-group">
                            <label>Your Password</label>
                            <f:input type="text" path="a.password" class="form-control" required="required"/>
                        </div> 

                        <div class="form-group">
                            <label>Your Address</label>
                            <f:input type="text" path="a.address" class="form-control" required="required"/>
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



    <body/>




    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>


</html>
