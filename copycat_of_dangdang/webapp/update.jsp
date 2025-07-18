<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>修改会员结果</title>
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
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
        // 获取表单数据
        String phone = request.getParameter("phone");
        String userPassword = request.getParameter("password");
        int status = Integer.parseInt(request.getParameter("status"));
        String user_type = request.getParameter("user_type");

        // 数据库连接信息，分别输入地址，用户名以及密码
        String jdbcUrl = " ";
        String user = " ";
        String password = " ";

        Connection connection = null;
        PreparedStatement preparedStatement = null;

        try {
            // 加载驱动
            Class.forName("com.mysql.cj.jdbc.Driver");

            // 建立连接
            connection = DriverManager.getConnection(jdbcUrl, user, password);

            // 更新记录
            String updateQuery = "UPDATE users SET password = ?, status = ?, user_type=? WHERE phone = ?";
            preparedStatement = connection.prepareStatement(updateQuery);
            preparedStatement.setString(1, userPassword);
            preparedStatement.setInt(2, status);
            preparedStatement.setString(3, user_type);
            preparedStatement.setString(4, phone);

            int rowsAffected = preparedStatement.executeUpdate();

            if (rowsAffected > 0) {
    %>
    <h1>会员信息更新成功！</h1>
    <a href="index.jsp">返回首页</a>
    <%
            } else {
    %>
    <h1>会员信息更新失败！</h1>
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



