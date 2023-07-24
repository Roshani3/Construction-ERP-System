<%@ page import="com.construction.dbconnect.*"%>
<%@ page import="java.sql.*"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>Construction a Real Estates and Builders Category Flat bootstrap Responsive website Template | Projects :: w3layouts</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Construction  Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,800italic,800,700italic,700,600italic,600,400italic,300italic,300' rel='stylesheet' type='text/css'>
<script src="js/jquery-1.11.1.min.js"></script>
<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
<script src="js/responsiveslides.min.js"></script>
<script>
    $(function () {
      $("#slider").responsiveSlides({
      	auto: true,
      	nav: true,
      	speed: 500,
        namespace: "callbacks",
        pager: true,
      });
    });
	
  </script>
  <script src="js/bootstrap.js"></script>
<!--startsmothscrolling-->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
 <script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event){		
				event.preventDefault();
				$('html,body').animate({scrollTop:$(this.hash).offset().top},1200);
			});
		});
	</script>
<!--endsmothscrolling-->
<link rel="stylesheet" href="css/swipebox.css">
			<script src="js/jquery.swipebox.min.js"></script> 
			    <script type="text/javascript">
					jQuery(function($) {
						$(".swipebox").swipebox();
					});
				</script>

</head>
<body>
		<!--start-header-section-->
	<div class="header">
		<div class="container">
			<div class="header-top">
				
					<h1><a href="homepage.html">CONSTRUCTION ERP SYSTEM</a></h1>
				
				<div class="buttons">
				   	<a href="joinus.html" class="button">join us</a>
		            <a href="adminlogin.html" class="button1">login</a>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="header-bottom">
				<nav class="navbar navbar-default">
					<div class="container-fluid">
				<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
					</div>
        <!-- Collect the nav links, forms, and other content for toggling -->
						<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						  <ul class="nav navbar-nav cl-effect-16">
							<li><a href="addResDept.html">AddResponsibleDepartment <span class="sr-only">(current)</span></a></li>
							<li><a href="addResEmp.html">AddResponsibleEmplyee</a></li>
							<li><a href="adddepttask.html">AddTaskToDepartment <span class="sr-only">(current)</span></a></li>
							<li><a href="addemptask.html">AddTaskToEmplyee</a></li>
							 

						</div><!-- /.navbar-collapse -->
					</div><!-- /.container-fluid -->
				</nav>
				
				<%
				int pid = Integer.parseInt(request.getParameter("id"));
        		SetGet.setPid(pid);
				%>
				
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
		<!--end header-section-->
	<div class="content">
		<!--gallery-->
		<div class="projects">
		<div class="container">
			<h2>Our Projects</h2>
			<div class="project-grids">
				<div class="col-md-4 project-grid">
					<div class="project-grd">
					 <a class="swipebox" href="images/p1.jpg" ><img src="images/p1.jpg" class="img-style row6" alt=""><span class="zoom-icon"></span></a>

					</div>
				</div>
				<div class="col-md-4 project-grid">
					<div class="project-grd">
						 <a class="swipebox" href="images/p2.jpg" ><img src="images/p2.jpg" class="img-style row6" alt=""><span class="zoom-icon"></span></a>
					</div>
				</div>
				<div class="col-md-4 project-grid">
					<div class="project-grd">
						 <a class="swipebox" href="images/p3.jpg" ><img src="images/p3.jpg" class="img-style row6" alt=""><span class="zoom-icon"></span></a>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="project-grids">
				<div class="col-md-4 project-grid">
					<div class="project-grd">
						 <a class="swipebox" href="images/p4.jpg" ><img src="images/p4.jpg" class="img-style row6" alt=""><span class="zoom-icon"></span></a>
					</div>
				</div>
				<div class="col-md-4 project-grid">
					<div class="project-grd">
						 <a class="swipebox" href="images/p5.jpg" ><img src="images/p5.jpg" class="img-style row6" alt=""><span class="zoom-icon"></span></a>
					</div>
				</div>
				<div class="col-md-4 project-grid">
					<div class="project-grd">
						 <a class="swipebox" href="images/p6.jpg" ><img src="images/p6.jpg" class="img-style row6" alt=""><span class="zoom-icon"></span></a>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="project-grids">
				<div class="col-md-4 project-grid">
					<div class="project-grd">
						 <a class="swipebox" href="images/p7.jpg" ><img src="images/p7.jpg" class="img-style row6" alt=""><span class="zoom-icon"></span></a>
					</div>
				</div>
				<div class="col-md-4 project-grid">
					<div class="project-grd">
						 <a class="swipebox" href="images/p8.jpg" ><img src="images/p8.jpg" class="img-style row6" alt=""><span class="zoom-icon"></span></a>
					</div>
				</div>
				<div class="col-md-4 project-grid">
					<div class="project-grd">
						 <a class="swipebox" href="images/p9.jpg" ><img src="images/p9.jpg" class="img-style row6" alt=""><span class="zoom-icon"></span></a>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
			</div>
		</div>

	<!--//gallery-->

	</div>
	<!--detail-->
		<div class="details-section">
			<div class="container">
				<div class="details-grids">
					<div class="col-md-4 detail-grid">
						<div class="logo1">
						<h1><a href="index.html">Construction Co</a></h1>
						</div>
						<p>Cum sociis natoque penatibus et magnis. dis parturient montes, nascetur ridiculus mus. Nulla dui. Fusce feugiat malesuada odio.</p>
					</div>
					<div class="col-md-4 detail-grid">
						<ul>
							<li class="dot"><span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span>4978 Diamond Circle Washington, </li>
							<li class="mobile"><span class="glyphicon glyphicon-phone" aria-hidden="true"></span>+212 522 275 386</li>
							<li class="mes"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span> <a href="mailto:info@example.com">mail@example.com</a></a></li>
							<li class="sign"><span class="glyphicon glyphicon-info-sign" aria-hidden="true"></span><a href="#">www.example.com</a></li>
						</ul>
					</div>
					<div class="col-md-4 detail-grid">
						<p>Cum sociis natoque penatibus et magnis. dis parturient montes, nascetur ridiculus mus. Nulla dui. Fusce feugiat malesuada odio.</p>
						<form>
							<h5>Newsletter<h5>
							<input type="text" value="Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}" required="">
							<input type="submit" value=" ">
						</form>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	<!--detail-->
	<!--footer-->
		<div class="footer-section">
						<div class="container">
							<div class="footer-top">
								<p> &copy; 2016 Construction. All rights reserved | Design by <a href="http://w3layouts.com">W3layouts</a></p>
									</div>
							<script type="text/javascript">
						$(document).ready(function() {
							/*
							var defaults = {
					  			containerID: 'toTop', // fading element id
								containerHoverID: 'toTopHover', // fading element hover id
								scrollSpeed: 1200,
								easingType: 'linear' 
					 		};
							*/
							
							$().UItoTop({ easingType: 'easeOutQuart' });
							
						});
					</script>
				<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
				</div>
			</div>
</body>
</html> 