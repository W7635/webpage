<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%
    response.setContentType("text/plain");
    response.setCharacterEncoding("UTF-8");
    
    // 添加日志输出
    System.out.println("进入结算处理");
    
    // 获取选中的商品ID
    String[] productIds = request.getParameterValues("productIds");
    
    System.out.println("获取到的商品ID数量: " + (productIds != null ? productIds.length : 0));
    
    if (productIds == null || productIds.length == 0) {
        out.print("no_products_selected");
        return;
    }
    
    Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;
    
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        //连接数据库，分别填入地址，用户名以及密码
        conn = DriverManager.getConnection(
            " ",
            " ", 
            " "
        );
        
        // 开始事务
        conn.setAutoCommit(false);
        
        // 获取用户信息（这里假设用户已登录，实际应用中需要从会话中获取）
        String userPhone = "***********"; // 示例用户手机号
        
        System.out.println("开始处理结算事务，用户: " + userPhone);
        
        // 遍历处理每个选中的商品
        for (String productId : productIds) {
            System.out.println("处理商品ID: " + productId);
            
            // 查询商品信息
            String selectSql = "SELECT * FROM cart_products WHERE product_id = ?"; 
            pstmt = conn.prepareStatement(selectSql);
            pstmt.setInt(1, Integer.parseInt(productId));
            rs = pstmt.executeQuery();
            
            if (rs.next()) {
                String productName = rs.getString("product_name");
                int productNumber = rs.getInt("number");
                double price = rs.getDouble("price");
                double totalPrice = price * productNumber;
                
                System.out.println("商品信息: " + productName + ", 数量: " + productNumber + ", 总价: " + totalPrice);
                
                // 插入订单
                String insertOrderSql = "INSERT INTO orders (user_phone, product_name, product_number, total_price, payment_status) VALUES (?, ?, ?, ?, ?)";
                pstmt = conn.prepareStatement(insertOrderSql);
                pstmt.setString(1, userPhone);
                pstmt.setString(2, productName);
                pstmt.setInt(3, productNumber);
                pstmt.setDouble(4, totalPrice);
                pstmt.setString(5, "未支付");
                pstmt.executeUpdate();
                
                // 从购物车删除
                String deleteSql = "DELETE FROM cart_products WHERE product_id = ?";
                pstmt = conn.prepareStatement(deleteSql);
                pstmt.setInt(1, Integer.parseInt(productId));
                pstmt.executeUpdate();
                
                System.out.println("商品ID: " + productId + " 处理成功");
            } else {
                System.out.println("商品ID: " + productId + " 不存在于购物车中");
            }
            rs.close();
        }
        
        // 提交事务
        conn.commit();
        out.print("success");
        System.out.println("结算事务提交成功");
    } catch (Exception e) {
        // 回滚事务
        try {
            if (conn != null) {
                conn.rollback();
                System.out.println("事务回滚");
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        
        e.printStackTrace();
        out.print("error");
        System.out.println("结算处理错误: " + e.getMessage());
    } finally {
        try {
            if (rs != null) rs.close();
            if (pstmt != null) pstmt.close();
            if (conn != null) {
                conn.setAutoCommit(true);
                conn.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
%>