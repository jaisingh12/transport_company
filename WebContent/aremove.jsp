<%@page import="com.javatpoint.DbConn"%>
<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>

<%
	String n = request.getParameter("val");
	if (n.length() > 0) {
		try {
			Connection con = DbConn.getConnection();

			PreparedStatement ps = con.prepareStatement("delete from payregister where id ='" + n + "'");
			ps.executeUpdate();
			con.close();
			request.setAttribute("msg", "Record Has been Deleted");
		} catch (Exception e) {
			e.printStackTrace();
		}
	} //end of if
%>
<jsp:forward page="admin.jsp"></jsp:forward>