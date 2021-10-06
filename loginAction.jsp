<%@page language='java' contentType='text/html'%>
<!DOCTYPE html>
<html>
<body>
<%@page import="java.sql.*" %>
<%
String username = "root";
String password = "Techno"; /*root user's password needs to be written here*/
Connection conn = null;
Statement stmt = null;
ResultSet rs = null;
String url = "jdbc:mysql://localhost:3306/College";
try{
	Class.forName("com.mysql.jdbc.Driver").newInstance();
	conn = DriverManager.getConnection(url, username, password);
	stmt = conn.createStatement();
	
	String ut = request.getParameter("ut");
	String email = request.getParameter("email");
	String pass = request.getParameter("pass");
	session.setAttribute("userType", ut);

	if(ut.equals("admin")){
		rs = stmt.executeQuery("Select * from Admins where email='"+email+"';");
		if((rs.next()) && pass.equals(rs.getString("pass"))) {
			session.setAttribute("userID",rs.getString("a_id"));
			session.setAttribute("username",rs.getString("a_name"));
			session.setAttribute("userType", ut);
			session.setAttribute("no", rs.getString("phone"));
			session.setAttribute("mail", rs.getString("email"));
			session.setAttribute("password", rs.getString("pass"));
			response.sendRedirect("adminHome.jsp");
		}else
			response.sendRedirect("loginpage.html");
	}else
	if(ut.equals("student")){
		rs = stmt.executeQuery("Select * from Student where email='"+email+"';");
		if((rs.next()) && pass.equals(rs.getString("pass"))) {
			session.setAttribute("userID",rs.getString("s_id"));
			session.setAttribute("username",rs.getString("s_name"));
			session.setAttribute("userType", ut);
			session.setAttribute("no", rs.getString("phone"));
			session.setAttribute("mail", rs.getString("email"));
			session.setAttribute("password", rs.getString("pass"));
			response.sendRedirect("studentHome.jsp");
		}else
			response.sendRedirect("loginpage.html");
	}else
	if(ut.equals("faculty")){
		rs = stmt.executeQuery("Select * from Teacher where email='"+email+"';");
		if((rs.next()) && pass.equals(rs.getString("pass"))) {
			session.setAttribute("userID",rs.getString("t_id"));
			session.setAttribute("username",rs.getString("t_name"));
			session.setAttribute("no", rs.getString("phone"));
			session.setAttribute("mail", rs.getString("email"));
			session.setAttribute("password", rs.getString("pass"));
			session.setAttribute("userType", ut);

			response.sendRedirect("facultyHome.jsp");
		}else
			response.sendRedirect("loginpage.html");
	}else{
		response.sendRedirect("index.html");
	}
}
catch(ClassNotFoundException e)
{
    System.out.println("Driver Not Loaded");
}catch (SQLException e) {
    System.out.println("Connection not established");
}finally {
	if(conn!=null)
	{	try{
			conn.close();
		}catch(Exception e){}
	}
}
%>
</body>
</html>