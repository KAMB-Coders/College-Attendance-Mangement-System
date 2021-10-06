<%@page language='java' contentType='text/html'%>
<html lang="en">
<head>
<title>Home Page</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords">
<link href="https://stackpath.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all" />
<link href="https://muskanpanjwani.github.io/HomePage/Style.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="https://muskanpanjwani.github.io/HomePage/styleheader.css">
<link href="http://getbootstrap.com/2.3.2/assets/css/bootstrap-responsive.css" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
</head>
<style type="text/css">
	.navbar-light .navbar-toggler{
    color: #000000;
    border-color: black;
	}
	.navbar-light .navbar-nav .nav-link {
    color: rgba(255,255,255,0.9);
    font-weight: bold;
}
</style>
<body>
	<header>
		<div class="main_menu">
			<nav class="navbar navbar-expand-lg navbar-light">
			<div class="container">

			<a class="navbar-brand logo_h"><img src="https://muskanpanjwani.github.io/HomePage/image/img-01.png" height="42" width="42" alt=""></a>
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			</button>

			<div class="collapse navbar-collapse offset" id="navbarSupportedContent">
				<ul class="nav navbar-nav menu_nav ml-auto">
					<li class="nav-item"><a class="nav-link" href="studentHome.jsp" style="font-style: italic;">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="AboutUs.html">About</a></li>
					<li class="nav-item"><a class="nav-link" href="Contactus.html">Contact</a></li>
					<li class="nav-item submenu dropdown">
						<a class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Profile</a>
						<ul class="dropdown-menu">
						<li class="nav-item"><a class="nav-link" style="color: black;" href="Profile.jsp">your Profile</a>
						<li class="nav-item"><a class="nav-link" style="color: black;" href="index.html">Logout</a></li>
						</ul>
					</li>
				</ul>
			</div>
			</div>
			</nav>
		</div>
	</header>
<div class="clearfix"></div>
<div class="inner_content">
	<h1 style="font-weight: bolder; margin-left: 150px; font-style: italic;">Welcome, <%=session.getAttribute("username")%> !</h1>
	<div class="inner_content_w3_agile_info">
		<div class="agile_top_w3_grids">
			<ul class="ca-menu" style="display: flex; justify-content: center;">
				<li>
					<a href="StudentViewAttendance.html">
						<i class="fa fa-user" aria-hidden="true" style=""></i>
						<div class="ca-content">
							<h4 class="ca-main one" style="font-size: 12px ">Here you can Check your Attendance</h4>
							<!--h4 class="ca-main one">26,808</h4-->
							<h3 class="ca-sub one">Attendance</h3>
						</div>
					</a>
				</li>
				<li>
					<a href="studentViewSchedule.html">
						<i class="fa fa-database" aria-hidden="true"></i>
						<div class="ca-content">
							<h4 class="ca-main two" style="font-size: 12px ">Here you can Check your classes Scheduled </h4>
							<!--h4 class="ca-main two">29,008</h4-->
							<h3 class="ca-sub two">Time Table</h3>
						</div>
					</a>
				</li>
				<div class="clearfix"></div>
			</ul>
	    </div>
	    <div><br><br></div>
		<div class="agile_top_w3_post_sections">
			<div class="agile_top_w3_post_info agile_info_shadow">
				<div class="img_wthee_post1">
					<h3 class="w3_inner_tittle"> Flip Clock</h3>
					<div class="main-example">
						<div class="clock"></div>
						<div class="message"></div>
					</div>
				</div>
	        </div>
			<div class="clearfix"></div>
		</div>
	</div>
</div>
<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/screenfull.js/5.0.2/screenfull.min.js"></script>
		<script>
		$(function () {
			$('#supported').text('Supported/allowed: ' + !!screenfull.enabled);

			if (!screenfull.enabled) {
				return false;
			}

			

			$('#toggle').click(function () {
				screenfull.toggle($('#container')[0]);
			});	
		});
		</script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/flipclock/0.7.8/flipclock.js"></script>
	
	<script type="text/javascript">
		var clock;
		
		$(document).ready(function() {
			
			clock = $('.clock').FlipClock({
		        clockFace: 'HourlyCounter'
		    });
		});
	</script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script type="text/javascript" src="https://stackpath.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
</body>
</html>