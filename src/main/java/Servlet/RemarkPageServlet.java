package Servlet;

import Dao.DaoManager;
import beans.Order;
import beans.Remark;
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

public class RemarkPageServlet extends HttpServlet
{
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
    {
        try
        {
            int orderID = Integer.parseInt(req.getParameter("orderID"));
            HttpSession session = req.getSession();
            DaoManager manager = new DaoManager(new DBConnector().openConnection());
            session.setAttribute("remarkingOrder", manager.order_find_by_ID(orderID));
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
        req.getRequestDispatcher("RemarkPage.jsp").forward(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
    {
        try
        {
            String remark = req.getParameter("remark");
            int score = Integer.parseInt(req.getParameter("score"));
            System.out.println("Remark: " + remark);
            System.out.println("Score: " + score);

            HttpSession session = req.getSession();
            User user = (User)session.getAttribute("user");
            Order order = (Order) session.getAttribute("remarkingOrder");
            DaoManager manager = new DaoManager(new DBConnector().openConnection());
            Remark newRemark = new Remark();
            newRemark.setRoomID(order.getRoomID());
            newRemark.setUserID(order.getUserID());
            newRemark.setUserName(user.getName());
            newRemark.setContent(remark);
            int index = 1;
            boolean end = false;
            while (!end)
            {
                try
                {
                    manager.Remark_find_by_id(index);
                    index++;
                }
                catch (Exception e)
                {
                    newRemark.setId(index);
                    System.out.println("RemarkID: " + index);
                    end = true;
                }
            }
            newRemark.setScore(score);
            manager.Remark_Create(newRemark);
            order.setRemark("" + index);
            manager.order_update(order);
            List<Order> orderList = manager.order_find_by_userID(user.getID());
            //commit to session
            session.setAttribute("orderList", orderList);

        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
        req.getRequestDispatcher("UserPage.jsp").forward(req, resp);
    }
}
