<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<meta charset="utf-8"> 
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link type="text/css" rel="stylesheet" href="css/stylesheet.css">
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
	<script src="//ajax.googleapis.com/ajax/libs/angularjs/1.5.0-beta.1/angular.min.js"></script>
	<script src="https://code.angularjs.org/1.2.28/angular-route.min.js"></script>
	<script type="text/javascript" src="js/app.js"></script>
	<script src="js/angular.min.js"></script>
	<script type="text/javascript">
		$('#status').fadeOut(800);
		
		$("a[rel!='nofollow']a[rel!='external'][target!='_blank']a[class!='load']").click(function() {
		    $("#status").fadeIn(400);
		    setTimeout(function() {
		        $("#status").fadeOut(400)
		    },
		    4000)
		});
		
		$("a[href*='#'],a[rel='external nofollow'],a[href='javascript:void(0)'],a[href='javascript:reset_captcha('')']").click(function() {
		    $("#status").fadeOut(400)
		});
	</script>
	<style>
		.alert {
			color: red;
			background: #fdf1e5;
			font-size: 10px;
			line-height: 16px;
			width: 200px;
			margin: 10;
			position: relative;
		}
	</style>
	<!-- <script>
		$(document).ready(function() {
			if ("<c:out value='${param.login_error}'/>" != "") {
			  	$('#wrongCredentials').show();
			}
			$("#signin").on("click", loginValidation);	
		});
	
		function loginValidation() {
			$("#usernameAndPasswordReq").hide();
			$("#usernameReq").hide();
			$("#passwordReq").hide();   
			$("#wrongCredentials").hide();	
		  	if($("#j_username").val().length == 0 && $("#j_password").val().length == 0) {
		  		$("#usernameAndPasswordReq").show();
		  		return false;
		  	} else if ($("#j_username").val().length == 0) {
		  		$('#usernameReq').show();
		  		return false;
		  	} else if ($("#j_password").val().length == 0) {
		  		$("#passwordReq").show();
		  		return false;
		  	} else {
		  		return true;
		  	}
		}
	</script>	
 -->
</head>
<body ng-app="main" data-spy="scroll" data-target=".navbar" data-offset="50" class="background">

	<div class="container-fluid">
		<div class="top headerLinks">
			<a href="#">
				<img width="130" height="60" src="icon/icon.jpg">
			</a>
			<ul class="nav navbar-nav navbar-right col-md-2">
		        	<li><a href="#signup"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
		        	<li><a href="#login" data-toggle="modal" data-target="#mylogin"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
		    </ul>
		</div>
	</div>
	<nav class="navbar navbar-default" data-spy="affix" data-offset-top="197">		
		<div class="container-fluid" ng-controller="MainController">
			<ul class="nav navbar-nav">
			    <li><a href="#" class="nav-font">Home</a></li>
			    <li>
			    	<a href="#marketdata" class="nav-font">MarketData</a>
			    </li>
			    <li>
			    	<a href="#transaction" class="nav-font">Transaction</a>
			    </li>
			    <li>
			    	<a href="#history" class="nav-font">History</a>
			    </li>
			    <li>
			    	<a href="#search" class="nav-font">Search</a>
			    </li>
			</ul>
			<!-- <ul class="nav navbar-nav navbar-right">
				<li>
					<a href="#cart">
						<span class="glyphicon glyphicon-shopping-cart"></span><span id="cartCount"> 0</span>
					</a>
				</li>
			</ul> -->
		</div>
	</nav>

	<div class="container-fluid" id="main">
		<div ng-view></div>
	</div>
	
	
	<div class="rtop_btn" id="rtop_btn">
		<a href="#0" class="toplink cd-top">
			<img src="icon/backtotop.png" class="totop" width="60" height="60">
		</a>
	</div>
	
	
	
	<div class="alert" style="display:none;" id="usernameAndPasswordReq">
		<p>Username and password are required</p>
	</div>
	
	<div class="alert" style="display:none;" id="usernameReq">
		<p>Username is required</p>
	</div>
	<div class="alert" style="display:none;" id="passwordReq">
		<p>Password is required</p>
	</div>
	<div class="alert" id="wrongCredentials" style="display:none;">
		<p>The username or password supplied is incorrect</p>
	</div>	
	
	<footer class="container-fluid bg-4">
		<div class="row">
		<div class="social-follow col-md-4">
			<span class="follow">Follow Us</span>
			<div class="social-icons">
				<a href="https://twitter.com" class="twitter" target="_blank"><img src="icon/twitter.png" style=" height: 66px; width: 60px;"></a>
				<a href="https://www.facebook.com"  class="facebook" target="_blank"><img src="icon/facebook.png" style=" height: 66px; width: 60px;"></a>
				<a href="https://www.instagram.com" class="instagram" target="_blank"><img src="icon/instagram.png" style=" height: 66px; width: 60px;"></a>
			</div>
		</div>
		<div class="contact-us col-md-4">
			<span class="contact">Contact Us</span>
			<div>
				<p><span class="glyphicon glyphicon-map-marker"></span> Princeton, US</p>
      			<p><span class="glyphicon glyphicon-phone"></span> Phone: +01 1234567890</p>
      			<p><span class="glyphicon glyphicon-envelope"></span> Email: mail@mail.com</p>	
			</div>
		</div>
		</div>
		<div class="row">
			<div class="text-center">
  			<p>Copyright � Your Website 2015</p> 
			</div>	
		</div>
		
	</footer>
	
</body>
</html>