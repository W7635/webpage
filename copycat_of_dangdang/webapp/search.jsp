<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>搜索结果</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin-top: 50px;
            text-align: center;
        }
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
        a {
            display: inline-block;
            margin: 5px;
            padding: 5px 10px;
            background-color: #4CAF50;
            color: white;
            text-decoration: none;
            border-radius: 5px;
        }
        a:hover {
            background-color: #45a049;
        }
        form {
            margin-bottom: 20px;
        }
        input[type="text"], select {
            padding: 5px;
            margin-right: 10px;
        }
        button {
            padding: 5px 10px;
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
    <h1>搜索会员</h1>
    <form action="search.jsp" method="get">
        <input type="text" name="query" placeholder="请输入会员电话" value="<%= request.getParameter("query") != null ? request.getParameter("query") : "" %>">
        <select name="field">
        	<option value="user_id" <%= "user_id".equals(request.getParameter("field")) ? "selected" : "" %>>会员序号</option>
            <option value="phone" <%= "phone".equals(request.getParameter("field")) ? "selected" : "" %>>会员电话</option>
            <option value="password" <%= "password".equals(request.getParameter("field")) ? "selected" : "" %>>会员密码</option>
            <option value=status" <%= "status".equals(request.getParameter("field")) ? "selected" : "" %>>会员状态</option>
            <option value="user_type" <%= "user_type".equals(request.getParameter("field")) ? "selected" : "" %>>会员类别</option>
        </select>
        <button type="submit">搜索</button>
    </form>
    <a href="index.jsp">返回列表</a>
    <table>
        <tr>
            <th>序号</th>
            <th>会员号</th>
            <th>会员电话</th>
            <th>会员密码</th>
            <th>会员状态</th>
            <th>会员类别</th>
            <th>操作</th>
        </tr>
        <%
            // 获取查询参数
            String queryParam = request.getParameter("query");
            String field = request.getParameter("field");
            if (queryParam == null || queryParam.isEmpty()) {
                out.println("<tr><td colspan='6'>请输入有效的查询条件。</td></tr>");
            } else {
                // 数据库连接信息，分别输入地址，用户名以及密码
                String jdbcUrl = " ";
                String user = " ";
                String password = " ";

                Connection connection = null;
                PreparedStatement preparedStatement = null;
                ResultSet resultSet = null;

                int rowCount = 0; // 初始化序号计数器

                try {
                    // 加载驱动
                    Class.forName("com.mysql.cj.jdbc.Driver");

                    // 建立连接
                    connection = DriverManager.getConnection(jdbcUrl, user, password);

                    // 构建查询语句
                    StringBuilder sqlBuilder = new StringBuilder();
                    sqlBuilder.append("SELECT user_id, phone, password, status, user_type FROM users WHERE ");
                    switch (field) {
                        case "user_id":
                            sqlBuilder.append("user_ud LIKE ?");
                            break;
                        case "phone":
                            sqlBuilder.append("phone LIKE ?");
                            break;
                        case "password":
                            sqlBuilder.append("password = ?");
                            break;
                        case "status":
                            sqlBuilder.append("status = ?");
                        case "user_type":
                            sqlBuilder.append("user_type = ?");
                            break;
                        default:
                            sqlBuilder.append("Tci_name LIKE ?");
                            break;
                    }

                    // 执行查询
                    preparedStatement = connection.prepareStatement(sqlBuilder.toString());
                    if ("status".equals(field) || "user_type".equals(field)) {
                        preparedStatement.setString(1, queryParam);
                    } else {
                        preparedStatement.setString(1, "%" + queryParam + "%");
                    }
                    resultSet = preparedStatement.executeQuery();

                    // 显示结果
                    boolean hasResults = false;
                    while (resultSet.next()) {
                        hasResults = true;
                        rowCount++; // 序号递增
                        String user_id = resultSet.getString("user_id");
                        String phone = resultSet.getString("phone");
                        String userPassword = resultSet.getString("password");
                        int status = resultSet.getInt("status");
                        String user_type = resultSet.getString("user_type");
                        String statusDisplay = (status == 1) ? "激活" : "禁用";
                        String typeDisplay = (user_type != null && user_type.equals("1")) ? "管理员" : "普通会员";
            %>
            <tr>
                <td><%= rowCount %></td>
                <td><%= user_id %></td>
                <td><%= phone %></td>
                <td><%= userPassword %></td>
                <td><%= statusDisplay %></td>
                <td><%= typeDisplay %></td>
                <td>
                    <a href="modify.jsp?id=<%= phone %>">修改</a>
                    <a href="delete.jsp?id=<%= phone %>">删除</a>
                </td>
            </tr>
            <%
                    }
                    if (!hasResults) {
                        out.println("<tr><td colspan='6'>没有找到匹配的结果。</td></tr>");
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
                    try { if (preparedStatement != null) preparedStatement.close(); } catch (SQLException se) {}
                    try { if (connection != null) connection.close(); } catch (SQLException se) {}
                }
            }
        %>
    </table>
</body>
</html>



