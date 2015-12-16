<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<jsp:include page="header.jsp"></jsp:include>
    <body class=" login">
        <!-- BEGIN LOGIN PAGE -->
        <div class="user-login-5">
            <div class="row bs-reset">
                <div class="col-md-6 bs-reset">
                    <div class="login-bg" style="background-image:url(${pageContext.request.contextPath}/resources/images/bgLogin.jpg)"></div>
                </div>
                <div class="col-md-6 login-container bs-reset">
                    <div class="login-content">
                        <spring:url value="/login" var="loginUrl" />
                        <spring:url value="/register" var="registerUrl" />
                        <form:form class="login-form" action="${loginUrl}" modelAttribute="loginForm" method="post" onsubmit="return register();">
                            <div class="row">
                                <div class="col-xs-6">
                                    <form:input type="text" placeholder="Email" class="form-control" id="email" name="email" path="email" /> </div>
                                <div class="col-xs-6">
                                    <form:input type="password" placeholder="Password" class="form-control" id="password" name="password" path="password" /> </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-4">
                                    <div class="rem-password">
										Don't have an account yet?&nbsp; <a href="${pageContext.request.contextPath}/register"> Create yours </a>
                                    </div>
                                </div>
                                <div class="col-sm-8 text-right">
                                    <button class="btn blue" type="submit">Sign In</button>
                                </div>
                            </div>
                        </form:form>
                    </div>
                    <div class="login-footer">
                        <div class="row bs-reset">
                            <div class="col-xs-12 bs-reset">
                                <div class="login-copyright text-right">
                                	Lic. Matemática @ ULHT 15/16 by Ricardo Peres | aluno 21200094
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- END LOGIN PAGE -->
<jsp:include page="footer.jsp"></jsp:include>