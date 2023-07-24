<%@ page import="com.construction.dbconnect.*"%>
<%@ page import="java.sql.*"%>



<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html>
<head>
<title>Construction a Real Estates and Builders Category Flat bootstrap Responsive website Template | Codes :: w3layouts</title>
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
							<li><a href="homepage.html">Home <span class="sr-only">(current)</span></a></li>
							
							<li><a href="empLogin.html">EmployeeLogin <span class="sr-only">(current)</span></a></li>
						
							 
						
						</div><!-- /.navbar-collapse -->
					</div><!-- /.container-fluid -->
				</nav>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
		<!--end header-section-->
		
		<!--end header-section-->
	<div class="content">
		<div class="typography">
			<!-- container-wrap -->
			<div class="container">
				
				
				
				
					
							
					
				</div>
				 
				<h3 style="background-color:powderblue"><CENTER>VIEW EMPLOYEE TASK</CENTER></h3>
			  
				
			
				<div class="bs-docs-example">
					<table class="table table-striped" border="2">
						<thead>
							<tr>
								<th>Task ID</th>
								<th>Project ID</th>
								<th>Employee ID</th>
								<th>Title</th>
								<th> Assigner</th>
								<th>Priority</th>
								<th> Location</th>
								<th>Startdate</th>
								<th>Enddate</th>
								<th>ManPowerRequired</th>
								<th>ResponsibleEmployee</th>
								<th>Action</th>
								<th>Action</th>
							</tr>
						</thead>
						<%
						
						
							int pno=Integer.parseInt(request.getParameter("id"));
						
							Connection con=ConnectDB.getConnect();
							PreparedStatement s1=con.prepareStatement("select * from emptask where eid=? and pid=?");
							int empid=SetGet.getEmpid();
							s1.setInt(1, empid);
							
							s1.setInt(2, pno);
							ResultSet rs=s1.executeQuery();
							while(rs.next())
							{
							%>
							
								 <tbody>
							    <tr>
							   
							      <td><%=rs.getInt(1)%></td>
							      <td><%=rs.getInt(2)%></td>
							      <td><%=rs.getInt(3)%></td>
							      <td><%=rs.getString(4)%></td>
							       <td><%=rs.getString(5)%></td>
							       <td><%=rs.getString(6)%></td>
							       <td><%=rs.getString(7)%></td>
							       <td><%=rs.getString(8)%></td>
							       <td><%=rs.getString(9)%></td>
							       <td><%=rs.getString(10)%></td>
							          <td><%=rs.getString(11)%></td>
							           <%SetGet.setTid(rs.getInt(1));%>
							          <%SetGet.setPid(rs.getInt(2)); %>
							          <td><a href="addcomment.html">AddCommentOnTask</a></td>
							          <td><a href="viewempcomment.jsp">ViewCommentOnTask</a></td>
							    	 
							    	 
							       
							    </tr>
							    
							  </tbody>
								
							<% 
							}
							
							
							
							
							
							%>  
							  
							  
							  
							  
							  
							
						
					</table>
				</div>
				<!-- //container-wrap -->
	</div>
	<!-- //typography -->
	</div>
<!--detail-->
		
	<!--detail-->
	<!--footer-->
		
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