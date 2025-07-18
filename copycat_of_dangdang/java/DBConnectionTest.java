package login;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DBConnectionTest {
    public static void main(String[] args) {
        testDatabaseConnection();
    }

    public static void testDatabaseConnection() {
        Connection connection = null;
        PreparedStatement statement = null;
        ResultSet resultSet = null;

        try {
            // 1. 获取数据库连接
            connection = DBUtil.getConnection();
            System.out.println("✅ 数据库连接成功！");

            // 2. 准备SQL查询语句（假设有一个user表）
            String sql = "SELECT * FROM users LIMIT 5"; // 限制查询5条记录用于测试
            statement = connection.prepareStatement(sql);

            // 3. 执行查询
            resultSet = statement.executeQuery();
            System.out.println("\n📋 用户数据表内容（前5条记录）：");

            // 4. 打印表头（获取列名）
            int columnCount = resultSet.getMetaData().getColumnCount();
            for (int i = 1; i <= columnCount; i++) {
                System.out.print(resultSet.getMetaData().getColumnName(i) + "\t");
            }
            System.out.println();

            // 5. 打印查询结果
            while (resultSet.next()) {
                for (int i = 1; i <= columnCount; i++) {
                    System.out.print(resultSet.getString(i) + "\t");
                }
                System.out.println();
            }

        } catch (SQLException e) {
            System.err.println("❌ 数据库连接或查询失败：");
            e.printStackTrace();
        } finally {
            // 6. 关闭资源
            try {
                if (resultSet != null) resultSet.close();
                if (statement != null) statement.close();
                if (connection != null) connection.close();
                System.out.println("\n🔌 数据库连接已关闭");
            } catch (SQLException e) {
                System.err.println("❌ 关闭连接时出错：");
                e.printStackTrace();
            }
        }
    }
}