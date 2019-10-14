<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="eLearning is a modern and fully responsive Template by WebThemez.">
	<meta name="author" content="webThemez.com">
	<title>User Login</title>
	<link rel="favicon" href="assets/images/favicon.png">	
	<link rel="stylesheet" href="assets/css/bootstrap.min.css">
	<link rel="stylesheet" href="assets/css/font-awesome.min.css">
	<!-- Custom styles for our template -->
	<link rel="stylesheet" href="assets/css/bootstrap-theme.css" media="screen">
	<link rel="stylesheet" href="assets/css/style.css">
	<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
	<script src="assets/js/html5shiv.js"></script>
	<script src="assets/js/respond.min.js"></script>
	<![endif]-->
	<script type="text/javascript" src="angularjs/angular.min.js"></script>
	
	<script>
		var app = angular.module('userApp', []);
		
		app.controller('userForm', function($scope,$http,$window) {
    		$scope.user={};		
    		$scope.message="";
    		$scope.submitForm = function() {
    	
			$http({
			    method: 'POST',
			    url: 'AccessAuthentication',
			    data : $scope.user,
			    headers: {'Content-Type': 'application/json'},
			})
			.then(function(response) {
	            // success
	            alert(response.data.result);
	            if (response.data.result === 'tpa'){
	            	$window.location.href = 'TpaAudit.jsp';
	            }
	            else 
	            {
	            	if(response.data.result ==='valid') 
	            		$window.location.href = 'Managing.jsp';
	            	else
	            		$scope.message=response.data.result;
	            }
	        }, 
		    function(response) { 
		    		// optional
		            // failed
		    });
			};
		});
		
		
</script>
</head>

<body style="background-image: url('image/funky.jpg');"	>
	<!-- Fixed navbar -->
	<div class="navbar navbar-inverse" style="background-image: url('image/wallpaperhd.jpg');">
		<div class="container">
			<div class="navbar-header">
				<!-- Button for smallest screens -->
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
				<span class="icon-bar">
				</span><span class="icon-bar"></span><span class="icon-bar"></span></button>
					<img src="assets/images/logo.png" alt="E-Learning Portal">
			</div>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav pull-right mainNav">
					<li class="active"><a href="Register.jsp"> New User Register Here </a></li>					
				</ul>
			</div>
			<!--/.nav-collapse -->
		</div>
	</div>
	<!-- /.navbar -->

	 

	<!-- container -->
	<div class="container" data-ng-app="userApp">
				<div class="row">
					<div class="col-md-4">
											
					</div>
					<div class="col-md-4">
						<h3 class="section-title" style="text-align:center">User Login</h3>						
						<form class="form-light mt-20" action="LoginServlet" method="post">
							<div class="form-group">
								<label>Email</label>
								<input type="text" class="form-control" placeholder="Email" name="email" required>
							</div>
							<div class="form-group">
								<label>Password</label>
								<input type="password" class="form-control" placeholder="Password" name="password" data-ng-model="user.password" required>
							</div>	
							 					
							<center><button type="submit" class="btn btn-two">Login</button> &nbsp;<button type="reset" class="btn btn-two">Clear </button></center>	
							<h3><%if(session.getAttribute("insertStatus")!=null)
								out.print(session.getAttribute("insertStatus"));
								session.setAttribute("insertStatus",null);
								%>
								<%
								if(session.getAttribute("invalid")!=null)
								out.print(session.getAttribute("invalid"));
								session.setAttribute("invalid",null);
								%>
								</h3>												
						</form>
					</div>
					<div class="col-md-3">
																	
					</div>
				</div>
			</div>
	<!-- /container -->
	<!-- JavaScript libs are placed at the end of the document so the pages load faster -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/custom.js"></script>
	<script src="assets/js/google-map.js"></script>


</body>
</html>
