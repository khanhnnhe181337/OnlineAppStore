<!DOCTYPE html>
<html lang="en">
	<head>
	<!-- Basic Page Needs -->
    <meta charset="utf-8">
    <title>Xpoge</title>

	<!-- Mobile Specific Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link type="image/x-icon" href="images/fav-icon.png" rel="icon">

    <!-- CSS -->
    <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/shoes.css">
    <link rel="stylesheet" type="text/css" href="css/responsive.css">
	</head>
	<body>

		<!-- Start preloader -->
		<div id="preloader"></div>
		<!-- End preloader -->

		<!-- Search Screen start -->
		<div class="sidebar-search-wrap">
		    <div class="sidebar-table-container">
			    <div class="sidebar-align-container">
			        <div class="search-closer right-side"></div>
			        <div class="search-container">
			          <form method="get" id="search-form">
			            <input type="text" id="s" class="search-input" name="s" placeholder="Search text">
			          </form>
			          <span>Search and Press Enter</span>
			        </div>
			    </div>
		    </div>
		</div>
		<!-- Search Screen end -->

		<div class="main" id="main">
			<jsp:include page="header.jsp" />

			<section class="page-banner">
				<div class="container">
					<div class="page-banner-in">
						<div class="row">
							<div class="col-xl-6 col-lg-6 col-12">
								<h1 class="page-banner-title text-uppercase">Login</h1>
							</div>
							<div class="col-xl-6 col-lg-6 col-12">
								<ul class="right-side">
									<li><a href="home">Home</a></li>
									<li>Login</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</section>

			<section class="login pt-100">
				<div class="container">
					<div class="billing-details">
						<h2 class="checkout-title text-uppercase text-center mb-30">CUSTOMER LOGIN</h2>
                                                
                                                <form class="checkout-form" method="post" action="login">
							<div class="form-group">
								<label class="form-label">Email address or Username</label>
                                                                <input type="text" class="form-control" placeholder="Email Address" name="user" required>
							</div>
							<div class="form-group">
								<label class="form-label">Password</label>
                                                                <input type="password" class="form-control" placeholder="Enter your Password" name="pass" required>
							</div>
                                                    <h5 style="color: red">${requestScope.error}</h5>
                                                    <h4>${requestScope.notication}</h4>
							<div class="login-btn-g">
								<div class="row">
									<div class="col-6">
										<div class="check-box">
											<span>
								                <input type="checkbox" class="checkbox" id="account" name="Create an Account?">
								                <label for="account">Remember Me</label>
								            </span>
							            </div>
							        </div>
							        <div class="col-6">
							            <button name="submit" type="submit" class="btn btn-color right-side">Log In</button>
							        </div>
							    </div>
					        </div>
					        <div class="text-center">
					        	
					        </div>
					        <div class="new-account text-center mt-20"> 
					        	<span>Don't have an account?</span> 
				                <a class="link" title="Create New Account" href="register">Create New Account</a> 
				            </div>
						</form>
                                                
					</div>
				</div>
			</section>

			<jsp:include page="footer.jsp" />

		</div>
	
		<script src="js/jquery-3.4.1.min.js"></script>
		<script src="js/custom.js"></script>
	</body>

</html>
