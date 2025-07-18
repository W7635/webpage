package login;

import login.UserService;
import login.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    private UserService userService = new UserServiceImpl();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String phone = request.getParameter("phone");
        String password = request.getParameter("password");

        try {
            String result = userService.login(phone, password);
            response.setContentType("text/plain;charset=UTF-8");
            PrintWriter out = response.getWriter();
            out.print(result);
            out.flush();
            out.close();
        } catch (SQLException e) {
            e.printStackTrace();
            response.setContentType("text/plain;charset=UTF-8");
            PrintWriter out = response.getWriter();
            out.print("发生数据库错误，请重试");
            out.flush();
            out.close();
        }
    }
}