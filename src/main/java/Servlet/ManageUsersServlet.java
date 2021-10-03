package Servlet;

import Dao.DaoManager;
import beans.User;
import dbc.DBConnector;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

public class ManageUsersServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        try {
            DaoManager manager = new DaoManager(new DBConnector().openConnection());
            HttpSession session = req.getSession();

            List<User> userlList= manager.user_find_all();
            System.out.println(userlList.toString());
            //commit to session
            session.setAttribute("userList", userlList);
            //refresh page
            req.getRequestDispatcher("ManageUsers.jsp").forward(req, resp);

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req, resp);
    }
}

