<%@page language='java' contentType='text/html'%>
<!DOCTYPE html>
<html>
<head>
	<title>Schedule Lecture</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords">
	<link href="https://stackpath.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all" />
	<link href="https://muskanpanjwani.github.io/HomePage/Style.css" rel="stylesheet" type="text/css" media="all" />
	<link rel="stylesheet" href="https://muskanpanjwani.github.io/HomePage/styleheader.css">
	<link href="http://getbootstrap.com/2.3.2/assets/css/bootstrap-responsive.css" rel="stylesheet">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="https://muskanpanjwani.github.io/HomePage/main.css">
    <link rel="stylesheet" type="text/css" href="https://muskanpanjwani.github.io/HomePage/formpage.css">
	<style type="text/css">
		select:required:invalid 
		{
			color: gray;
	    }
	    option[value=""][disabled] 
	    {
	    	display: none;
	    }
	    option 
	    {
	    	color: black;
	    }
	    .wrap-login100 
	    {
		  width:480px;
		  padding: 100px 120px 30px 90px;
		}
		.navbar-light .navbar-nav .nav-link {
    color: rgba(255,255,255,0.9);
}
	    
	</style>
</head>
<body>
	<%@page import="java.sql.*, java.util.Date, java.io.*" %>
	<header>
		<% String uid = (String)session.getAttribute("userID");%>
		<%--response.setIntHeader("Refresh",8);--%>
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
					<li class="nav-item"><a class="nav-link" href="facultyHome.jsp">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="AboutUs.html">About</a></li>
					<li class="nav-item"><a class="nav-link" href="Contactus.html">Contact</a></li>
					<li class="nav-item submenu dropdown">
						<a class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Profile</a>
						<ul class="dropdown-menu">
						<li class="nav-item"><a class="nav-link" style="color: black;" href="Profile.jsp">your profile</a>
						<li class="nav-item"><a class="nav-link" style="color: black;" href="index.html">Logout</a></li>
						</ul>
					</li>
				</ul>
			</div>
			</div>
			</nav>
		</div>
	</header>
	
	<!--div class="limiter"-->
	<form method='post' action="scheduleLecture2.jsp">
		<div class="icon-stu">
			<h2 class="student-w3l">Schedule Lecture</h2>
		<div class="stude-user-wls">
			<span class="fa fa-user" aria-hidden="true"></span>
			<div class="clear"> </div>
		</div>
		<div class="row-col">
			<div class="banner-agileits-btm">
				<div>
				<div class="wrap-input100 validate-input" style="display:flex; width: 100%">
			<label for="Semester" style="font-style: italic; color: black; margin-top: 15px; margin-left:5px;"><b>Semester </b></label>
			<select required class="input100" type="text" name="Semester" placeholder="Semester" id="Semester" style="margin-left: 5px;">

	<%
	String username = "root";
	String password = "Techno"; /*root user's password needs to be written here*/
	Connection conn = null;
	PreparedStatement stmt = null;
	Statement stmt2 = null;
	ResultSet rs = null;
	String url = "jdbc:mysql://localhost:3306/College";

	try{
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		conn = DriverManager.getConnection(url, username, password);
		stmt = conn.prepareStatement("Select c_id from Course where branch=? && semester=? ;");
		stmt2 = conn.createStatement();

		String sem = request.getParameter("Semester");
		if(sem==null){
			sem = "1";
		}
		for(int i=1; i<=8; i++){
			if(i==Integer.valueOf(sem)){%>
			<option value= <%=sem%> selected><%=sem%></option>
			<%} else {%>
			<option value= <%=i%> ><%=Integer.toString(i)%></option>
			<%}
		}%>
			</select>
		</div>

		<div class="wrap-input100 validate-input"style="display:flex; width: 100%">
		<label for="Branch" style="font-style: italic; color: black; margin-top: 15px;margin-left:5px; "><b>  Branch</b></label>

			<select required class="input100" type="text" name="Branch" placeholder="Branch" id="Branch"style="margin-left: 18px;">
		<% rs = stmt2.executeQuery("Select d_id, d_name from Department");
		String branch = request.getParameter("Branch");
		if(branch==null){
		branch = "CSE";
		}
		while(rs.next()){
			String d_id = rs.getString("d_id");
			String d_name = rs.getString("d_name");

			if(d_id.equals(branch)){%>
				<option value= <%=d_id%> selected><%=d_name%></option>
			<%} else {%>
				<option value= <%=d_id%>><%=d_name%></option>
			<%}
		}%>
			</select>
		</div>

		<div class="wrap-input100 validate-input" style="display:flex; width: 100% ">
		<label for="Subject" style="font-style: italic; color: black; margin-top: 15px;margin-left:2px;"><b>Subject</b></label>

			<select required class="input100" type="text" name="Subject" placeholder="Subject" id="Subject"style="margin-left: 2px; padding: 0 5px 0 20px;" >
		<%
		stmt.setString(1,branch);
		stmt.setInt(2,Integer.valueOf(sem));
		rs = stmt.executeQuery();

		if(rs.next()){
			int c_id = rs.getInt("c_id");
			String ccode = "C".concat(Integer.toString(c_id)).concat(Integer.toString((new Date()).getYear()+1900));
			rs = stmt.executeQuery("Select count(*) from information_schema.tables where table_schema='College' and table_name='"+ccode+"';");
			if(rs.next() && rs.getInt("count(*)") == 0){
				stmt.execute("Create table "+ccode+" (s_id varchar(6) primary key) as select s_id from Student where s_course="+c_id);
			}
			rs = stmt.executeQuery("Select sub_code, sub_name from Subjects where c_id="+c_id);
			while(rs.next()){%>
				<option value= <%=rs.getString("sub_code")%> ><%=rs.getString("sub_name")%></option>
			<%}
		}%>
			</select>
		<label for="date" style="font-style: italic; color: black; margin-top: 15px;margin-left:5px;"><b>Date</b></label>

		<input required class="input100" id="date" type="Date" name="date" placeholder="Date" onchange="validDate()"  style="margin-left: 2px;">
		</div>
	<%}catch(ClassNotFoundException e) {
	    System.out.println("Driver Not Loaded");
	}catch (SQLException e) {
	    System.out.println("Connection not established");
	}finally {
		if(conn!=null)
		{	try{
				conn.close();
			}catch(Exception e){}
		}
	}%>
	<div class="container-login100-form-btn">
		<button type="submit" class="login100-form-btn">
			Schedule  
		</button>
	</div>
	</form>
	</div>
	</div>
	<script type="text/javascript">
		document.getElementById('date').value = new Date().toISOString().substring(0, 10);
	</script>
	<script type="text/javascript">
		function validDate(){
        var today = new Date().toISOString().split('T')[0];
        document.getElementsByName("date")[0].setAttribute('min', today);
        }
	</script>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/tilt.js/1.2.1/tilt.jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

	<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
	<script type="text/javascript">
		$branch = $('#Branch');
		$semester = $('#Semester');

		$branch.change(
			function(){
				$.ajax({
					type: "GET",
					url: "GetSubjects.jsp",
					data: {Branch: $branch.val(), Semester: $semester.val()},
					success: function(res){
						$("#Subject").html(res);
					}
				});
			});
		$semester.change(
			function(){
				$.ajax({
					type: "GET",
					url: "GetSubjects.jsp",
					data: {Branch: $branch.val(), Semester: $semester.val()},
					success: function(res){
						$("#Subject").html(res);
					}
				});
			});
	</script>
</body>
</html>