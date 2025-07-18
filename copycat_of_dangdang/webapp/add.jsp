<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>增加会员结果</title>
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
    </style>
</head>
<body>
    <%
   		request.setCharacterEncoding("UTF-8");
    	response.setCharacterEncoding("utf-8");
    	response.setContentType("text/html; charset=UTF-8");
        // 获取表单数据
        String phone = request.getParameter("phone");
        String userPassword = request.getParameter("password");
        int status = Integer.parseInt(request.getParameter("status"));
        String user_type = request.getParameter("user_type");

        // 数据库连接信息
        String jdbcUrl = " ";//地址
        String user = " ";//用户名
        String password = " ";//密码

        Connection connection = null;
        PreparedStatement preparedStatement = null;

        try {
            // 加载驱动
            Class.forName("com.mysql.cj.jdbc.Driver");

            // 建立连接
            connection = DriverManager.getConnection(jdbcUrl, user, password);
            
            // 查询当前最大会员编号
            String getMaxIdQuery = "SELECT MAX(user_id) AS max_id FROM users";
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(getMaxIdQuery);
            String maxId = "0";
            if (resultSet.next()) {
                maxId = resultSet.getString("max_id");
            }

            // 生成新的会员编号
            int nextIdNumber = Integer.parseInt(maxId) + 1;
            String newId = String.format("%06d", nextIdNumber);

            // 插入新记录
            String insertQuery = "INSERT INTO users (user_id, phone, password, status, user_type) VALUES (?, ?, ?, ?, ?)";
            preparedStatement = connection.prepareStatement(insertQuery);
            preparedStatement.setString(1, newId);
            preparedStatement.setString(2, phone);
            preparedStatement.setString(3, userPassword);
            preparedStatement.setInt(4, status);
            preparedStatement.setString(5, user_type);

            int rowsAffected = preparedStatement.executeUpdate();

            if (rowsAffected > 0) {
    %>
    恭喜你，数据保存成功！
    <a href="index.jsp">返回首页</a>
    <%
            } else {
    %>
    对不起，数据保存失败！
    <a href="index.jsp">返回首页</a>
    <%
            }
        } catch (ClassNotFoundException e) {
    %>
    <h1>Driver not found!</h1>
    <a href="index.jsp">返回首页</a>
    <%
            e.printStackTrace();
        } catch (SQLException e) {
    %>
    <h1>SQL Error: <%= e.getMessage() %></h1>
    <a href="index.jsp">返回首页</a>
    <%
            e.printStackTrace();
        } finally {
            // 关闭资源
            try { if (preparedStatement != null) preparedStatement.close(); } catch (SQLException se) {}
            try { if (connection != null) connection.close(); } catch (SQLException se) {}
        }
    %>
</body>
</html>



