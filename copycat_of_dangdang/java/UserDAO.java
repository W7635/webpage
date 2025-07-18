package login;

import login.User;

import java.sql.SQLException;

public interface UserDAO {
    /**
     * 根据手机号查询用户
     * @param phone 手机号
     * @return 用户对象，如果不存在则返回null
     * @throws SQLException SQL异常
     */
    User findByPhone(String phone) throws SQLException;
}    
