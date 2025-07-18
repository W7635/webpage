<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>加入购物车结果</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            margin-top: 50px;
        }
        a {
            display: inline-block;
            margin: 10px;
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            text-decoration: none;
            border-radius: 5px;
        }
        a:hover {
            background-color: #45a049;
        }
        .message-box {
            width: 400px;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 5px;
        }
        .success {
            color: #4CAF50;
        }
        .error {
            color: #f44336;
        }
    </style>
</head>
<body>
    <div class="message-box">
    <%
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html; charset=UTF-8");
        
        // 获取表单数据
        String productName = request.getParameter("product_name");
        double price = Double.parseDouble(request.getParameter("price"));
        int number = Integer.parseInt(request.getParameter("number"));
        double totalPrice = Double.parseDouble(request.getParameter("total_price"));

        // 数据库连接信息，分别填入地址，用户名，密码
        String jdbcUrl = " ";
        String user = " ";
        String password = " ";

        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;

        try {
            // 加载驱动
            Class.forName("com.mysql.cj.jdbc.Driver");

            // 建立连接
            connection = DriverManager.getConnection(jdbcUrl, user, password);
            
            // 生成唯一的product_id
            String generateIdQuery = "SELECT IFNULL(MAX(product_id) + 1, 1) AS new_id FROM cart_products";
            Statement stmt = connection.createStatement();
            resultSet = stmt.executeQuery(generateIdQuery);
            int productId = 1;
            if (resultSet.next()) {
                productId = resultSet.getInt("new_id");
            }

            // 插入购物车记录
            String insertQuery = "INSERT INTO cart_products (product_id, product_name, price, number, total_price) VALUES (?, ?, ?, ?, ?)";
            preparedStatement = connection.prepareStatement(insertQuery);
            preparedStatement.setInt(1, productId);
            preparedStatement.setString(2, productName);
            preparedStatement.setDouble(3, price);
            preparedStatement.setInt(4, number);
            preparedStatement.setDouble(5, totalPrice);

            int rowsAffected = preparedStatement.executeUpdate();

            if (rowsAffected > 0) {
    %>
        <h2 class="success">成功加入购物车！</h2>
        <p>商品：<%= productName %></p>
        <p>单价：¥<%= price %></p>
        <p>数量：<%= number %></p>
        <p>总价：¥<%= totalPrice %></p>
        <a href="购物车.jsp">查看购物车</a>
        <a href="首页1.jsp">继续购物</a>
    <%
            } else {
    %>
        <h2 class="error">加入购物车失败！</h2>
        <a href="商品详情页2.jsp">返回商品详情</a>
    <%
            }
        } catch (ClassNotFoundException e) {
    %>
        <h2 class="error">数据库驱动加载失败！</h2>
        <p><%= e.getMessage() %></p>
        <a href="商品详情页2.jsp">返回商品详情</a>
    <%
            e.printStackTrace();
        } catch (SQLException e) {
    %>
        <h2 class="error">数据库操作错误！</h2>
        <p><%= e.getMessage() %></p>
        <a href="商品详情页2.jsp">返回商品详情</a>
    <%
            e.printStackTrace();
        } catch (Exception e) {
    %>
        <h2 class="error">发生未知错误！</h2>
        <p><%= e.getMessage() %></p>
        <a href="商品详情页2.jsp">返回商品详情</a>
    <%
            e.printStackTrace();
        } finally {
            // 关闭资源
            try { if (resultSet != null) resultSet.close(); } catch (SQLException se) {}
            try { if (preparedStatement != null) preparedStatement.close(); } catch (SQLException se) {}
            try { if (connection != null) connection.close(); } catch (SQLException se) {}
        }
    %>
    </div>
</body>
</html>