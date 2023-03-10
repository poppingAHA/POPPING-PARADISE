<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="POPPING_PARADISE成员管理系统.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Login</title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
	<meta name="description" content="" />
	<meta name="keywords" content="" />
	<meta name="author" content="" />
	<!-- Facebook and Twitter integration -->
	<meta property="og:title" content="" />
	<meta property="og:image" content="" />
	<meta property="og:url" content="" />
	<meta property="og:site_name" content="" />
	<meta property="og:description" content="" />
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

	<link href="https://fonts.googleapis.com/css?family=Roboto:300,400,700" rel="stylesheet"/>

	<!-- Animate.css -->
	<link rel="stylesheet" href="../css/animate.css"/>
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="../css/icomoon.css"/>
	<!-- Themify Icons-->
	<link rel="stylesheet" href="../css/themify-icons.css"/>
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="../css/bootstrap.css"/>

	<!-- Magnific Popup -->
	<link rel="stylesheet" href="../css/magnific-popup.css"/>

	<!-- Owl Carousel  -->
	<link rel="stylesheet" href="../css/owl.carousel.min.css"/>
	<link rel="stylesheet" href="../css/owl.theme.default.min.css"/>

	<!-- Theme style  -->
	<link rel="stylesheet" href="../css/style.css"/>

	<!-- Modernizr JS -->
	<script src="../Scripts/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="Scripts/respond.min.js"></script>
	<![endif]-->
</head>
<body>
    <form id="form1" runat="server">
        <div class="gtco-loader"></div>
	
		<div id="page">

			<div class="page-inner">
				<nav class="gtco-nav" role="navigation">
					<div class="gtco-container">
			
						<div class="row">
							<div class="col-sm-4 col-xs-12">
								<div id="gtco-logo"><a href="./Login.aspx">Popping Paradise <em>.</em></a></div>
							</div>
							<div class="col-xs-8 text-right menu-1">
								<ul>
									<li><a href="./features.aspx">Features</a></li>
									<li class="has-dropdown">
										<a href="#">Skill</a>
										<ul class="dropdown">
											<li><a href="../Skill/InsertSkill.aspx">Insert Skill</a></li>
											<li><a href="../Skill/QuerySkill.aspx">Query Skill</a></li>
											<li><a href="../Skill/ModifySkill.aspx">Modify Skill</a></li>
										</ul>
									</li>
									<li class="has-dropdown">
										<a href="#">Stage</a>
										<ul class="dropdown">
											<li><a href="../Stage/InsertStage.aspx">Insert Stage</a></li>
											<li><a href="../Stage/ModifyStage.aspx">Query Stage</a></li>
										</ul>
									</li>
									<li class="has-dropdown">
										<a href="./personalInfo.aspx">Personal information</a>
										<ul class="dropdown">
											<li><a href="./regUser.aspx">Register</a></li>
											<li><a href="./ModifyUser.aspx">Modify user</a></li>
										</ul>
									</li>
									<li class="has-dropdown">
										<a href="#">Attendance</a>
										<ul class="dropdown">
											<li><a href="../Attendance/InsertAttend.aspx">Insert Attendance</a></li>
											<li><a href="../Attendance/QueryAttend.aspx">Query Attendance</a></li>
										</ul>
									</li>
									<li class="has-dropdown">
										<a href="#">Evaluation</a>
										<ul class="dropdown">
											<li><a href="../Evaluation/InsertEvl.aspx">Insert Evaluation</a></li>
											<li><a href="../Evaluation/ModifyEvl.aspx">Modify Evaluation</a></li>
										</ul>
									</li>
								</ul>
							</div>
						</div>
			
					</div>
				</nav>
	
				<header id="gtco-header" class="gtco-cover" role="banner" style="background-image: url(../images/img_4.jpg)">
				<div class="overlay"></div>
				<div class="gtco-container">
					<div class="row">
						<div class="col-md-12 col-md-offset-0 text-left">
					

							<div class="row row-mt-15em">
								<div class="col-md-7 mt-text animate-box" data-animate-effect="fadeInUp">
									<span class="intro-text-small">Welcome to Popping Paradise</span>
									<h1>What s boogaloo?<br />That means you are getting down.</h1>	
								</div>
								<div class="col-md-4 col-md-push-1 animate-box" data-animate-effect="fadeInRight">
									<div class="form-wrap">
										<div class="tab">
											<ul class="tab-menu">
												<li class="active gtco-first"><a href="#" data-tab="signup">Sign up</a></li>
												<li class="gtco-second"><a href="#" data-tab="login">Login</a></li>
											</ul>
											<div class="tab-content">
												<div class="tab-content-inner active" data-content="signup">
													<div>
														<div class="row form-group">
															<div class="col-md-12">							
																<label for="username1">Username or Email</label>
																<asp:TextBox ID="username1" class="form-control" runat="server"></asp:TextBox>
																<%--<input type="text" class="form-control" id="username1"/>--%>
															</div>
														</div>
														<div class="row form-group">
															<div class="col-md-12">
																<label for="password1">Password</label>
																<asp:TextBox ID="password1" class="form-control" runat="server" TextMode="Password"></asp:TextBox>
																<%--<input type="password" class="form-control" id="password1"/>--%>
															</div>
														</div>
														<div class="row form-group">
															<div class="col-md-12">
																<label for="password2">Repeat Password</label>
																<asp:TextBox ID="password2" class="form-control" runat="server" TextMode="Password"></asp:TextBox>
																<%--<input type="password" class="form-control" id="password2"/>--%>
															</div>
														</div>

														<div class="row form-group">
															<div class="col-md-12">
																<%--<input type="submit" class="btn btn-primary" value="Sign up"/>--%>
																<asp:Button ID="SignUp" runat="server" class="btn btn-primary" Text="Sign up" OnClick="SignUp_Click" />
															</div>
														</div>
													</div>	
												</div>

												<div class="tab-content-inner" data-content="login">
													<div>
														<div class="row form-group">
															<div class="col-md-12">
																<label for="username2">Username or Email</label>
																<asp:TextBox ID="username2" class="form-control" runat="server"></asp:TextBox>
																<%--<input type="text" class="form-control" id="username2"/>--%>
															</div>
														</div>
														<div class="row form-group">
															<div class="col-md-12">
																<label for="password3">Password</label>
																<asp:TextBox ID="password3" class="form-control" runat="server" TextMode="Password"></asp:TextBox>
																<%--<input type="password" class="form-control" id="password3"/>--%>
															</div>
														</div>

														<div class="row form-group">
															<div class="col-md-12">
																<asp:Button ID="Login" class="btn btn-primary" runat="server" Text="Login" OnClick="Login_Click" />
																<%--<input type="submit" class="btn btn-primary" value="Login"/>--%>
															</div>
														</div>
													</div>	
												</div>

											</div>
										</div>
									</div>
								</div>
							</div>
							
					
						</div>
					</div>
				</div>
			</header>


				<footer id="gtco-footer" role="contentinfo">
					<div class="gtco-container">
						<div class="row copyright">
							<div class="col-md-12">
								<p class="pull-left">
									<small class="block">Copyright &copy; 2021cqx</small> 
								</p>
								<div class="pull-right">
									<ul class="gtco-social-icons pull-right">
										<li><a href="#"><i class="icon-twitter"></i></a></li>
										<li><a href="#"><i class="icon-facebook"></i></a></li>
										<li><a href="#"><i class="icon-linkedin"></i></a></li>
										<li><a href="#"><i class="icon-dribbble"></i></a></li>
									</ul>
								</div>
							</div>
						</div>

					</div>
				</footer>
			</div>
		</div>

		<div class="gototop js-top">
			<a href="#" class="js-gotop"><i class="icon-arrow-up"></i></a>
		</div>
    </form>

	<!-- jQuery -->
	<script src="../Scripts/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="../Scripts/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="../Scripts/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="../Scripts/jquery.waypoints.min.js"></script>
	<!-- Carousel -->
	<script src="../Scripts/owl.carousel.min.js"></script>
	<!-- countTo -->
	<script src="../Scripts/jquery.countTo.js"></script>
	<!-- Magnific Popup -->
	<script src="../Scripts/jquery.magnific-popup.min.js"></script>
	<script src="../Scripts/magnific-popup-options.js"></script>
	<!-- Main -->
	<script src="../Scripts/main.js"></script>
</body>
</html>