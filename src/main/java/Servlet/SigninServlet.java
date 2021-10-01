package Servlet;

import Dao.DaoManager;
import beans.User;
import dbc.DBConnector;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "SigninServlet", value = "/SigninServlet")
public class SigninServlet extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int id = Integer.parseInt(request.getParameter("id"));
        String password = request.getParameter("password");

        try
        {
            DaoManager manager = new DaoManager(new DBConnector().openConnection());
            User user = null;
            user = manager.user_find_for_login(id, password);
            if (user != null) {
                System.out.println("Login Succeed");
                //.getRequestDispatcher("/jsp/index.jsp").forward(request, response);
            } else {
                System.out.println("Login failed");
            }
        }
        catch (SQLException ex)
        {
            System.out.println(ex.getErrorCode() + " and " + ex.getMessage());
        } catch (Exception e) {
            e.printStackTrace();
        }
        request.getRequestDispatcher("/jsp/signin.jsp").forward(request,response);
    }
}