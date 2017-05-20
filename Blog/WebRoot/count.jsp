<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, com.wt.db.*, java.util.*, com.wt.beans.*"%>

<%
	String aid = request.getParameter("aid");
	String uid = request.getParameter("uid");
	
	//更新总计数器
	int point=0;
	String sql = "select point from users where id = '" + uid + "'"; 
	Connection conn = DB.getConn();
	try{
		Statement stmt = DB.createStmt(conn);
		ResultSet rs = DB.executeQuery(stmt,sql);
		if(rs.next()){
			point = rs.getInt("point");
			point = point + 1;
			sql = "update users set point = '" + point + "' where id='" + uid + "'";
			Statement stmtc = DB.createStmt(conn);
			DB.executeUpdate(conn,sql);
			
			DB.close(stmt);
			DB.close(rs);
			DB.close(stmtc);
		}
	}
	catch(SQLException e){
		e.printStackTrace();
	}
	
	//更新文章计数器
	point=0;
	sql = "select point from articles where id='" + aid + "'";
	try{
		Statement stmt = DB.createStmt(conn);
		ResultSet rs = DB.executeQuery(stmt,sql);
		if(rs.next()){
			point = rs.getInt("point");
			point = point + 1;
			sql = "update articles set point = '" + point + "' where id='" + aid + "'";
			Statement stmtc = DB.createStmt(conn);
			DB.executeUpdate(conn,sql);
			
			DB.close(stmt);
			DB.close(rs);
			DB.close(stmtc);
		}
	} catch(SQLException e){
		e.printStackTrace();
	} finally{
		DB.close(conn);
	}
%>