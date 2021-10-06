<%@page language='java' contentType='text/html'%>
<%@page import="java.io.*,javax.servlet.ServletException,javax.servlet.http.*,java.sql.*,java.util.Date"%>

<% response.setContentType("text/html; charset=UTF-8");
String username = "root";
String password = "Techno"; /*root user's password needs to be written here*/
Connection conn = null;
PreparedStatement stmt = null;
ResultSet rs = null;
String url = "jdbc:mysql://localhost:3306/College";
int i=1;
try{
	Class.forName("com.mysql.jdbc.Driver").newInstance();
	conn = DriverManager.getConnection(url, username, password);
	stmt = conn.prepareStatement("Select * from Teacher");
	rs = stmt.executeQuery();
	while(rs.next()){%>
		<tr><td><%=i%></td>
			<td><%=rs.getString("t_name")%></td>
			<td><%=rs.getString("t_dept")%></td>
			<td><%=rs.getString("email")%></td></tr>
		<%i += 1;
	}
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