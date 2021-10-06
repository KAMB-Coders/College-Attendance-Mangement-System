<%@page language='java' contentType='text/html'%>

<%@page import="java.io.*,javax.servlet.ServletException,javax.servlet.http.*,java.sql.*,java.util.Date"%>

<%/*public class GetSubjects extends HttpServlet {
	public void goGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {*/
		response.setContentType("text/html; charset=UTF-8");
		//PrintWriter out = response.getWriter();

		String username = "root";
		String password = "Techno"; /*root user's password needs to be written here*/
		Connection conn = null;
		PreparedStatement stmt = null;
		Statement stmt2 = null;
		ResultSet rs = null;
		String url = "jdbc:mysql://localhost:3306/College";
		try{
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			conn = DriverManager.getConnection(url, username, password);
			stmt = conn.prepareStatement("Select c_id from Course where branch=? && semester=? ;");
			stmt2 = conn.createStatement();

			String sem = (String)request.getParameter("Semester");
			String branch = request.getParameter("Branch");
			stmt.setString(1,branch);
			stmt.setInt(2,Integer.valueOf(sem));
			rs = stmt.executeQuery();

			if(rs.next()){
				int c_id = rs.getInt("c_id");
				String ccode = "C".concat(Integer.toString(c_id)).concat(Integer.toString((new Date()).getYear()+1900));
				String s="";
				rs = stmt.executeQuery("Select count(*) from information_schema.tables where table_schema='College' and table_name='"+ccode+"';");
				if(rs.next() && rs.getInt("count(*)") == 0){
					stmt.execute("Create table "+ccode+" (s_id varchar(6) primary key) as select s_id from Student where s_course="+c_id);
				}
				rs = stmt.executeQuery("Select sub_code, sub_name from Subjects where c_id="+c_id);
				while(rs.next()){
					s = s.concat("<option value=").concat(rs.getString("sub_code")).concat(">");
					s = s.concat(rs.getString("sub_name")).concat("</option>");
				}
				out.print(s);
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
		}
	/*}
}*/%>