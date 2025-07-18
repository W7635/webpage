<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
    response.setContentType("text/plain");
    response.setCharacterEncoding("UTF-8");
    
    // 更严格的参数检查
    String id = request.getParameter("id");
    String quantity = request.getParameter("quantity");
    
    System.out.println("Received params - id: " + id + ", quantity: " + quantity); // 添加日志
    
    if (id == null || id.trim().isEmpty() || quantity == null || quantity.trim().isEmpty()) {
        System.out.println("Invalid parameters received");
        out.print("invalid_params: id=" + id + ", quantity=" + quantity);
        return;
    }

    Connection conn = null;
    PreparedStatement pstmt = null;
    
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        //连接数据库，分别输入地址，用户名以及密码
        conn = DriverManager.getConnection(
            " ",
            " ", 
            " "
        );
        
        String sql = "UPDATE cart_products SET number = ? WHERE product_id = ?";
        pstmt = conn.prepareStatement(sql);
        pstmt.setInt(1, Integer.parseInt(quantity));
        pstmt.setInt(2, Integer.parseInt(id));
        
        int rows = pstmt.executeUpdate();
        
        if (rows > 0) {
            out.print("success");
        } else {
            // 返回更详细的错误信息
            out.print("fail: no records updated, check product_id");
        }
    } catch (SQLException e) {
        // 返回SQL异常信息
        e.printStackTrace();
        out.print("error: " + e.getMessage());
    } catch (Exception e) {
        e.printStackTrace();
        out.print("error: " + e.getMessage());
    } finally {
        try {
            if (pstmt != null) pstmt.close();
            if (conn != null) conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
%>