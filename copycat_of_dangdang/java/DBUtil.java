package login;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBUtil {
    private static final String URL = " ";//填写数据库地址，例：jdbc:mysql://localhost:3306/users
    private static final String USER = " ";//填写数据库用户名，例：root
    private static final String PASSWORD = " ";//填写数据库密码

    static {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    public static Connection getConnection() throws SQLException {
        return DriverManager.getConnection(URL, USER, PASSWORD);
    }
}    

