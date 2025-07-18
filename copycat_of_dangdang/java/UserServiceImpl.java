package login;

import login.UserDAO;
import login.UserDAOImpl;
import login.User;
import login.UserService;

import java.sql.SQLException;

public class UserServiceImpl implements UserService {
    private UserDAO userDAO = new UserDAOImpl();

    @Override
    public String login(String phone, String password) throws SQLException {
        User user = userDAO.findByPhone(phone);
        if (user == null) {
            return "用户不存在，请先注册";
        } else {
            if (user.getPassword().equals(password)) {
                if (user.getUserType() == 1) {
                    return "首页1.html";
                } else if (user.getUserType() == 2) {
                    return "首页2.html";
                }
            }
            return "手机号或密码错误";
        }
    }
}