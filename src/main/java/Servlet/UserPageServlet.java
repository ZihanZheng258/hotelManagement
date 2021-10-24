package Servlet;

import Dao.DaoManager;
import beans.Order;
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

public class UserPageServlet extends HttpServlet
{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        try
        {
            //get user from session and update info
            HttpSession session = request.getSession();
            DaoManager manager = new DaoManager(new DBConnector().openConnection());
            User user = (User) session.getAttribute("user");
            List<Order> orderList = manager.order_find_by_userID(user.getID());
            //commit to session
            session.setAttribute("orderList", orderList);
            //refresh page
            request.getRequestDispatcher("UserPage.jsp").forward(request, response);

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
    {
        try
        {
            HttpSession session = req.getSession();
            //session.removeAttribute("orderList");
            System.out.println("att Removed");
            req.getRequestDispatcher("UserPage.jsp").forward(req, resp);
        }
        catch (Exception e)
        {

        }
    }
}
