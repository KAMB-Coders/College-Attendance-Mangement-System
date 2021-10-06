<%@page language='java' contentType='text/html'%>

<%@page import="java.io.*,javax.servlet.ServletException,javax.servlet.http.*,java.sql.*,java.util.Date"%>

<%
		response.setContentType("text/html; charset=UTF-8");
		
		String username = "root";
		String password = "Techno"; /*root user's password needs to be written here*/
		Connection conn = null;
		PreparedStatement stmt = null;
		Statement stmt2 = null;
		ResultSet rs = null;
		String url = "jdbc:mysql://localhost:3306/College";
		int c_id=0;
		try{
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			conn = DriverManager.getConnection(url, username, password);
			if("student".equals((String)session.getAttribute("userType"))){
				String uid = (String)session.getAttribute("userID");
				stmt = conn.prepareStatement("Select s_course from Student where s_id=?");
				stmt.setString(1,uid);
				rs = stmt.executeQuery();
				if(rs.next()){
					c_id = rs.getInt("s_course");
				}
			}else{
				stmt = conn.prepareStatement("Select c_id from Course where branch=? && semester=? ;");
				String sem = (String)request.getParameter("Semester");
				String branch = request.getParameter("Branch");
				stmt.setString(1,branch);
				stmt.setInt(2,Integer.valueOf(sem));
				rs = stmt.executeQuery();
				if(rs.next()){
					c_id = rs.getInt("c_id");
				}
			}
			
			stmt2 = conn.createStatement();
			
			String ccode = "C".concat(Integer.toString(c_id)).concat(Integer.toString((new Date()).getYear()+1900));
			//String s="";
			rs = stmt2.executeQuery("Select count(*) from information_schema.tables where table_schema='College' and table_name='"+ccode+"';");
			if(rs.next() && rs.getInt("count(*)") == 0){
				stmt2.execute("Create table "+ccode+" (s_id varchar(6) primary key) as select s_id from Student where s_course="+c_id);
			}
			rs = stmt2.executeQuery("Select sub_code, sub_name from Subjects where c_id="+c_id);%>
			<option value="999" selected>All</option>
			<%while(rs.next()){%>
				<option value=<%=rs.getString("sub_code")%>><%=rs.getString("sub_name")%></option>
			<%}
			//out.print(s);
		}catch(ClassNotFoundException e) {
	    	out.println("Driver Not Loaded");
		}catch (SQLException e) {
	    	out.println("Connection not established");
		}finally {
			if(conn!=null)
			{	try{
					conn.close();
				}catch(Exception e){}
			}
		}
%>