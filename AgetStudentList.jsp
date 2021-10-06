<%@page language='java' contentType='text/html'%>
<%@page import="java.io.*,javax.servlet.ServletException,javax.servlet.http.*,java.sql.*,java.util.Date"%>

<% response.setContentType("text/html; charset=UTF-8");
String username = "root";
String password = "Techno"; /*root user's password needs to be written here*/
Connection conn = null;
PreparedStatement stmt1 = null;
PreparedStatement stmt2 = null;
Statement stmt = null;
ResultSet rs = null;
ResultSet rs1 = null;
String url = "jdbc:mysql://localhost:3306/College";
String uid = (String)session.getAttribute("userID");
int i=1;
try{
	Class.forName("com.mysql.jdbc.Driver").newInstance();
	conn = DriverManager.getConnection(url, username, password);
	stmt = conn.createStatement();
	stmt1 = conn.prepareStatement("Select * from Student where s_course=?");
	stmt2 = conn.prepareStatement("Select c_id from Course where branch=? && semester=?");

	String branch = request.getParameter("Branch");
	String semester = request.getParameter("Semester");

	stmt2.setString(1,branch);
	stmt2.setInt(2,Integer.valueOf(semester));
	rs = stmt2.executeQuery();
	
	if(rs.next()){
		int c_id = rs.getInt("c_id");
		stmt1.setInt(1, c_id);
		rs1 = stmt1.executeQuery();
		while(rs1.next()){%>
			<tr><td><%=i%></td>
				<td><%=rs1.getString("s_name")%></td>
				<td><%=semester%></td>
				<td><%=branch%></td>
				<td><%=rs1.getString("email")%></td></tr>
		<% i += 1;}
	} else {%>
	<p style="font-weight: bolder; display: flex; justify-content: center; font-style: italic;text-transform:uppercase;">Data not Found</p>
	<%}
}catch(ClassNotFoundException e) {
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