<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%
    response.setContentType("text/plain");
    response.setCharacterEncoding("UTF-8");
    response.setHeader("Access-Control-Allow-Origin", "*");
    response.setHeader("Access-Control-Allow-Methods", "POST, GET, OPTIONS");
    response.setHeader("Access-Control-Allow-Headers", "Content-Type");
    
    String idParam = request.getParameter("id");
    int id;
    if (idParam == null || idParam.trim().isEmpty()) {
        response.sendError(HttpServletResponse.SC_BAD_REQUEST, "缺少id参数");
        return;
    }
    try {
        id = Integer.parseInt(idParam);
    } catch (NumberFormatException e) {
        response.setStatus(HttpServletResponse.SC_BAD_REQUEST);
        out.print("错误：参数id必须是有效的整数");
        return;
    }

    
    Connection conn = null;
    PreparedStatement pstmt = null;
    
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        //连接数据库，分别输入地址、用户名以及密码
        conn = DriverManager.getConnection(
            " ",
            " ", 
            " "
        );
        
        String sql = "DELETE FROM cart_products WHERE product_id = ?";
        pstmt = conn.prepareStatement(sql);
        pstmt.setInt(1, id);
        
        int rows = pstmt.executeUpdate();
        
        if (rows > 0) {
            out.print("success");
        } else {
            out.print("fail");
            out.print(" 数据库操作：尝试删除id为" + id + "的记录，但未影响任何行");
        }
    } catch (SQLException e) {
        // 添加更多的日志记录
        e.printStackTrace();
        out.print("数据库操作错误: " + e.getMessage());
    } catch (Exception e) {
        e.printStackTrace();
        out.print("发生未知错误: " + e.getMessage());
    } finally {
        try {
            if (pstmt != null) pstmt.close();
            if (conn != null) conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
%>