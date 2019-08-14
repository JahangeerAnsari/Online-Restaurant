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
        <link href="https://fonts.googleapis.com/css?family=Montserrat:300,400,500,700|Open+Sans:300,300i,400,400i,700,700i" rel="stylesheet">
        <style>
            body{
                background: #eee;
            }
            .item-container{
                padding: 4px;
            }
            .item-container .product{
                width: 100%;
                background: #f8f8f8;
                padding: 12px;
                border-radius: 4px;
                border: 1px solid #f9f9f9;
            }
            #content .row{
                margin: 0 auto;
            }
        </style>
    </head>
    <body>



        <%@include file="includes/myaccount-header.jsp" %>
        <div id="content" style="margin-top: 50px">
            <div id="content" class="container">
                <div class="row">
                    <c:set var="products" value="${PRODUCTS}" />
                    <c:forEach items="${products}" var="p">
                        <div class="col-sm-4 col-md-4 col-sm-6 single item-container">
                            <div class="product">
                                <img class="img-responsive" src="static/images/chicken.jpg">
                                <div class="name">${p.p_name}</div>
                                <div class="rating">${p.p_rating}</div>   
                                <div class="price"> Rs ${p.p_price}</div>
                                <div class="button justify-content-between">
                                    <a href="conform_order" class="btn btn-success">
                                        <i class="fa fa-shopping-basket"> Order </i> 
                                    </a>
                                    <a href="add_to_cart" class="btn btn-primary">
                                        <i class="fa fa-shopping-cart"> Add To Cart </i>
                                    </a>
                                </div>
                            </div>

                        </div>
                    </c:forEach>
                </div>           

            </div>
        </div>   
    </div>  
</div>

</div>
</div>



<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

</body>
</html>
