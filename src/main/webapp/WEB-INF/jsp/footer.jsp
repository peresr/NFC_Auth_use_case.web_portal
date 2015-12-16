<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
		<!-- BEGIN JAVASCRIPTS -->
        <!-- BEGIN PAGE LEVEL PLUGINS -->
        <spring:url value="/resources/plugins/jquery-validation/js/jquery.validate.min.js" var="jqueryValidate"/>
        <script src="${jqueryValidate}" type="text/javascript"></script>
        <spring:url value="/resources/plugins/jquery-validation/js/additional-methods.min.js" var="additionalMethods"/>
        <script src="${additionalMethods}" type="text/javascript"></script>
		<spring:url value="/resources/plugins/select2/js/select2.full.min.js" var="select2"/>
        <script src="${select2}" type="text/javascript"></script>
 		<spring:url value="/resources/plugins/backstretch/jquery.backstretch.min.js" var="jqueryBackstretch"/>
        <script src="${jqueryBackstretch}" type="text/javascript"></script>	
        <!-- END PAGE LEVEL PLUGINS -->
        <!-- BEGIN THEME GLOBAL SCRIPTS -->
        <spring:url value="/resources/scripts/app.min.js" var="app"/>
        <script src="${app}" type="text/javascript"></script>
        <!-- END THEME GLOBAL SCRIPTS -->
        <!-- BEGIN PAGE LEVEL SCRIPTS -->
        <spring:url value="/resources/scripts/login.min.js" var="login"/>
        <script src="${login}" type="text/javascript"></script>
        <!-- END PAGE LEVEL SCRIPTS -->
        <!-- BEGIN THEME LAYOUT SCRIPTS -->
        <spring:url value="/resources/scripts/layout.min.js" var="layout"/>
        <script src="${layout}" type="text/javascript"></script>
		<spring:url value="/resources/scripts/demo.min.js" var="demo"/>        
        <script src="${demo}" type="text/javascript"></script>
        <!-- END THEME LAYOUT SCRIPTS -->
   		<!-- END JAVASCRIPTS -->	
	</body>
</html>