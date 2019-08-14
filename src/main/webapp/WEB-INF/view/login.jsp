<%-- 
    Document   : signin
    Created on : Aug 1, 2019, 1:32:06 PM
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
        <style>
            .main-container{
                margin: 0 auto;
                width: 50%;
            }
        </style>
    </head>
    <body>
        <div class="col-lg-12 col-md-12 bg-danger">
            <div class="row bg-info">
                <div class="container main-container">
                    <div class="box">
                        <div class="box-header">
                            <center>
                                <h2>LOGIN</h2>
                            </center>
                            <f:form action="customer/login" modelAttribute="CustomerlogCommand">
                                
                                <div class="form-group">
                                    <label>Email</label>
                                    <f:input type="text" path="email" class="form-control" required="required"/>
                                </div> 
                                <div class="form-group">
                                    <label>Your Password</label>
                                    <f:input type="password" path="password" class="form-control" required="required"/>
                                </div> 


                                <div class="text-center">
                                    <button type="submit" name="login" class="btn btn-primary">
                                        <i class="fa fa-user-md"></i> LOGIN
                                    </button>
                                    
                                </div>

                            </f:form>
                        </div>   
                    </div>  
                </div>
            </div>
        </div>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

    </body>
</html>
