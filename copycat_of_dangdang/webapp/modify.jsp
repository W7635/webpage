<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>修改会员</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin-top: 50px;
            text-align: center;
        }
        form {
            display: inline-block;
            text-align: left;
        }
        label, input, select {
            display: block;
            margin-bottom: 10px;
            width: 200px;
        }
        button {
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <h1>修改会员</h1>
    <%
        // 获取会员编号
        String id = request.getParameter("id");
        if (id == null || id.isEmpty()) {
            response.sendRedirect("index.jsp");
        } else {
            // 数据库连接信息，分别输入地址，用户名以及密码
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

                // 查询会员信息
                String query = "SELECT * FROM users WHERE phone = ?";
                preparedStatement = connection.prepareStatement(query);
                preparedStatement.setString(1, id);
                resultSet = preparedStatement.executeQuery();

                if (resultSet.next()) {
                    String phone = resultSet.getString("phone");
                    String userPassword = resultSet.getString("password");
                    int status = resultSet.getInt("status");
                    String user_type = resultSet.getString("user_type");
    %>
    <form action="update.jsp" method="post">
        <input type="hidden" name="id" value="<%= id %>">
        
        <label for="phone">电话:</label>
        <input type="text" id="phone" name="phone" value="<%= phone %>" required>
        <label for="password">密码:</label>
        <input type="text" id="password" name="password" value="<%= userPassword %>" required>
        
        <label for="status">性别:</label>
        <select id="status" name="status" required>
            <option value="1" <%= status == 1 ? "selected" : "" %>>激活</option>
            <option value="0" <%= status == 0 ? "selected" : "" %>>禁用</option>
        </select>
        
        <label for="user_type">会员类别:</label>
        <select id="user_type" name="type" required>
            <option value="000001" <%= user_type.equals("1") ? "selected" : "" %>>管理员</option>
            <option value="000002" <%= user_type.equals("2") ? "selected" : "" %>>普通会员</option>
        </select>
        
        <button type="submit">保存</button>
    </form>
    <%
                } else {
                    out.println("<p>会员不存在或已被删除。</p>");
                    out.println("<a href='index.jsp'>返回列表</a>");
                }
            } catch (ClassNotFoundException e) {
                out.println("<p>Driver not found.</p>");
                e.printStackTrace();
            } catch (SQLException e) {
                out.println("<p>SQL Error: " + e.getMessage() + "</p>");
                e.printStackTrace();
            } finally {
                // 关闭资源
                try { if (resultSet != null) resultSet.close(); } catch (SQLException se) {}
                try { if (preparedStatement != null) preparedStatement.close(); } catch (SQLException se) {}
                try { if (connection != null) connection.close(); } catch (SQLException se) {}
            }
        }
    %>
</body>
</html>



