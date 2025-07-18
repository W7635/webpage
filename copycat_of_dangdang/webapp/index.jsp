<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>用户名单</title>
    <style>
        table {
            width: 50%;
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
    <h1 style="text-align: center;">会员信息</h1>
    <table>
    	<tr>
    		<td colspan=6 >
    			<a href="add.html">增加</a>
    			&nbsp;&nbsp;
    			<a href="search.jsp">查询</a>
    		</td>
    	</tr>
        <tr>
        	<th>序号</th>
            <th>电话</th>
            <th>密码</th>
            <th>状态</th>
            <th>会员类别</th>
            <th>操作</th>
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
                String query = "SELECT user_id, phone, password, status, user_type FROM users";
                resultSet = statement.executeQuery(query); 
                // 显示结果
                while (resultSet.next()) {
                	int user_id =resultSet.getInt("user_id");
                    String phone = resultSet.getString("phone");
                    String userPassword = resultSet.getString("password");
                    int status = resultSet.getInt("status");
                    String statusDisplay = (status == 1) ? "激活" : "禁用";
                    int user_type = resultSet.getInt("user_type");
                    String user_typeDisplay = (user_type == 1) ? "管理员" : "普通会员";
        %>
        <tr>
        	<td><%= user_id %></td>
            <td><%= phone %></td>
            <td><%= userPassword %></td>
            <td><%= statusDisplay %></td>
            <td><%= user_typeDisplay %></td>
            <td>
            	<a href="modify.jsp?id=<%= phone %>">修改</a>
            	&nbsp;&nbsp;
            	<a href="delete.jsp?id=<%= phone %>">删除</a>
            </td>
        </tr>
        <%
                }
            } catch (ClassNotFoundException e) {
                out.println("<tr><td colspan='3'>Driver not found.</td></tr>");
                e.printStackTrace();
            } catch (SQLException e) {
                out.println("<tr><td colspan='3'>SQL Error: " + e.getMessage() + "</td></tr>");
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
