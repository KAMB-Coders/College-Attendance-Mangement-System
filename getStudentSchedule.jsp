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
ResultSet rs2 = null;
String url = "jdbc:mysql://localhost:3306/College";
String uid = (String)session.getAttribute("userID");
String ut = (String)session.getAttribute("userType");
String ccode ="";
int c_id;
int i=1;
try{
	Class.forName("com.mysql.jdbc.Driver").newInstance();
	conn = DriverManager.getConnection(url, username, password);
	stmt = conn.createStatement();
	stmt1 = conn.prepareStatement("Select s_course from Student where s_id = ?");
	stmt1.setString(1, uid);
	rs1 = stmt1.executeQuery();
	if(rs1.next()){
		c_id = rs1.getInt("s_course");
		ccode = "C".concat(Integer.toString(c_id)).concat(Integer.toString((new Date()).getYear()+1900));
	}
	stmt2 = conn.prepareStatement("Select s.sub_name, t.t_name, l_date from Lecture l join Subjects s on s.sub_code=l.sub_code join Teacher t on t.t_id= l.t_id where class=? and l_date=?");
	stmt2.setString(1,ccode);
	stmt2.setString(2,request.getParameter("date"));
	rs2 = stmt2.executeQuery();
	while(rs2.next()){%>
		<tr><td><%=i%></td>
		<td><%=rs2.getString("sub_name")%></td>
		<td><%=rs2.getString("t_name")%></td>
		<td><%=rs2.getString("l_date")%></td></tr>
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