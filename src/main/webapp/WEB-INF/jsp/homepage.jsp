<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
<jsp:include page="header.jsp"></jsp:include>
		<spring:url value="/resources/css/error.min.css" var="error"/>
        <link href="${error}" rel="stylesheet" type="text/css"/>
	</head>
    <body class="page-404-3">
        <div class="page-inner">
            <img src="${pageContext.request.contextPath}/resources/images/earth.jpg" class="img-responsive" alt=""> </div>
        <div class="container error-404">
            <h2>Hello.</h2>
            <p>This is your dummy homepage. So many things you can do here...</p>
            <p>
                <a href="index.html" class="btn red btn-outline"> Sign out </a>
            </p>
        </div>
<jsp:include page="footer.jsp"></jsp:include>