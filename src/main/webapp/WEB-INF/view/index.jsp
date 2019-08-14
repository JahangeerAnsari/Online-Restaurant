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
  <meta name="viewport" content="widtpluginsh=device-width, initial-scale=1">
     <%@include file="includes/css-plugins.jsp" %>
        <%@include file="includes/js-plugins.jsp" %>
      
   </head>
<body>
    
    <% 
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
    response.setHeader("Pragma", "no-cache");
    response.setHeader("Expires", "0");
   %>
    
    
<nav class="navbar navbar-inverse bg-dark  navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
        <s:url var="url_index" value="/index"/>
      <a class="navbar-brand" href="${url_index}">OnlineResturant</a> 
    </div>
    <ul class="nav navbar-nav pull-right ">
      <li><a href="index">Home</a></li>
      
      
      <s:url var="url_foods" value="/foods"/>
      
      <li><a href="${url_foods}">Foods</a></li>
          <c:if test="${customer eq null}">
       <li><a href="signin">SignIn</a></li>
      </c:if>
      
        <c:if test="${customer ne null}">
       <li><a href="my_account">My Account</a></li>
      </c:if>
    </ul>
  </div>
</nav> 
    
        
        <div class="header">
            <div class=" animated fadeInDownBig">
                <h1> Order Delivery</h1>
               
                <s:url value="/product/search_product" var="search_product"/>
                <f:form  action="${search_product}" modelAttribute="SearchProductCommand">
                     <span>we are here to serve you best test</span>
                     <f:input class="search-field skills" path="p_name" type="text" placeholder="search here.."/>
                     <button class="search-btn" type="submit">Search</button>
                   
                </f:form>
                
                
                    
                
            </div>
        </div>
        
        
    
        
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

    </body>
</html>
