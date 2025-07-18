package login;

import login.User;

import java.sql.SQLException;

public interface UserService {
    /**
     * 用户登录验证
     * @param phone 手机号
     * @param password 密码
     * @return 登录结果，包含跳转页面信息
     * @throws SQLException SQL异常
     */
    String login(String phone, String password) throws SQLException;
}    
