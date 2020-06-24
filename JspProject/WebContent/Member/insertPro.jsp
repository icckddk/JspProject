<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
   	request.setCharacterEncoding("utf-8");

    Context initCtx = new InitialContext();
    Context envCtx = (Context) initCtx.lookup("java:comp/env");
    DataSource ds = (DataSource) envCtx.lookup("jdbc/dit");
    
    Connection con = ds.getConnection();
	
		String sql = "INSERT INTO member VALUES(?, ?, ?)";
		PreparedStatement pst = con.prepareStatement(sql);
		pst.setString(1, request.getParameter("id"));
		pst.setString(2, request.getParameter("name"));
		pst.setString(3, request.getParameter("pwd"));
	
		int i = pst.executeUpdate();

		pst.close();
		con.close();
	
		response.sendRedirect("list.jsp");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>