package login;

import login.UserDAO;
import login.User;
import login.DBUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDAOImpl implements UserDAO {

    @Override
    public User findByPhone(String phone) throws SQLException {
        String sql = "SELECT id, phone, password, user_type FROM users WHERE phone = ?";
        try (Connection conn = DBUtil.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, phone);
            try (ResultSet rs = pstmt.executeQuery()) {
                if (rs.next()) {
                    User user = new User();
                    user.setId(rs.getInt("id"));
                    user.setPhone(rs.getString("phone"));
                    user.setPassword(rs.getString("password"));
                    user.setUserType(rs.getInt("user_type"));
                    return user;
                }
            }
        }
        return null;
    }
}    