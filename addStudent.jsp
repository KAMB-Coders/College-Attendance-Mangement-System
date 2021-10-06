<%@page language='java' contentType='text/html'%>
<!DOCTYPE html>
<html>
<head>
	<title>Add Faculty</title>
</head>
<body>
	<%@page import="java.sql.*, java.util.Date" %>
	<%
	String username = "root";
	String password = "Techno"; /*root user's password needs to be written here*/
	Connection conn = null;
	PreparedStatement stmt = null;
	Statement stmt2 = null;
	ResultSet rs = null;
	ResultSet rs2 = null;
	String url = "jdbc:mysql://localhost:3306/College";
	try{
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		conn = DriverManager.getConnection(url, username, password);
		String query = "insert into Student(s_id,s_name,s_course,phone,email,pass) values(?,?,?,?,?,?)";
		stmt = conn.prepareStatement(query);
		stmt2 = conn.createStatement();
		rs2 = stmt2.executeQuery("select max(s_id) from Student");
		rs2.next();
		int n = Integer.valueOf(rs2.getString("max(s_id)").substring(2,6));
		n = n+1;
		String n2 = Integer.toString(n);
		while(n2.length()<4){
			n2 = "0".concat(n2);
		}
		String sid = "St".concat(n2);

		rs2 = stmt2.executeQuery("select c_id from Course where semester="+request.getParameter("ssem")+" and branch='"+request.getParameter("sdept")+"'");
		rs2.next();
		int course = rs2.getInt("c_id");

		String name = request.getParameter("sname");
		String email = request.getParameter("semail");
		String no = request.getParameter("sno");
		stmt.setString(1,sid);
		stmt.setString(2,name);
		stmt.setInt(3,course);
		stmt.setString(4,no);
		stmt.setString(5,email);
		stmt.setString(6,"123");
		//stmt.executeUpdate();
		int i = stmt.executeUpdate();
		if(i!=0)
		{%>
			<script language="javascript">
            confirm("Student Added");
			window.location = 'adminHome.jsp';
            </script>
		<%}
		else
		{%>
			<script language="javascript">
            confirm("sorry");
			window.location = 'adminHome.jsp';
            </script>
		<%}
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
	}%>
</body>
</html>