<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
<title>NFC Authentication use case</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<meta http-equiv="Content-type" content="text/html; charset=utf-8">
<meta content="" name="description" />
<meta content="" name="author" />
<!-- BEGIN GLOBAL MANDATORY STYLES -->

<script
	src="${pageContext.request.contextPath}/resources/assets/global/plugins/jquery.min.js"
	type="text/javascript"></script>
<script
	src="${pageContext.request.contextPath}/resources/assets/global/plugins/jquery.qrcode.js"
	type="text/javascript"></script>
<script
	src="${pageContext.request.contextPath}/resources/assets/global/plugins/qrcode.js"
	type="text/javascript"></script>

<link
	href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all"
	rel="stylesheet" type="text/css" />
<link
	href="${pageContext.request.contextPath}/resources/assets/global/plugins/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="${pageContext.request.contextPath}/resources/assets/global/plugins/simple-line-icons/simple-line-icons.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="${pageContext.request.contextPath}/resources/assets/global/plugins/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="${pageContext.request.contextPath}/resources/assets/global/plugins/uniform/css/uniform.default.css"
	rel="stylesheet" type="text/css" />
<!-- END GLOBAL MANDATORY STYLES -->
<!-- BEGIN PAGE LEVEL STYLES -->
<link
	href="${pageContext.request.contextPath}/resources/assets/admin/pages/css/login.css"
	rel="stylesheet" type="text/css" />
<!-- END PAGE LEVEL SCRIPTS -->
<!-- BEGIN THEME STYLES -->
<link
	href="${pageContext.request.contextPath}/resources/assets/global/css/components-md.css"
	id="style_components" rel="stylesheet" type="text/css" />
<link
	href="${pageContext.request.contextPath}/resources/assets/global/css/plugins-md.css"
	rel="stylesheet" type="text/css" />
<link
	href="${pageContext.request.contextPath}/resources/assets/admin/layout/css/layout.css"
	rel="stylesheet" type="text/css" />
<link
	href="${pageContext.request.contextPath}/resources/assets/admin/layout/css/custom.css"
	rel="stylesheet" type="text/css" />
<!-- END THEME STYLES -->
<link rel="shortcut icon" href="favicon.ico" />
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<body class="page-md login">
	<!-- BEGIN LOGIN -->
	<div class="content">
		<!-- BEGIN LOGIN FORM -->
		<form class="login-form" action="index.html" method="post">
			<h3 class="form-title">Login to your account</h3>
			<div class="form-group">
				<!--ie8, ie9 does not support html5 placeholder, so we just show field title for that-->
				<label class="control-label visible-ie8 visible-ie9">Email</label>
				<div class="input-icon">
					<i class="fa fa-envelope"></i> <input
						class="form-control placeholder-no-fix" type="text"
						autocomplete="off" placeholder="Email" name="email" />
				</div>
			</div>
			<div class="form-group">
				<label class="control-label visible-ie8 visible-ie9">Password</label>
				<div class="input-icon">
					<i class="fa fa-lock"></i> <input
						class="form-control placeholder-no-fix" type="password"
						autocomplete="off" placeholder="Password" name="password" />
				</div>
			</div>
			<div class="form-actions">
				<button type="submit" class="btn blue pull-right">
					Login <i class="m-icon-swapright m-icon-white"></i>
				</button>
			</div>
			<div class="forget-password">
				<h4>Forgot your password ?</h4>
				<p>
					no worries, click <a href="javascript:;" id="forget-password">
						here </a> to reset your password.
				</p>
			</div>
			<div class="create-account">
				<p>
					Don't have an account yet ?&nbsp; <a href="javascript:;"
						id="register-btn"> Create an account </a>
				</p>
			</div>
		</form>
		<!-- END LOGIN FORM -->
		<!-- BEGIN FORGOT PASSWORD FORM -->
		<form class="forget-form" action="index.html" method="post">
			<h3>Forget Password ?</h3>
			<p>Enter your e-mail address below to reset your password.</p>
			<div class="form-group">
				<div class="input-icon">
					<i class="fa fa-envelope"></i> <input
						class="form-control placeholder-no-fix" type="text"
						autocomplete="off" placeholder="Email" name="email" />
				</div>
			</div>
			<div class="form-actions">
				<button type="button" id="back-btn" class="btn">
					<i class="m-icon-swapleft"></i> Back
				</button>
				<button type="submit" class="btn blue pull-right">
					Submit <i class="m-icon-swapright m-icon-white"></i>
				</button>
			</div>
		</form>
		<!-- END FORGOT PASSWORD FORM -->
		<!-- BEGIN REGISTRATION FORM -->
		<form class="register-form" action="index.html" method="post">
			<div class="row">
				<div class="col-md-6">
					<h3>Sign Up</h3>
					<p>Enter your account details below.</p>
					<div class="form-group">
						<!--ie8, ie9 does not support html5 placeholder, so we just show field title for that-->
						<label class="control-label visible-ie8 visible-ie9">Email</label>
						<div class="input-icon">
							<i class="fa fa-envelope"></i> <input
								class="form-control placeholder-no-fix" type="text"
								placeholder="Email" name="email" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label visible-ie8 visible-ie9">Password</label>
						<div class="input-icon">
							<i class="fa fa-lock"></i> <input
								class="form-control placeholder-no-fix" type="password"
								autocomplete="off" id="register_password" placeholder="Password"
								name="password" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label visible-ie8 visible-ie9">Re-type
							Your Password</label>
						<div class="controls">
							<div class="input-icon">
								<i class="fa fa-check"></i> <input
									class="form-control placeholder-no-fix" type="password"
									autocomplete="off" placeholder="Re-type Your Password"
									name="rpassword" />
							</div>
						</div>
					</div>
					<p>
						I want to login with 2-step authentication. <input type="checkbox"
							id="2step-form-cb" name="remember" value="1" />
					</p>
				</div>
				<div class="col-md-6">
					<!-- BEGIN 2-STEP VERIFICATION FORM -->
					<h3>&nbsp;</h3>
					<p>Scan the QR code or copy the key to your app.</p>
					<div class="row">
						<div class="col-md-6">
							<div id="qrcodeTable"></div>
							<script>
								jQuery('#qrcodeTable').qrcode({
									text : "http://jetienne.com"
								});
							</script>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<input disabled="" class="form-control placeholder-no-fix"
									type="text" autocomplete="off" id="register_password"
									name="secretKey" />
							</div>
							<div class="form-group">
								<label class="control-label visible-ie8 visible-ie9">Secret
									Key</label> <input disabled=""
									class="form-control placeholder-no-fix spinner" type="text"
									autocomplete="off" id="register_password" placeholder="Token"
									name="token" />
							</div>
						</div>
					</div>
					<!-- END 2-STEP VERIFICATION FORM -->
				</div>
			</div>
			<div class="row">
				<div class="col-md">
					<div class="form-actions">
						<button id="register-back-btn" type="button" class="btn">
							<i class="m-icon-swapleft"></i> Back
						</button>
						<button type="submit" id="register-submit-btn"
							class="btn blue pull-right">
							Sign Up <i class="m-icon-swapright m-icon-white"></i>
						</button>
					</div>
				</div>
			</div>
		</form>
		<!-- END REGISTRATION FORM -->
	</div>
	<!-- END LOGIN -->
	<!-- BEGIN COPYRIGHT -->
	<div class="copyright">
		Licenciatura em Matemática @ ULHT 15/16<br>Ricardo Peres | aluno
		21200094
	</div>
	<!-- END COPYRIGHT -->
	<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
	<!-- BEGIN CORE PLUGINS -->
	<!--[if lt IE 9]>
<script src="${pageContext.request.contextPath}/resources/assets/global/plugins/respond.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/assets/global/plugins/excanvas.min.js"></script> 
<![endif]-->
	<script
		src="${pageContext.request.contextPath}/resources/assets/global/plugins/jquery.min.js"
		type="text/javascript"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/global/plugins/jquery-migrate.min.js"
		type="text/javascript"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/global/plugins/bootstrap/js/bootstrap.min.js"
		type="text/javascript"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/global/plugins/jquery.blockui.min.js"
		type="text/javascript"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/global/plugins/uniform/jquery.uniform.min.js"
		type="text/javascript"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/global/plugins/jquery.cokie.min.js"
		type="text/javascript"></script>
	<!-- END CORE PLUGINS -->
	<!-- BEGIN PAGE LEVEL PLUGINS -->
	<script
		src="${pageContext.request.contextPath}/resources/assets/global/plugins/jquery-validation/js/jquery.validate.min.js"
		type="text/javascript"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/global/plugins/backstretch/jquery.backstretch.min.js"
		type="text/javascript"></script>
	<!-- END PAGE LEVEL PLUGINS -->
	<!-- BEGIN PAGE LEVEL SCRIPTS -->
	<script
		src="${pageContext.request.contextPath}/resources/assets/global/scripts/metronic.js"
		type="text/javascript"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/admin/layout/scripts/layout.js"
		type="text/javascript"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/admin/pages/scripts/login.js"
		type="text/javascript"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/global/plugins/jquery.qrcode.js"
		type="text/javascript"></script>
	<!-- END PAGE LEVEL SCRIPTS -->
	<script>
		jQuery(document)
				.ready(
						function() {
							Metronic.init(); // init metronic core components
							Layout.init(); // init current layout
							Login.init();
							$
									.backstretch(
											[ "${pageContext.request.contextPath}/resources/assets/admin/pages/media/bg/1.jpg"//,
											//"${pageContext.request.contextPath}/resources/assets/admin/pages/media/bg/2.jpg",
											//"${pageContext.request.contextPath}/resources/assets/admin/pages/media/bg/3.jpg",
											//"${pageContext.request.contextPath}/resources/assets/admin/pages/media/bg/4.jpg"
											], {
												fade : 1000,
												duration : 8000
											}); // init background slide images
						});
	</script>
	<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>