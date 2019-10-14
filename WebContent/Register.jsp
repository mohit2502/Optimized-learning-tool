<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="eLearning is a modern and fully responsive Template by WebThemez.">
	<meta name="author" content="webThemez.com">
	<title>Register User</title>
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
	
	function validate(){
		
		var f = $('.fn').val();
		var l = $('.ln').val();
		var email = $('.email').val();
		var pass = $('.pass').val();
		var hasNumber = /\d/;

		if(hasNumber.test(f)){
			alert('Numbers not allowed in fname');
			$('.fn').focus();
			return false;
		}
		if(hasNumber.test(l)){
			alert('Numbers not allowed in lname');
			$('.ln').focus();
			return false;
		}
		var re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
	    if (!re.test(email)){
	    	alert('Invalid Email Address');
			$('.email').focus();
			return false;
	    }
		if(pass.length<8){
			alert('Password should more than 8 chars');
			$('.ln').focus();
			return false;
		}
	}
	
		var app = angular.module('userApp', []);
		
		app.controller('userForm', function($scope,$http) {
    		$scope.user={};		
    		$scope.message="";
    		$scope.submitForm = function() {			      
			$http({
			    method: 'POST',
			    url: 'AccessUserRegistration',
			    data : $scope.user,
			    headers: {'Content-Type': 'application/json'},
			})
			.then(function(response) {
	            // success
	            $scope.message=response.data.result;   
	               
	        }, 
		    function(response) { 
		    		// optional
		            // failed
		    });
			};	
		});
		
		
</script>
</head>

<body style="background-image: url('image/wallpaperhd.jpg');">
	<!-- Fixed navbar -->
<%-- 	<jsp:include page="Navigation.jsp"></jsp:include>
 --%>	<!-- /.navbar -->

 		<div class="container">
			<div class="row">
				<div class="col-md-5">
											
				</div>
				<div class="col-sm-7" >
					<h1>Register</h1>
				</div>
			</div>
		</div>
	 

	<!-- container -->
	<div class="container" data-ng-app="userApp">
			<div class="row">&nbsp;</div>
				<div class="row">
					<div class="col-md-4">
											
					</div>
					<div class="col-md-4">												
						<form class="form-light mt-20" action="RegisterServlet" method="post"   >
							<div class="form-group">
								<label>First Name</label>
								<input type="text" size="30" class="form-control fn" placeholder="Full Name" name="name"  required>
							</div>
							<div class="form-group">
								<label>Last Name</label>
								<input type="text" class="form-control ln" placeholder="Last Name" name="contact" required>
							</div>
							<div class="form-group">
								<label>Address</label>
								<input type="text" class="form-control" placeholder="Address" name="address" required>
							</div>
							<div class="form-group">
								<label>Email Id</label>
								<input type="email" class="form-control email" placeholder="Email" name="email" required>
							</div>
							<!--  <div class="form-group">	
								<label>Password</label>
								<input type="password" class="form-control pass" placeholder="password" name="password" required>
							</div> -->
								<h3><%if(session.getAttribute("insertStatus")!=null)
								out.print(session.getAttribute("insertStatus"));
								session.setAttribute("insertStatus",null);
								%></h3>
							 <div class="form-group">					
							<center><button type="submit" class="btn btn-two" onclick="return validate();">Register</button><p><br/></p></center>
 							<center><a href="Login.jsp" class="btn btn-two">&nbsp;&nbsp;&nbsp;Login&nbsp;&nbsp;</a> &nbsp;<button type="reset" class="btn btn-two">Clear </button></center>
 							</div>
							 <div class="form-group">		
							 	
							</div>
							
						</form>
						
					</div>
					<div class="col-md-3">
																	
					</div>
				</div>
			</div>
	<!-- /container -->
	
	<!-- Footer -->
	<jsp:include page="Footer.jsp"></jsp:include>
	<!-- End Footer -->
	
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/custom.js"></script>
	<script src="assets/js/google-map.js"></script>


</body>
</html>
