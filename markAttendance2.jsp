<%@page language='java' contentType='text/html'%>
<!DOCTYPE html>
<html>
<body>
<%@page import="java.sql.*, java.util.Date" %>
<%
String username = "root";
String password = "Techno"; /*root user's password needs to be written here*/
Connection conn = null;
Statement stmt = null;
Statement stmt1 = null;
//Statement stmt2 = null;
ResultSet rs = null;
String url = "jdbc:mysql://localhost:3306/College";

String uid = (String)session.getAttribute("userID");
String lecture = request.getParameter("Lecture");
String classroom = request.getParameter("Classroom");
try{
	Class.forName("com.mysql.jdbc.Driver").newInstance();
	conn = DriverManager.getConnection(url, username, password);
	stmt = conn.createStatement();
	stmt1 = conn.createStatement();
	//stmt2 = conn.createStatement("Update "+classroom+" set "+lecture+"=false where s_id=?");
	out.println(stmt1);
	
	//stmt1.setString(1,classroom);
	//stmt2.setString(1,classroom);
	//stmt1.setString(2,lecture);
	//stmt2.setString(2,lecture);

	//stmt.setString(1,classroom);
	rs = stmt.executeQuery("Select s_id from "+classroom);
	while(rs.next()){
		String s_id = rs.getString("s_id");
		if(request.getParameter(s_id)!=null){
			out.println("Update "+classroom+" set "+lecture+" = 1 where s_id = '"+s_id+"'");
			stmt1.execute("Update "+classroom+" set "+lecture+" = 1 where s_id = '"+s_id+"'");
		} else {
			stmt1.execute("Update "+classroom+" set "+lecture+" = 0 where s_id = '"+s_id+"'");
		}
	}%>
	<script language="javascript">
		confirm("Attendance Saved");
		window.location = 'facultyHome.jsp';
	</script>
<%}
catch(ClassNotFoundException e)
{
    out.println("Driver Not Loaded"+e);
}catch (SQLException e) {
    out.println("Connection not established"+e);
    out.println(e.getErrorCode());
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