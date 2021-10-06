<%@page language='java' contentType='text/html'%>
<%@page import="java.io.*,javax.servlet.ServletException,javax.servlet.http.*,java.sql.*,java.util.Date"%>

<% response.setContentType("text/html; charset=UTF-8");
String username = "root";
String password = "Techno"; /*root user's password needs to be written here*/
Connection conn = null;
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
	String l_id = request.getParameter("Lecture");
	
	rs1 = stmt.executeQuery("Select s.s_id, s.s_name,"+l_id+" from "+request.getParameter("Classroom")+" c join Student s on s.s_id=c.s_id");

	while(rs1.next()){%>
		<tr><td><%=i%></td>
			<td><%=rs1.getString("s_name")%></td>
			<td><input type="checkbox" name=<%=rs1.getString("s_id")%> <%if(rs1.getBoolean(l_id)){%> checked <%}%>></td></tr>
	<% i+=1;
	}%>
	<tr><td><input type="text" name="Classroom" value=<%=request.getParameter("Classroom")%> hidden></td>
		<td><input type="text" name="Lecture" value=<%=l_id%> hidden></td>
		<td><button class="login100-form-btn" style="background-color: #4CAF50; border: none; color: white; padding: 8px 16px;text-align: center; display: inline-block; font-size: 16px; margin: 4px 2px;transition-duration: 0.4s; cursor: pointer;">Submit</button></td></tr>
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