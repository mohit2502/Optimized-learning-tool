<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body >
	<nav class="navbar navbar-inverse" style="background-image: url('image/wallpaperhd.jpg');">
		<div class="container">
			<div class="navbar-header">
				<!-- Button for smallest screens -->
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse"><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
				<a class="navbar-brand">
					<img src="assets/images/logo.png" alt="Techro HTML5 template"></a>
			</div>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav pull-right mainNav" style="color:black">
					<li class="active" ><a href="Managing.jsp">Home</a></li>
					<li><a href="TpaAudit.jsp"> TPA Audit </a></li>				 
					<li><a href="DownloadDocs.jsp"> Downloads </a></li>
					<li><a href="UploadDocs.jsp"> Uploads </a></li>
			 		<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">Settings <b class="caret"></b></a>
						<ul class="dropdown-menu">
							<!-- <li><a href="ChangePassword.jsp">Change Password</a></li>
							<li><a href="Profile.jsp">Profile</a></li>		 -->					
							<li><hr></li>							
							<li><a href="LogoutServlet">Sign Out</a></li>
						</ul>
					</li>
				</ul>
			</div>
			<!--/.nav-collapse -->
		</div>
	</nav>
	<!-- /.navbar -->
</body>
</html>