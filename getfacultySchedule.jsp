<%@page language='java' contentType='text/html'%>
<%@page import="java.io.*,javax.servlet.ServletException,javax.servlet.http.*,java.sql.*,java.util.Date"%>

<% response.setContentType("text/html; charset=UTF-8");
String username = "root";
String password = "Techno"; /*root user's password needs to be written here*/
Connection conn = null;
PreparedStatement stmt1 = null;
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
	stmt1 = conn.prepareStatement("Select * from Lecture where t_id=? and l_date=?");
	stmt1.setString(1, uid);
	stmt1.setString(2, request.getParameter("date"));
	rs1 = stmt1.executeQuery();
	while(rs1.next()){
		String s="";
		String nextPage="markAttendance.html?classroom="+rs1.getString("class")+"&lecture=L"+rs1.getString("l_id");%>
		<tr class="clickable" onclick="myFunc(this)" data-href=<%=nextPage%>><td><%=i%></td>
		<%rs = stmt.executeQuery("Select branch, semester from Course where c_id="+Integer.valueOf(rs1.getString("class").substring(1,4)));
		rs.next();%>
		<td><%=rs.getString("Branch")%></td>
		<td><%=Integer.toString(rs.getInt("semester"))%></td>
		<%rs = stmt.executeQuery("Select sub_code, sub_name from Subjects where sub_code='"+rs1.getString("sub_code")+"'");
		rs.next();
		%><td><%=rs.getString("sub_name")%></td>
		<td><%=rs1.getString("l_date")%></td></tr>
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