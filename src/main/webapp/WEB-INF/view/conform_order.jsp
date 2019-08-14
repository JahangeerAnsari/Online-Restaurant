<%-- 
    Document   : add_to_cart
    Created on : Aug 10, 2019, 11:59:47 PM
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
        <link href="https://fonts.googleapis.com/css?family=Montserrat:300,400,500,700|Open+Sans:300,300i,400,400i,700,700i" rel="stylesheet">

        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    
        <style>
            .newarrival{
    background: green;
    width: 50px;
    color: white;
    font-size: 12px;
    font-weight: bold;
}
.col-md-7 h2 {
    color: #555;
}
.fa-star{
    color: #FE980F ;
    font-size: 20px;
}
.price{
    margin-right: 85%;
    color: green;
    font-size: 26px;
    font-weight: bold;
}
input{
    border: 1px solid #ccc;
    font-weight: bold;
    height: 33px;
    text-align: center;
    width:30px;
        
}
.cart{
    background: #FE980F;
    color: #ffffff;
    font-size: 15px;
    margin-left: 20px;
}
   
.carousel-inner img{
     height: 300px;
     width: 300px;
}
        </style>
            
    </head>
    <body>
        <%@include file="includes/myaccount-header.jsp" %>
        <div id="content" style="margin-top: 50px">
            <div class="container">
                <div class="row">
                    <div class="col-md-5">
                           <div id="myCarousel" class="carousel slider" data-ride="carousel"><!--carousel slider begin-->
                                <ol class="carousel-indicators">
                                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                                    <li data-target="#myCarousel" data-slide-to="1"></li>
                                    <li data-target="#myCarousel" data-slide-to="2"></li>
                                </ol>
                                <div class="carousel-inner">
                                    <div class="item active">
                                        <center><img class="img-responsive" src="static/images/b1.jpg" alt="shoes-1" style="width: 100%;"></center>
                                    </div>
                                    <div class="item">
                                        <center><img class="img-responsive"  src="static/images/b2.jpg" alt="shoes-2" style="width: 100%;"></center>
                                    </div>
                                    <div class="item">
                                        <center><img class="img-responsive"  src="static/images/b3.jpg" alt="shoes-3" style="width: 100%;"></center>
                                    </div>
                                </div>
                                
                                <a href="#myCarousel" class="left carousel-control" data-slide="prev">
                                    <span class="glyphicon glyphicon-chevron-left"></span>
                                    <span class="sr-only">Previous</span>
                                </a>
                                
                                <a href="#myCarousel" class="right carousel-control" data-slide="next">
                                    <span class="glyphicon glyphicon-chevron-right"></span>
                                    <span class="sr-only">Next</span>
                                </a>
                            </div><!--carousel slider End-->  
                    </div>
                    
                    <div class="col-md-7">
                        <p class="newarrival text-center">NEW</p>
                        <h2>Hydrabad, Biryani</h2>
                        <p class="rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                          <i class="fa fa-star"></i>
                        </p>
                       <p class="price" >Rs: 400</p>
                        <p><b>Availability:</b>In Stock</p>
                        <p><b>Offer:</b>On falte</p>
                        <label>Quantity:</label>
                        <input type="text" value="1">
                        <s:url var="confirm_order" value="/order/confirm_order"/>
                        <a href="${confirm_order}" type="button" class="btn btn-default cart">
                            Conform Order
                        </a>
                        
                    </div>
                </div>  
            </div>

        </div>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

    </body>
</html>
