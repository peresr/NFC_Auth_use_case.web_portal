<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  
<jsp:include page="header.jsp"></jsp:include>
		<spring:url value="/resources/plugins/jquery.qrcode.js" var="jQueryQrCode"/>
        <script src="${jQueryQrCode}" type="text/javascript"></script>
        <spring:url value="/resources/plugins/qrcode.js" var="qrCode"/>
		<script	src="${qrCode}" type="text/javascript"></script>
		<script src="http://crypto-js.googlecode.com/svn/tags/3.1.2/build/rollups/sha1.js"></script>
		<script>
			
			// email regex
			var regex = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;

			// email validator
			function checkEmail() {
				return regex.test(document.getElementById('email').value);
			}
			
			// password validator
			function checkPassword() {
				return document.getElementById('password').value === document.getElementById('re-password').value;
			}
			
			// generate qrcode
			function generateKey() {

				var hash = '';
				
				// validate email
				if (checkEmail()) {
					hash = CryptoJS.SHA1(document.getElementById('email').value + new Date()).toString(CryptoJS.enc.Hex);
				}
				
				// refresh key
				document.getElementById('secretKey').setAttribute("placeholder", hash);
				
				// clean qrcode
				$("#qrcodeTable").html('');
				
				// generate new qrcode
				$('#qrcodeTable').qrcode({
					text : document.getElementById('secretKey').getAttribute('placeholder')
				});			
			}
			
			// validate form
			function register() {
				if (checkEmail()) {
					if (checkPassword()) {
						return true;
					} else {
						alert('Passwords do not match!');
					}
				} else {
					alert('Wrong email format!');
				}
				return false;
			}
			
		</script>
		<!-- END JAVASCRIPTS -->	
	</head>
    <body class=" login">
        <!-- BEGIN REGISTER PAGE -->
        <div class="user-login-5">
            <div class="row bs-reset">
                <div class="col-md-6 login-container bs-reset">
                    <div class="login-content">
                    	<spring:url value="/register" var="registerUrl" />
                        <form:form class="login-form" action="${registerUrl}" modelAttribute="registerForm" method="post" onsubmit="return register();">
                            <div class="row">                        
								<div class="col-xs-12">
									<h3>Put your email and choose a password.<br>&nbsp;</h3>
								</div>
							</div>                        
                            <div class="row">
                                <div class="col-xs-6">
	                                <form:input type="email" placeholder="Email" class="form-control" id="email" name="email" path="email" onkeyup="javascript:generateKey();" /> </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-6">
                                    <form:input type="password" placeholder="Password" class="form-control login-password" id="password" name="password" path="password" /> </div>
                                <div class="col-xs-6">
                                    <input type="password" placeholder="Re-type Password" class="form-control login-password" id="re-password" name="re-password" /> </div>                                    
							</div>
							<div class="row">
								<div class="col-xs-12">
									<h3>Scan the QR code or copy the key to your app.<br>&nbsp;</h3>
								</div>
							</div>
							<div class="row">
								<div class="col-xs-12">
									<!-- BEGIN 2-STEP VERIFICATION FORM -->
									<div class="row">
										<div class="col-xs-6 text-right" style="margin-top: 50px;">
											<div class="form-group">
												<label class="control-label visible-ie8 visible-ie9">Key</label>											
												<input class="form-control placeholder-no-fix"
													type="text" autocomplete="off" placeholder=""
													id="secretKey" name="secretKey" path="secretKey" />
											</div>
											<div class="form-group">
												<label class="control-label visible-ie8 visible-ie9">Token</label>
												<input class="form-control placeholder-no-fix" type="text"
													autocomplete="off" placeholder="Token"
													id="token" name="token" path="token" />
												<button class="btn blue" type="submit">Register</button>
											</div>
										</div>
										<div class="col-xs-6">
											<center>
												<div id="qrcodeTable"></div>
											</center>
											<script>
												$('#qrcodeTable').qrcode({
													text : document.getElementById('secretKey').getAttribute('placeholder')
												});
											</script>
										</div>										
									</div>
									<!-- END 2-STEP VERIFICATION FORM -->
                                </div>
                            </div>                          
                        </form:form>
                    </div>
                </div>
                <div class="col-md-6 bs-reset">
                    <div class="login-bg" style="background-image:url(${pageContext.request.contextPath}/resources/images/bgRegister.jpg)"></div>
                </div>                
            </div>
        </div>
        <!-- END REGISTER PAGE -->
<jsp:include page="footer.jsp"></jsp:include>