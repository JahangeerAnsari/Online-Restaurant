<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>

<!DOCTYPE html>
<html>
    <head>

    </head>
    <body>
        
        <div class="col-md-3">
            <div class="panel panel-default sidebar-menu">
                <div class="panel-heading">
                    <center>
                        <img src="static/images/k2.jpg">
                    </center>
                    <br>
                    <h3 align="center" class="panen-title">
                        Name: Katrina Kaif
                    </h3>
                </div> 
                <div class="panel-body">
                    
                    <ul class="nav-pills nav-stacked nav">

                        <li>
                            <s:url var="url_my_order" value="/my_orders"/>
                            <a href="${url_my_order}">
                                <i class="fa fa-list"></i> My Orders
                            </a> 
                        </li>
                        <li>
                            <s:url var="url_my_payment" value="/my_payment"/>
                            <a href="${url_my_payment}">
                                <i class="fa fa-bolt"></i> My Paymets
                            </a> 
                        </li>
                        <li>
                            <s:url var="url_edit_account" value="/customer/edit_account"/>
                            <a href="${url_edit_account}">
                                <i class="fa fa-pencil"></i> Edit Account
                            </a> 
                        </li>
                        
                        <li>
                            <a href="delete_account">
                                <i class="fa fa-user"></i> Delete Account
                            </a> 
                        </li>
                        <li>
                            <a href="logout">
                                <i class="fa fa-sign-out"></i> Log Out
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </body>
</html>