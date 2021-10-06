<%@page language='java' contentType='text/html'%>
<%@page import="java.io.*,javax.servlet.ServletException,javax.servlet.http.*,java.sql.*,java.util.Date"%>
<% response.setContentType("text/html; charset=UTF-8");
String username = "root";
String password = "Techno"; /*root user's password needs to be written here*/
Connection conn = null;
PreparedStatement stmt1 = null;
Statement stmt2 = null;
Statement stmt = null;
ResultSet rs = null;
ResultSet rs1 = null;
ResultSet rs2 = null;
String url = "jdbc:mysql://localhost:3306/College";
String uid = (String)session.getAttribute("userID");
String ut = (String)session.getAttribute("userType");
String sub = request.getParameter("Subject");
String ccode ="";
int c_id;
int i=1;
int countP = 0;
int countA = 0;
try{
	Class.forName("com.mysql.jdbc.Driver").newInstance();
	conn = DriverManager.getConnection(url, username, password);
	stmt = conn.createStatement();
	stmt2 = conn.createStatement();
	stmt1 = conn.prepareStatement("Select s_course from Student where s_id = ?");
	stmt1.setString(1, uid);
	rs1 = stmt1.executeQuery();%>
	<thead><tr><th>#</th>
			<th>Subject</th>
			<th>Faculty</th>
			<th>Status</th>
			<th>Date</th></tr></thead><tbody>
	<%if(rs1.next()){
		c_id = rs1.getInt("s_course");
		ccode = "C".concat(Integer.toString(c_id)).concat(Integer.toString((new Date()).getYear()+1900));

		if(sub.equals("") || sub.equals("999") ){
			rs = stmt.executeQuery("Select * from Lecture where class='"+ccode+"' and (l_date between '"+request.getParameter("From")+"' and '"+request.getParameter("To")+"')");
		} else {
			rs = stmt.executeQuery("Select * from Lecture where class='"+ccode+"' and (l_date between '"+request.getParameter("From")+"' and '"+request.getParameter("To")+"') and sub_code='"+sub+"';");
		}
		
		while(rs.next()){%>
			<tr><td><%=i%></td>
				<%rs2 = stmt2.executeQuery("Select sub_name from Subjects where sub_code='"+rs.getString("sub_code")+"'");
				rs2.next();%>
				<td><%=rs2.getString("sub_name")%></td>
				<%rs2 = stmt2.executeQuery("Select t_name from teacher where t_id='"+rs.getString("t_id")+"'");
				rs2.next();%>
				<td><%=rs2.getString("t_name")%></td>
				<%String l_id = "L".concat(Integer.toString(rs.getInt("l_id")));
				rs2 = stmt2.executeQuery("Select "+l_id+" from "+ccode+" where s_id='"+uid+"'");
				rs2.next();%>
				<td>
					<i <%if(rs2.getBoolean(l_id)){%> class="fa fa-check-circle-o" style="color:green"<%} else {%>class="fa fa-times-circle-o" style="color:red"<%}%> aria-hidden="true">
						
					</i><p style="color: transparent; font-size: 2px;"><%if(rs2.getBoolean(l_id)){%>P<% countP+=1;} else {%>A<% countA+=1;}%></p></td>
				<td><%=rs.getString("l_date")%></td></tr>
		<% i+=1;}%></tbody>
		<tfoot>
			<tr>
				<th>Total Classes : <%=i-1%></th>
				<th>Total Present : <%=countP%></th>
				<th>Total Absent : <%=countA%></th>
				<th>Total Perctange: <%if(i==1){%>0<%}else{%><%=countP*100/(i-1)%><%}%>%</th>
				<th></th>
			</tr>
		</tfoot>
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