<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">


<%-- =============== JavaScript Libraries ================ --%>
<s:url var="jquery_js" value="/static/js/jquery.js"/>
<script src="${jquery_js}"></script>

<s:url var="bootstrap_js" value="/static/bootstrap/js/bootstrap.min.js"/>
<script src="${bootstrap_js}"></script>