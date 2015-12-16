<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--[if IE 8]>
<html lang="en" class="ie8 no-js">
<![endif]-->
<!--[if IE 9]>
<html lang="en" class="ie9 no-js">
<![endif]-->
<!--[if !IE]>
<html lang="en">
<![endif]-->
	<head>
		<title>${siteName}</title>
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="description" content="${metaDescription}"/>
		<meta name="keywords" content="${metaKeywords}"/>
		<meta name="author" content="Ricardo Peres"/>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
        <link href="favicon.ico" rel="shortcut icon"/>
        <!-- BEGIN GLOBAL MANDATORY STYLES -->
        <link href="//fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all"/>
        <spring:url value="/resources/plugins/font-awesome/css/font-awesome.min.css" var="fontAwesome"/>
        <link href="${fontAwesome}" rel="stylesheet" type="text/css"/>
        <spring:url value="/resources/plugins/simple-line-icons/simple-line-icons.min.css" var="simpleLineIcons"/>
        <link href="${simpleLineIcons}" rel="stylesheet" type="text/css"/>
        <spring:url value="/resources/plugins/bootstrap/css/bootstrap.min.css" var="bootstrap"/>
        <link href="${bootstrap}" rel="stylesheet" type="text/css"/>
        <spring:url value="/resources/plugins/uniform/css/uniform.default.css" var="uniform"/>
        <link href="${uniform}" rel="stylesheet" type="text/css"/>
        <spring:url value="/resources/plugins/bootstrap-switch/css/bootstrap-switch.min.css" var="bootstrapSwitch"/>
        <link href="${bootstrapSwitch}" rel="stylesheet" type="text/css"/>
        <!-- END GLOBAL MANDATORY STYLES -->
        <!-- BEGIN PAGE LEVEL PLUGINS -->
        <spring:url value="/resources/plugins/select2/css/select2.min.css" var="select2"/>
        <link href="${select2}" rel="stylesheet" type="text/css"/>        
        <spring:url value="/resources/plugins/select2/css/select2-bootstrap.min.css" var="select2bootstrap"/>
        <link href="${select2bootstrap}" rel="stylesheet" type="text/css"/>
        <!-- END PAGE LEVEL PLUGINS -->
        <!-- BEGIN THEME GLOBAL STYLES -->
        <spring:url value="/resources/css/components-md.min.css" var="componentsMd"/>
        <link href="${componentsMd}" rel="stylesheet" type="text/css" id="style_components"/>
        <spring:url value="/resources/css/plugins-md.min.css" var="pluginsMd"/>
        <link href="${pluginsMd}" rel="stylesheet" type="text/css"/>
        <!-- END THEME GLOBAL STYLES -->
        <!-- BEGIN PAGE LEVEL STYLES -->
        <spring:url value="/resources/css/login.min.css" var="login"/>
        <link href="${login}" rel="stylesheet" type="text/css"/>
        <!-- END PAGE LEVEL STYLES -->
        <!-- BEGIN THEME LAYOUT STYLES -->
        <!-- END THEME LAYOUT STYLES -->
		<!-- BEGIN JAVASCRIPTS -->        
        <!-- BEGIN CORE PLUGINS -->
		<!--[if lt IE 9]>
		<spring:url value="/resources/respond.min.js" var="respond"/>
		<script src="${respond}" type="text/javascript"></script>
		<spring:url value="/resources/plugins/excanvas.min.js" var="excanvas"/>
		<script src="${excanvas}" type="text/javascript"></script> 
		<![endif]-->        
		<spring:url value="/resources/plugins/jquery.min.js" var="jquery"/>
        <script src="${jquery}" type="text/javascript"></script>        
        <spring:url value="/resources/plugins/bootstrap/js/bootstrap.min.js" var="bootstrap"/>
        <script src="${bootstrap}" type="text/javascript"></script>
        <spring:url value="/resources/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js" var="bootstrapHoverDropdown"/>
        <script src="${bootstrapHoverDropdown}" type="text/javascript"></script>
        <spring:url value="/resources/plugins/jquery-slimscroll/jquery.slimscroll.min.js" var="jquerySlimscroll"/>
        <script src="${jquerySlimscroll}" type="text/javascript"></script>
		<spring:url value="/resources/plugins/jquery.blockui.min.js" var="jqueryBlockUi"/>
        <script src="${jqueryBlockUi}" type="text/javascript"></script>
        <spring:url value="/resources/plugins/uniform/jquery.uniform.min.js" var="jqueryUniform"/>
        <script src="${jqueryUniform}" type="text/javascript"></script>
        <spring:url value="/resources/plugins/bootstrap-switch/js/bootstrap-switch.min.js" var="bootstrapSwitch"/>
        <script src="${bootstrapSwitch}" type="text/javascript"></script>
        <!-- END CORE PLUGINS -->        