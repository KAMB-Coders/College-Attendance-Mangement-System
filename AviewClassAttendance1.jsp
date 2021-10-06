<%@page language='java' contentType='text/html'%>
<%@page import="java.io.*,javax.servlet.ServletException,javax.servlet.http.*,java.sql.*,java.util.Date"%>

<% response.setContentType("text/html; charset=UTF-8");
String username = "root";
String password = "Techno"; /*root user's password needs to be written here*/
Connection conn = null;
PreparedStatement stmt2 = null;
Statement stmt = null;
Statement stmt1 = null;
ResultSet rs = null;
ResultSet rs1 = null;
ResultSet rs2 = null;
String url = "jdbc:mysql://localhost:3306/College";
String uid = (String)session.getAttribute("userID");
int i=1;
try{
	Class.forName("com.mysql.jdbc.Driver").newInstance();
	conn = DriverManager.getConnection(url, username, password);
	stmt = conn.createStatement();
	stmt1 = conn.createStatement();
	stmt2 = conn.prepareStatement("Select c_id from Course where branch=? && semester=?");

	String branch = request.getParameter("Branch");
	String semester = request.getParameter("Semester");
	String sub = request.getParameter("Subject");

	stmt2.setString(1,branch);
	stmt2.setInt(2,Integer.valueOf(semester));
	rs2 = stmt2.executeQuery();
	
	if(rs2.next()){
		int c_id = rs2.getInt("c_id");
		String ccode = "C".concat(Integer.toString(c_id)).concat(Integer.toString((new Date()).getYear()+1900));
		//stmt1.setString(1, ccode);
		if(sub.equals("") || sub.equals("999")){
			rs1 = stmt1.executeQuery("Select l.l_date, s.sub_name, l.l_id from Lecture l inner join Subjects s on s.sub_code = l.sub_code where class='"+ccode+"' and (l_date between '"+request.getParameter("From")+"' and '"+request.getParameter("To")+"') order by l_date desc");
		} else{
			rs1 = stmt1.executeQuery("Select l.l_date, s.sub_name, l.l_id from Lecture l inner join Subjects s on s.sub_code = l.sub_code where class='"+ccode+"' and (l_date between '"+request.getParameter("From")+"' and '"+request.getParameter("To")+"') and l.sub_code='"+sub+"' order by l_date desc");
			//stmt1.setString(4,sub);
		}%>
		<thead><tr><th>#</th>
			<th>Student</th>
		<% while(rs1.next()){%>
		<th><%=rs1.getString("l_date")%><br><%=rs1.getString("sub_name")%></th>
		<%}%>
		</tr></thead><tbody>
		
		<%rs = stmt.executeQuery("select * from "+ccode+" c inner join Student s on s.s_id=c.s_id");
		while(rs.next()){%>
			<tr><td><%=i%></td>
				<td><%=rs.getString("s_name")%></td>
			<%rs1.absolute(0);
			while(rs1.next()){
				String l_id = "L".concat(Integer.toString(rs1.getInt("l_id")));%>
				<td><i <%if(rs.getBoolean(l_id)){%> class="fa fa-check-circle-o" style="color:green"<%} else {%>class="fa fa-times-circle-o" style="color:red"<%}%> aria-hidden="true"></i>
				<p style="color: transparent; font-size: 2px;"><%if(rs.getBoolean(l_id)){%>P<%} else {%>A<%}%></p></td>
			<%}%></tr>
		<% i += 1;}%></tbody>
	<%} else {%>
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