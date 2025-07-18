<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>我的订单</title>
    <style>
        table {
            width: 80%;
            border-collapse: collapse;
            margin: 20px auto;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: center;
        }
        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
    <h1 style="text-align: center;">我的订单</h1>
    <table>
        <tr>
            <th>订单号</th>
            <th>用户手机号</th>
            <th>商品名称</th>
            <th>商品数量</th>
            <th>订单总价</th>
            <th>支付状态</th>
        </tr>
        <%
            // 数据库连接信息，分别填写地址，用户名以及密码
            String jdbcUrl = " ";
            String user = " ";
            String password = " ";

            Connection connection = null;
            Statement statement = null;
            ResultSet resultSet = null;
            int rowCount = 0;

            try {
                // 加载驱动
                Class.forName("com.mysql.cj.jdbc.Driver");
                // 建立连接
                connection = DriverManager.getConnection(jdbcUrl, user, password);
                // 创建语句对象
                statement = connection.createStatement();
                // 执行查询
                String query = "SELECT order_id, user_phone, product_name, product_number, total_price, payment_status FROM orders";
                resultSet = statement.executeQuery(query); 
                // 显示结果
                while (resultSet.next()) {
                    int orderId = resultSet.getInt("order_id");
                    String userPhone = resultSet.getString("user_phone");
                    String productName = resultSet.getString("product_name");
                    int productNumber = resultSet.getInt("product_number");
                    double totalPrice = resultSet.getDouble("total_price");
                    String paymentStatus = resultSet.getString("payment_status");
        %>
        <tr>
            <td><%= orderId %></td>
            <td><%= userPhone %></td>
            <td><%= productName %></td>
            <td><%= productNumber %></td>
            <td><%= totalPrice %></td>
            <td><%= paymentStatus %></td>
        </tr>
        <%
                }
            } catch (ClassNotFoundException e) {
                out.println("<tr><td colspan='6'>Driver not found.</td></tr>");
                e.printStackTrace();
            } catch (SQLException e) {
                out.println("<tr><td colspan='6'>SQL Error: " + e.getMessage() + "</td></tr>");
                e.printStackTrace();
            } finally {
                // 关闭资源
                try { if (resultSet != null) resultSet.close(); } catch (SQLException se) {}
                try { if (statement != null) statement.close(); } catch (SQLException se) {}
                try { if (connection != null) connection.close(); } catch (SQLException se) {}
            }
        %>
    </table>
</body>
</html>