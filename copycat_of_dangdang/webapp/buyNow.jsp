<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
    response.setContentType("text/html; charset=UTF-8");
    response.setCharacterEncoding("UTF-8");
    
    // 获取表单参数
    String productName = new String(request.getParameter("product_name").getBytes("ISO-8859-1"), "UTF-8");
    String priceStr = request.getParameter("price");
    String numberStr = request.getParameter("number");
    String totalPriceStr = request.getParameter("total_price");
    String userPhone = request.getParameter("user_phone");
    
    // 验证参数
    if (productName == null || priceStr == null || numberStr == null || 
        totalPriceStr == null || userPhone == null) {
        out.println("<script>alert('参数错误，请重试');history.back();</script>");
        return;
    }
    
    try {
        double price = Double.parseDouble(priceStr);
        int number = Integer.parseInt(numberStr);
        double totalPrice = Double.parseDouble(totalPriceStr);
        
        // 数据库操作
        Connection conn = null;
        PreparedStatement pstmt = null;
        
        try {
            // 加载驱动并建立连接
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(
                //分别填入地址，用户名和密码
                " ",
                " ", 
                " "
            );
            
            // 插入订单数据
            String sql = "INSERT INTO orders (user_phone, product_name, product_number, total_price, payment_status) VALUES (?, ?, ?, ?, ?)";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, userPhone);
            pstmt.setString(2, productName);
            pstmt.setInt(3, number);
            pstmt.setDouble(4, totalPrice);
            pstmt.setString(5, "未支付");
            
            int rows = pstmt.executeUpdate();
            
            if (rows > 0) {
                // 订单创建成功，跳转到订单确认页
                out.println("<script>alert('订单创建成功！');window.location.href='我的订单.jsp';</script>");
            } else {
                out.println("<script>alert('订单创建失败，请重试');history.back();</script>");
            }
            
        } catch (SQLException e) {
            e.printStackTrace();
            out.println("<script>alert('数据库错误：" + e.getMessage() + "');history.back();</script>");
        } catch (Exception e) {
            e.printStackTrace();
            out.println("<script>alert('未知错误：" + e.getMessage() + "');history.back();</script>");
        } finally {
            // 关闭资源
            try { if (pstmt != null) pstmt.close(); } catch (SQLException e) {}
            try { if (conn != null) conn.close(); } catch (SQLException e) {}
        }
        
    } catch (NumberFormatException e) {
        out.println("<script>alert('参数格式错误，请重试');history.back();</script>");
    }
%>