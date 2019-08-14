<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>

<!DOCTYPE html>
<html>
    <head>
        
    </head>
    <body>
        
<nav class="navbar navbar-inverse bg-dark  navbar-fixed-top">
    <div class="container-fluid">
        <div class="navbar-header">
            <s:url var="url_index" value="/index"/>
            
            <a class="navbar-brand" href="${url_index}">OnlineResturant</a> 
        </div>
        <ul class="nav navbar-nav pull-right ">
            <s:url var="url_index" value="/index"/>
            <li><a href="${url_index}">Home</a></li>
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
                
    </body>
    
</html>    