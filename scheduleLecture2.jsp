<%@page language='java' contentType='text/html'%>
<!DOCTYPE html>
<html>
<body>
<%@page import="java.sql.*, java.util.Date" %>
<%
String username = "root";
String password = "Techno"; /*root user's password needs to be written here*/
Connection conn = null;
PreparedStatement stmt = null;
PreparedStatement stmt1 = null;
Statement stmt2 = null;
ResultSet rs = null;
String url = "jdbc:mysql://localhost:3306/College";

String uid = (String)session.getAttribute("userID");
String sem = request.getParameter("Semester");
String branch = request.getParameter("Branch");
String subject_code = request.getParameter("Subject");
String day = request.getParameter("date");
int l_id = 1;
String ccode="a123";
try{
	Class.forName("com.mysql.jdbc.Driver").newInstance();
	conn = DriverManager.getConnection(url, username, password);
	stmt = conn.prepareStatement("Insert into Lecture values(?,?,?,?,?)");
	stmt1 = conn.prepareStatement("Select c_id from Course where branch=? && semester=? ;");
	stmt2 = conn.createStatement();

	stmt1.setString(1,branch);
	stmt1.setInt(2,Integer.valueOf(sem));
	rs = stmt1.executeQuery();
	if(rs.next()){
		int c_id = rs.getInt("c_id");
		ccode = "C".concat(Integer.toString(c_id)).concat(Integer.toString((new Date()).getYear()+1900));
		rs = stmt2.executeQuery("Select count(*) from information_schema.tables where table_schema='College' and table_name='"+ccode+"';");
		if(rs.next() && rs.getInt("count(*)") == 0){%>
			<script language="javascript">
			confirm("Class not found. Cannot Schedule Lecture");
			</script> 
		<%} else {
			rs = stmt2.executeQuery("Select max(l_id) from lecture");
			if(rs.next()){
				l_id = rs.getInt("max(l_id)") +1;
			}
			stmt.setInt(1,l_id);
			stmt.setString(2,ccode);
			stmt.setString(3, subject_code);
			stmt.setString(4, uid);
			stmt.setString(5, day);
			stmt.execute();

			stmt2.execute("alter table "+ccode+" add column L"+l_id+" boolean");%>
			<script language="javascript">
			confirm("Lecture Scheduled");
			window.location = 'facultyHome.jsp';
			</script> 
		<%}
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
			//response.sendRedirect("facultyHome.jsp");
		}catch(Exception e){}
	}
}
%>
</body>
</html>